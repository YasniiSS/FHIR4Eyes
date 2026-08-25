# Guidance - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.2.0

* [**Table of Contents**](toc.md)
* **Guidance**

## Guidance

# Guidance

This page explains the conventions used consistently throughout FHIR4Eyes, and gives practical guidance for implementers building systems against these profiles. If you are new to this guide, this page is a good companion to [Profiles](profiles.md): the profiles page defines **what** each resource looks like, while this page explains the recurring **patterns** behind those definitions.

## What "Must Support" means here

Throughout this guide, elements marked `MS` (Must Support) are elements that a conformant system must be capable of populating, storing, and displaying, if it has data for them. It does **not** mean the element is mandatory in every instance (that is what cardinality, like `1..1`, is for). An element can be `0..1 MS`: optional to populate for a given patient, but if data exists, a conformant system cannot silently drop it.

This distinction matters in practice: `OphthalmicCondition.bodySite` is `0..* MS`. A diagnosis without laterality (for example, a systemic condition with ocular manifestations) is perfectly valid and doesn't need `bodySite` populated. But a system that receives a `bodySite` value for a diagnosis that **is** laterality-specific must not discard it.

## The laterality pattern: bodySite with a BodyStructure reference

Almost every clinical resource in this guide (`OphthalmicCondition`, `OphthalmicProcedure`, `OphthalmicVisualAcuity`, and others) expresses laterality the same way: a `bodySite` element carrying a nested extension that references an `OcularBodyStructure` instance, rather than a plain code.

```
* bodySite 0..* MS
* bodySite.extension contains
    http://hl7.org/fhir/StructureDefinition/bodySite named bodySiteEye 0..* MS
* bodySite.extension[bodySiteEye].value[x] only Reference(OcularBodyStructure)

```

Why a reference instead of a simple code? A `Reference` lets the same `OcularBodyStructure` instance (for example, "right eye" for a specific patient) be shared across multiple resources: a `Condition`, a `Procedure`, and an `Observation` can all point to the exact same structure instance, enabling queries like "what else references this eye" that a repeated plain code cannot support. See [Terminology](terminology.md) and [Background](background.md) for the full rationale, including where this guide follows the HL7 Eye Care IG's pattern and where it diverges.

`ImagingStudy` is the one exception: its `series.bodySite` and `series.laterality` are native `Coding` fields (not references), for standard DICOM/PACS compatibility. This guide adds the same `bodySiteEye` extension alongside those native fields, so an imaging study can still be linked to the same shared `OcularBodyStructure` instance when needed. See `OphthalmicImagingStudy` in [Profiles](profiles.md).

## The Study / Series / Instance hierarchy

`OphthalmicImagingStudy` follows the standard DICOM/FHIR hierarchy: an `ImagingStudy` resource represents one **study** (one imaging session), which contains one or more **series** (one per scan protocol), each of which contains one or more **instances** (the individual images or frames captured).

A common source of confusion is how many `ImagingStudy` resources a single visit produces. This depends on how the acquiring device or PACS groups its output, and both patterns are valid and supported by this guide (`OphthalmicDiagnosticReport.imagingStudy` is `0..*`, matching both the base FHIR specification and the IHE Radiology Imaging Diagnostic Report profile, which also allow multiple studies per report):

* **One study per eye**, each containing multiple series for the different scan types performed on that eye (for example, one study for the right eye with an RNFL series and a macula series, and a separate study for the left eye).
* **One study for the whole session**, with series distinguishing both eye and scan type.

For a bilateral OCT session (RNFL and macula, both eyes), following the first pattern:

```
OphthalmicImagingStudy (right eye)
  ├── series: RNFL scan, right eye
  └── series: Macula scan, right eye

OphthalmicImagingStudy (left eye)
  ├── series: RNFL scan, left eye
  └── series: Macula scan, left eye

```

Each series is where scan type (RNFL vs. macula) is distinguished, not the study itself; the study is the acquisition session (per eye, in this example).

## The panel pattern: grouping related observations with hasMember

Several profiles represent a **panel**: a parent `Observation` that has no value of its own, but groups together a set of related child observations via `hasMember`. This guide uses this pattern in two situations:

**Fixed-purpose panels**, where the parent's role is always the same: `TensionCurve` groups individual `IntraocularPressure` readings taken across a day.

**Flexible panels**, where the parent groups whichever sub-observations were actually performed, with no fixed checklist: `StrabismusExam` groups any combination of its sub-tests (`CoverTest`, `OcularMotility`, `PrismCoverTest`, and others), and `PrismCoverTest` and `KrimskyTest` each group one `GazePositionMeasurement` per gaze position tested.

In both cases, the panel itself sets `value[x] 0..0`: the panel carries no value, only `hasMember` references.

For worked, diagrammed examples of this pattern (including how `TensionCurve` combines it with the `derivedFrom` pattern, and how `StrabismusExam` nests it two tiers deep), see the `TensionCurve` and `StrabismusExam` sections of [Profiles](profiles.md).

## The granular-components pattern

`OphthalmicVisualAcuity` and the `StrabismusExam` sub-test family follow a shared design principle: rather than using a single pre-coordinated code that bundles multiple pieces of clinical detail together (for example, one SNOMED CT code for "distance visual acuity, uncorrected"), this guide records that detail as independent, optional `component` elements (distance, correction status, chart type, and so on). See [Profiles](profiles.md#ophthalmicvisualacuity) for the full rationale, including how this diverges from the HL7 Eye Care IG's 2021 approach.

In FSH, this pattern always requires declaring the slicing discriminator explicitly before `component contains`:

```
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    distance 0..1 MS and
    correctionStatus 0..1 MS and
    ...

```

Implementers consuming these resources should read `component` as an open set of optional, independently meaningful facts about the measurement, not a fixed record structure: only the components relevant to the specific test performed will be present.

## Fixating eye vs. measured eye

In strabismus testing, measurements are described relative to which eye is fixating (for example, "FOD", fixing with the right eye), while the deviation being measured belongs to the **other** eye. This guide resolves that ambiguity by always keeping the two separate: `bodySite` identifies the eye being measured, and a dedicated `fixatingEye` component (on `GazePositionMeasurement`) identifies which eye was fixating. Never assume one from the other.

## Chaining resources through a clinical episode

A typical ophthalmology episode in this guide follows a consistent reference chain:

`OphthalmicServiceRequest` (the order) → `OphthalmicProcedure` or an `Observation`-family resource (the exam performed) → `OphthalmicImagingStudy` (when imaging is involved, `basedOn` the request) → `OphthalmicDiagnosticReport` (`basedOn` the request, `imagingStudy` the study) → `OphthalmicCondition` (the diagnosis, referenced from the report or encounter) → `OphthalmicCarePlan` (the resulting treatment scheme, `addresses` the condition) → `OphthalmicProcedure` instances for each treatment session (`basedOn` the care plan).

When implementing a system against this guide, this chain is the backbone to build first: getting `basedOn`, `addresses`, and `hasMember`/`derivedFrom` references right across this chain is what makes the data usable for downstream queries (for example, "show me every procedure performed under this care plan", or "show me the order that led to this report").

## Terminology strategy summary

See [Terminology](terminology.md) for the full detail. In short: this guide binds directly to SNOMED CT and LOINC wherever possible, rather than depending on the HL7 Eye Care IG's own value sets (which cannot be formally imported, since that guide has no published FHIR package yet). New terminology (like `LowVisionAssessment`) is only introduced where a genuine, verified gap exists.

## A note on how this guide was built

Several profiles in this guide explicitly document open questions, terminology still to be confirmed, or lower-priority items deferred pending clinical review (see [Profiles](profiles.md)). This is deliberate: this guide favors being transparent about what is settled versus what is still evolving, over presenting a false sense of completeness. If you are implementing against a profile with an open item noted, treat that element as provisional and check for updates.

