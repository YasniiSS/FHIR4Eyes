# Profiles - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.2.0

* [**Table of Contents**](toc.md)
* **Profiles**

## Profiles

# Profiles

This page documents the profile-level design decisions for FHIR4Eyes Core. For the clinical motivation behind each profile, see [Use Cases](usecases.md). For terminology strategy and value sets, see [Terminology](terminology.md).

Profiles below are presented in the chronological order they typically appear within a clinical encounter: the medical order, the diagnosis (when already known), the procedure or observation performed, any imaging study involved, the resulting diagnostic report, and finally the treatment plan.

## Index by FHIR resource

| | |
| :--- | :--- |
| `ServiceRequest` | [OphthalmicServiceRequest](#ophthalmicservicerequest) |
| `Condition` | [OphthalmicCondition](#ophthalmiccondition) |
| `Procedure` | [OphthalmicProcedure](#ophthalmicprocedure) |
| `Observation` | [OphthalmicVisualAcuity](#ophthalmicvisualacuity),[TensionCurve](#tensioncurve), IntraocularPressure, CorrectedIntraocularPressure, Pachymetry,[StrabismusExam](#strabismusexam)and its sub-test family (see below),[OphthalmicOCTRNFL and OphthalmicOCTMacula](#ophthalmicoctrnfl-and-ophthalmicoctmacula),[Corneal Tomography's six profiles](#corneal-tomography-six-observations-under-one-report),[OphthalmicOcularBiometry and IOLFormulaResult](#ophthalmicocularbiometry-and-iolformularesult), OphthalmicHumphreyVisualField, OphthalmicSpecularMicroscopy |
| `Observation`(StrabismusExam sub-test family) | GazePositionMeasurement, CoverTest, OcularMotility, NearPointOfConvergence, ConvergenceAssessment, StereopsisTest, PrismCoverTest, KrimskyTest, HirschbergTest, RedFilterLightTest, Worth4DotTest |
| `Observation`(Corneal Tomography family) | CTAnteriorSurface, CTPosteriorSurface, CTPachymetry, CTAnteriorChamber, CTKeratoconusIndices, CTDensitometry |
| `ImagingStudy` | [OphthalmicImagingStudy](#ophthalmicimagingstudy) |
| `DiagnosticReport` | [OphthalmicDiagnosticReport](#ophthalmicdiagnosticreport), CornealTomographyReport |
| `CarePlan` | [OphthalmicCarePlan](#ophthalmiccareplan) |
| `Device` | OphthalmicDevice (referenced from OphthalmicProcedure) |
| `Encounter` | OphthalmicEncounter |
| `Medication` | OphthalmicMedication |
| `MedicationAdministration` | OphthalmicMedicationAdministration |
| `BodyStructure` | OcularBodyStructure (referenced throughout for laterality) |

> Some profiles listed above without a link are defined directly in FSH but do not yet have their own narrative "Design decisions" section on this page (`IntraocularPressure`, `CorrectedIntraocularPressure`, `Pachymetry`, `OphthalmicDevice`, `OphthalmicEncounter`, `OphthalmicMedication`, `OphthalmicMedicationAdministration`, and the individual StrabismusExam sub-test profiles beyond what is already summarized in the [StrabismusExam](#strabismusexam) section). Adding narrative for these is a documentation item still to be completed.

## OphthalmicServiceRequest

**FHIR resource:** `ServiceRequest`

**Motivation:** Represents a request for an ophthalmic examination and, where relevant, its interpretation or treatment. This single profile covers three scenarios seen in practice:

1. An order created and fulfilled at the same facility (for example, a primary care professional orders and performs the examination locally).
1. An order created at a primary care facility but referred to a hospital or reference center for analysis and/or treatment, as in[use case 6 (teleophthalmology)](usecases.md#use-case-6-teleophthalmology).
1. An order created directly at a hospital (secondary care) facility.

There is no equivalent profile in the HL7 Eye Care IG to align with; this profile is designed from the base FHIR `ServiceRequest` resource and this guide's own use cases.

### Design decisions

**A single generic profile.** Rather than defining separate profiles for each scenario, `OphthalmicServiceRequest` is one profile that covers all three. What differs between them is simply who is recorded as `requester`, `performer`, and where the order originated, not the structure of the resource itself.

**Timing.** For examinations that require acquiring an imaging study (as in [use case 2, group B](usecases.md#group-b-imaging-studies-with-report)), the request is created **before** the study exists: it requests both the acquisition and, where the request is referred elsewhere, its remote interpretation. The resulting `ImagingStudy` is expected to reference this request via `ImagingStudy.basedOn`.

**Code.** `ServiceRequest.code` identifies the specific examination being requested (for example OCT, retinography), not a generic "referral" or "remote interpretation" concept. It follows the same terminology strategy already defined for that examination in [Terminology](terminology.md) (SNOMED CT or LOINC, depending on the examination).

**Roles.** `ServiceRequest.requester` is the professional who initiates the request. `ServiceRequest.performer` is the professional expected to fulfill it (who may be the same professional, for a locally fulfilled order, or a different one at another facility, for a referred order). Both are kept as simple `Reference(Practitioner)`, rather than `Reference(PractitionerRole)`, since a single practitioner may hold roles at more than one facility and a simple practitioner reference avoids ambiguity about which role applies.

**Originating facility.** `ServiceRequest.locationReference` (`Reference(Location)`) is used to explicitly record the facility where the order originated. This is kept as a generic, internationally applicable field. The specific Chilean mechanism of referral and counter-referral ("referencia y contrarreferencia"), which governs how a request moves between facilities within Chile's public health network, is a national workflow concern and belongs in the FHIR4Eyes CL extension, not in this Core profile.

**Priority.** `ServiceRequest.priority` uses the standard FHIR value set (`routine | urgent | asap | stat`); no ophthalmology-specific extension is needed for this.

### Status

This profile is not yet formally defined in FSH. This page currently documents the design decisions reached so far; the StructureDefinition itself is the next step.

## OphthalmicCondition

**FHIR resource:** `Condition`

**Motivation:** Represents the formal, past or present clinical diagnosis of a specific ophthalmic condition. This is a high-priority profile still to be built (see [Background](background.md)), used throughout [Use Cases](usecases.md) wherever a diagnosis is reached (for example after reviewing an imaging study, or before starting an intravitreal injection treatment scheme).

### Design decisions

This profile follows the same technical pattern as the HL7 Eye Care IG's equivalent profile (`condition-base`), aligned wherever it made sense, and adapted where its own narrative documentation and its technical definition disagreed with each other (see the note below).

**Code.** `Condition.code` is `1..1`, bound to the diagnosis terminology defined in [Terminology](terminology.md): SNOMED CT and/or ICD-11 for FHIR4Eyes Core, ICD-10 for FHIR4Eyes CL.

**Laterality.** `Condition.bodySite` is `0..*` and optional, using the standard FHIR `bodySite` extension to reference a `BodyStructure` (the same `OcularBodyStructure` pattern used throughout this guide for laterality). This is included because many ophthalmic diagnoses are laterality-specific (for example, uveitis affecting only one eye, which is common in clinical practice).

> **Note on the HL7 Eye Care IG's equivalent profile:** its narrative documentation states that its "Ocular anatomical location" profile is **not** expected to be used together with its condition profile. However, its actual technical definition (the StructureDefinition itself) does define a `bodySite` slice referencing `BodyStructure`, contradicting that narrative statement. FHIR4Eyes follows the technical definition (bodySite included, optional) rather than the narrative text, since the former is what is actually enforceable and validated.

**Subject.** `Condition.subject` is `1..1`, `Reference(Patient)`.

### Status

This profile is not yet formally defined in FSH. This page currently documents the design decisions reached so far; the StructureDefinition itself is the next step.

## OphthalmicProcedure

**FHIR resource:** `Procedure`

**Motivation:** Represents any ophthalmic procedure, from minor ambulatory surgeries to individual sessions within a longer treatment scheme, such as an intravitreal injection or a vision therapy session. This profile was already defined in an earlier version of this guide's design work and is carried forward here.

### Design decisions

**Code.** `Procedure.code` follows the terminology strategy already defined in [Terminology](terminology.md): SNOMED CT descendants of `371548008` (Procedure on eye region) and `371560009` (Procedure on visual system), with CPT as a fallback for codes not covered by SNOMED CT.

**Laterality.** `Procedure.bodySite` is `0..*` and optional, using the standard FHIR `bodySite` extension to reference a `BodyStructure`. It is optional because not every ophthalmic procedure is inherently lateral.

**Implantable devices.** `Procedure.focalDevice` is used to reference an implanted `OphthalmicDevice` (for example, an intraocular lens), as established in [use case 5 (cataract surgery)](usecases.md#use-case-5-cataract-surgery-with-intraocular-lens-implantation). The patient is linked to the device only through this reference; the `Device` resource itself is not linked to the patient directly (see the `OphthalmicDevice` design notes, still to be documented in this section).

**Linking to a treatment scheme.** When a procedure is one session within a longer scheme (for example, one dose of an intravitreal injection treatment, or one vision therapy session), it references the relevant `OphthalmicCarePlan` via `Procedure.basedOn`, as established in [use case 4](usecases.md#intravitreal-injection-treatment) and [use case 3](usecases.md#use-case-3-vision-therapy-and-rehabilitation).

### Status

This profile is not yet formally defined in FSH. This page currently documents the design decisions reached so far; the StructureDefinition itself is the next step.

## TensionCurve

**FHIR resource:** `Observation` (panel)

**Motivation:** Represents an ambulatory tension curve: several intraocular pressure readings taken across a single day, grouped together as a single clinical concept rather than recorded as unrelated, disconnected observations. This profile was already defined in an earlier version of this guide's design work and is carried forward here.

### Design decisions

**Panel pattern.** This is a panel `Observation` using `hasMember` to group the individual readings, rather than holding a value itself.

**`value[x]`** is `0..0`. The panel itself has no value; the values live in each member reading.

**`effective[x]`** only allows `Period`, reflecting that the curve spans a period of time (the day of the ambulatory assessment), not a single instant.

**`hasMember`** accepts `Reference(IntraocularPressure | CorrectedIntraocularPressure)`, `0..*`. Both variants of intraocular pressure reading may be part of a curve; pachymetry itself is not referenced directly from the curve, since `CorrectedIntraocularPressure` already references it via `derivedFrom`.

> In clinical practice, a tension curve typically consists of three readings taken across the day, though this varies by site. This is noted here as clinical context, not enforced as a fixed cardinality in the profile.

**Worked example: combining readings with corrected values.** `TensionCurve.hasMember` accepts **either** `IntraocularPressure` or `CorrectedIntraocularPressure` as its members, since a single curve may mix plain and corrected readings depending on whether pachymetry was available for each reading:

* `TensionCurve` groups several readings across the day via `hasMember`.
* Each member is either a plain `IntraocularPressure` reading, or a `CorrectedIntraocularPressure` reading.
* A `CorrectedIntraocularPressure` instance is never a standalone measurement: it always references, via `derivedFrom`, the specific `IntraocularPressure` reading and `Pachymetry` measurement it was calculated from.

So a single curve reading can carry a two-level chain: the curve references the corrected reading, and the corrected reading itself references the two measurements it was derived from.

```
graph TD
    TC[TensionCurve<br/>panel] -->|hasMember| IOP1[IntraocularPressure<br/>08:00]
    TC -->|hasMember| IOP2[IntraocularPressure<br/>12:00]
    TC -->|hasMember| CIOP[CorrectedIntraocularPressure<br/>14:00]
    CIOP -->|derivedFrom| IOP3[IntraocularPressure<br/>base reading]
    CIOP -->|derivedFrom| PACHY[Pachymetry<br/>corneal thickness]

```

### Status

This profile is formally defined in FSH.

## StrabismusExam

**FHIR resource:** `Observation` (panel), plus a family of related sub-test profiles

**Motivation:** Represents a strabismus examination. Unlike most examinations in [use case 2, group A](usecases.md#group-a-direct-observations), this is not a single measurement: it is made up of several possible sub-tests (cover test, ocular motility, near point of convergence, stereopsis, prism cover test, Krimsky test, and others), evaluated as needed for the specific clinical case, patient age, and available equipment. No two strabismus exams necessarily include the same set of sub-tests.

### Architecture

`StrabismusExam` is a panel `Observation` that groups together whichever sub-tests were actually performed, via `hasMember`. `hasMember` is intentionally open (`0..*`, not bound to a fixed list of profiles): the set of sub-tests recognized by this guide is expected to grow over time, and a clinical team may also record sub-tests not yet covered here.

The sub-tests fall into two groups, based on their structure:

**Direct sub-tests** produce a single result and do not vary by gaze position: `CoverTest`, `OcularMotility`, `NearPointOfConvergence`, `ConvergenceAssessment`, `StereopsisTest`.

**Position-based sub-tests** are performed across multiple gaze positions (primary position, right gaze, up-and-right gaze, and so on), with one measurement or finding recorded per position: `PrismCoverTest`, `KrimskyTest`, `HirschbergTest`, `RedFilterLightTest`, `Worth4DotTest`. Each of these is itself a small panel: it groups its per-position results via `hasMember`, referencing a shared reusable pattern, `GazePositionMeasurement`, once per gaze position tested.

`GazePositionMeasurement` supports two kinds of per-position result through optional components: a quantitative prism diopter deviation (`horizontalDeviation`, `verticalDeviation`), used by `PrismCoverTest` and `KrimskyTest`; and a qualitative `finding` (for example fusion, suppression, diplopia), used by `HirschbergTest`, `RedFilterLightTest`, and `Worth4DotTest`. A single shared pattern is used for both cases, rather than two separate profiles, since only the choice of component differs.

> This list of sub-tests is not exhaustive. Other tests exist in practice (for example, additional stereopsis test types beyond what this guide currently distinguishes) and may be added to this guide over time, following the same patterns established here.

```
graph TD
    SE[StrabismusExam<br/>panel] -->|hasMember| CT[CoverTest]
    SE -->|hasMember| OM[OcularMotility]
    SE -->|hasMember| PPC[NearPointOfConvergence]
    SE -->|hasMember| CA[ConvergenceAssessment]
    SE -->|hasMember| ST[StereopsisTest]
    SE -->|hasMember| PCT[PrismCoverTest]
    SE -->|hasMember| KT[KrimskyTest]

    PCT -->|hasMember| GPM1[GazePositionMeasurement<br/>primary position]
    PCT -->|hasMember| GPM2[GazePositionMeasurement<br/>right gaze]
    KT -->|hasMember| GPM3[GazePositionMeasurement<br/>primary position]

    GPM1 -.-> COMP1["fixatingEye, horizontalDeviation,<br/>verticalDeviation"]

```

### Design decisions

**Fixating eye vs. measured eye.** A recurring source of confusion in strabismus testing is that measurements are described relative to which eye is fixating (for example "FOD", fixing with the right eye), while the actual deviation being measured belongs to the **other** eye. To avoid this ambiguity, this guide separates the two explicitly: `bodySite` (via the standard extension to `OcularBodyStructure`) always identifies the eye being **measured** (the deviating eye), while a separate `fixatingEye` component identifies which eye was **fixating** during that specific measurement. The two are never combined into a single field.

**Flexible components, not a fixed checklist.** None of the sub-test profiles enforce a required set of components. Which aspects are assessed and recorded depends on the clinical case, the patient's age, and what equipment is available.

**Open terminology.** Several sub-test profiles (`CoverTest`, `OcularMotility`, `ConvergenceAssessment`, and others) leave their finding values as an open `CodeableConcept`, explicitly noted as "terminology to be confirmed" in their FSH source. No SNOMED CT or LOINC binding has been verified for these specific findings yet; this is left as an open item rather than guessing at codes.

> This architecture was defined by the guide's author directly, as a case where enough clinical judgment was already available to model it without deferring to further ophthalmologist review (unlike the lower-priority profiles listed below).

### Status

None of the profiles in this family are yet formally defined in FSH. This page currently documents the design decisions reached so far; the StructureDefinitions themselves are the next step.

## OphthalmicImagingStudy

**FHIR resource:** `ImagingStudy`

**Motivation:** Represents an ophthalmic imaging study, such as OCT, retinography, or angiography, as established throughout [use case 2, group B](usecases.md#group-b-imaging-studies-with-report). This profile was already defined in an earlier version of this guide's design work and is carried forward here.

### Design decisions

**Always linked to a medical order.** `ImagingStudy.basedOn` is `1..1`, required, referencing an `OphthalmicServiceRequest`. Every imaging study must be traceable back to the medical order that led to it being acquired, regardless of whether that order was fulfilled locally or referred elsewhere (see the three scenarios covered by `OphthalmicServiceRequest`).

**Laterality.** Laterality is represented the same way as throughout the rest of this guide, using the standard FHIR `bodySite` extension to reference a `BodyStructure`.

### Status

This profile is not yet formally defined in FSH. This page currently documents the design decisions reached so far; the StructureDefinition itself is the next step.

## OphthalmicDiagnosticReport

**FHIR resource:** `DiagnosticReport`

**Motivation:** Every examination in [use case 2, group B](usecases.md#group-b-imaging-studies-with-report), and [use case 6 (teleophthalmology)](usecases.md#use-case-6-teleophthalmology), depends on this profile to represent the findings, diagnosis, and treatment plan reached after reviewing an imaging study or structured examination dataset. It is one of the two high-priority profiles still to be built for this guide (see [Background](background.md)).

### Design decisions

**Category.** `DiagnosticReport.category` is `0..*` by the base FHIR specification, which allows more than one classification to be recorded at once. No dedicated ophthalmology code exists in the standard `v2-0074` diagnostic service section table (the closest available code is `IMG`, Diagnostic Imaging, which does not fit examinations that are not strictly image-based, such as computerized visual fields). FHIR4Eyes uses two independent slices:

| | | |
| :--- | :--- | :--- |
| Specialty | 1..1 (always present) | SNOMED CT`394594003`(Ophthalmology, qualifier value) |
| Type | 0..1 (only when applicable) | `IMG`(Diagnostic Imaging), used only when the examination produces an image in the strict sense (for example OCT, angiography, retinography, topography); omitted for examinations that produce structured data without a photographic image |

> **Open discussion, not yet resolved:** whether to add a third, more granular classification level for subspecialty (for example Retina, Glaucoma) is a design question left open for a future iteration of this guide. It is noted here so it is not lost, but is intentionally out of scope for the current version.

**Relationship to ImagingStudy.** `DiagnosticReport.imagingStudy` is `0..1` (optional), not required. Not every examination in group B necessarily produces a formal `ImagingStudy` resource (for example, computerized visual field data may be stored as part of the report itself rather than as a separate imaging study).

**Scope beyond imaging interpretation.** Unlike a radiology report, this profile is not limited to describing imaging findings. As established in [Background](background.md) and [Use Cases](usecases.md), the same clinical act typically also reaches a diagnosis and defines a treatment plan. `Condition` and `CarePlan` are therefore expected to be recorded alongside this report, referencing it, rather than being folded into the report itself.

### Status

This profile is not yet formally defined in FSH. This page currently documents the design decisions reached so far; the StructureDefinition itself is the next step.

## OphthalmicCarePlan

**FHIR resource:** `CarePlan`

**Motivation:** Represents a long-term treatment scheme made up of repeated sessions or administrations, rather than a single event. This guide identified two such schemes in [Use Cases](usecases.md): intravitreal injection treatment ([use case 4](usecases.md#intravitreal-injection-treatment)) and vision therapy or orthoptic treatment ([use case 3](usecases.md#use-case-3-vision-therapy-and-rehabilitation)). As with `OphthalmicServiceRequest`, there is no equivalent profile in the HL7 Eye Care IG to align with; this profile is designed from the base FHIR `CarePlan` resource and this guide's own use cases.

### Design decisions

**One profile, differentiated by category.** Rather than defining two separate profiles, `OphthalmicCarePlan` is a single profile whose `category` element distinguishes the type of scheme:

| | |
| :--- | :--- |
| `intravitreal-injection-therapy` | A scheme of repeated intravitreal injections |
| `functional-therapy` | A scheme of repeated vision therapy or orthoptic sessions |

> These are proposed FHIR4Eyes-only codes, not yet bound to an external terminology, since no existing HL7 Eye Care IG or SNOMED CT pattern was found for this specific distinction. Open to revision if a suitable external code is identified later.

**Goal.** `CarePlan.goal` (`Reference(Goal)`) is `0..1`, included when clinically relevant, rather than being required for every scheme. Some schemes have a clear measurable target (for example, a target intraocular pressure), while others may not need one recorded explicitly. A dedicated `Goal` profile for ophthalmology is listed as a lower-priority item still to be built (see [Background](background.md)).

**Linked procedures.** Individual sessions or injections are recorded as separate `OphthalmicProcedure` instances, linked back to this `CarePlan` via `Procedure.basedOn`, as established in [use case 4](usecases.md#intravitreal-injection-treatment) for intravitreal injections. The same pattern applies to vision therapy and orthoptic sessions.

### Status

This profile is not yet formally defined in FSH. This page currently documents the design decisions reached so far; the StructureDefinition itself is the next step.

## OphthalmicVisualAcuity

**FHIR resource:** `Observation`

**Motivation:** Represents a visual acuity measurement. This is one of the two high-priority profiles still to be built for this guide (see [Background](background.md)).

### Design decisions

**Granular components, not a single pre-coordinated code.** The HL7 Eye Care IG's published (2021) approach captures distance and correction status entirely within `code` itself (for example, SNOMED CT `251739003`, "Distance visual acuity"), relying on SNOMED CT to provide a distinct, pre-coordinated concept for every possible combination. This guide instead follows a more granular pattern, aligned with a newer proposal discussed within SNOMED International's Eye Care Clinical Reference Group (2025), which favors flexible, independently recordable components over pre-coordinated codes: `code` is fixed to the generic concept "Visual acuity" (SNOMED CT `363983007`), and the specific detail is captured through separate components instead:

| | |
| :--- | :--- |
| `distance` | The testing distance (e.g. in metres). Not applicable to the qualitative`LowVisionAssessment`values (light perception, no light perception), which are distance-independent by nature. For counting fingers, this captures the specific distance separately from the qualitative "counting fingers" value itself. |
| `correctionStatus` | Only two states are used clinically: corrected or uncorrected. |
| `chart` | The chart or optotype used (e.g. Snellen, ETDRS). |
| `scale` | The scale the value is expressed in (e.g. Snellen fraction, decimal, LogMAR). |
| `pinhole` | A boolean: whether this specific measurement was taken through a pinhole occluder. |

> The exact code system to use for the `distance` component's own code is still to be identified (a placeholder is used for now; see the FSH source).

**Value.** `value[x]` accepts `Ratio` (Snellen fractions), `Quantity` (decimal or LogMAR), or `CodeableConcept` (the qualitative `LowVisionAssessment` scale, for vision that falls below what any chart can measure; see [Terminology](terminology.md)).

**Pinhole measurements reference their base measurement.** In practice, a pinhole measurement is only taken as a follow-up to an uncorrected measurement already taken (for example, "OD sc 20/40, with pinhole 20/30"): it does not happen on its own. Rather than leaving the two measurements unconnected, or forcing them into a single Observation, this guide records them as two separate `OphthalmicVisualAcuity` instances (one with the `pinhole` component set to `false` or absent, one with it set to `true`), with the pinhole measurement's `derivedFrom` referencing the base measurement it followed. This mirrors the same pattern already used for `CorrectedIntraocularPressure`, which references the plain IOP and pachymetry measurements it derives from.

**Laterality.** Uses the same `bodySite` extension pattern as the rest of this guide, referencing `OcularBodyStructure`.

### Status

This profile is not yet formally defined in FSH. This page currently documents the design decisions reached so far; the StructureDefinition itself is the next step.

## OphthalmicOCTRNFL and OphthalmicOCTMacula

**FHIR resource:** `Observation`, both

**Motivation:** Represent, respectively, an OCT optic nerve head (ONH)/retinal nerve fiber layer (RNFL) analysis and an OCT macular thickness analysis, each grouped under a `DiagnosticReport` together with the imaging study they were derived from. Sourced directly from the FHIR4Eyes Observations catalog (OCT Optic Disc/RNFL and OCT Macula sections).

```
graph TD
    R[OphthalmicDiagnosticReport<br/>OCT report] -->|imagingStudy| S[OphthalmicImagingStudy<br/>RNFL + Macula series]
    R -->|result| RNFL[OphthalmicOCTRNFL<br/>25 components]
    R -->|result| MAC[OphthalmicOCTMacula<br/>22 components]

    RNFL -.-> RNFLG["cup/disc geometry, DDLS,<br/>TSNIT mean/SD"]
    MAC -.-> MACG["ETDRS 9-sector grid,<br/>acquisition metadata"]

```

### Design decisions

**Component-based, diverging from the HL7 Eye Care IG's atomic pattern.** The HL7 Eye Care IG represents each individual sector value (for example, "RNFL superior thickness") as its own separate `Observation`, each with a single LOINC code and a single value. This guide instead represents each full analysis as a single `Observation` with multiple `component` entries, one per measurement.

This is a deliberate divergence, not an oversight: the values produced by a single OCT scan are, by FHIR's own definition of `component`, "multiple component observations for a single measurement" (the same pattern used for systolic/diastolic blood pressure). They are produced together, from the same scan, at the same instant, for the same eye; modeling them as separate, disconnected `Observation` resources would lose that inherent grouping and require an additional panel/`hasMember` layer to reconstruct it. The component-based approach keeps that grouping implicit in the resource's own structure.

**Real LOINC codes, where they exist, are laterality-specific.** The HL7 Eye Care IG's RNFL and macula value sets use **different** LOINC codes for the right versus left eye (for example, `86276-3` for right eye superior RNFL thickness, `86277-1` for left eye). Because this guide's `component[x].code` is fixed once per profile (not per instance), it cannot be pre-bound to a single laterality-specific code that would work for both eyes. Instead, each affected component documents both real codes in its `^short` text, and implementers select the correct one for the eye being examined (indicated via `bodySite`) when populating an instance.

**RNFL classification is a FHIR4Eyes addition.** The `classification` component (Within Normal Limits / Borderline / Outside Normal Limits) does not exist in the HL7 Eye Care IG's RNFL value set. It reflects a classification commonly shown in commercial vendor reports (see the reference reports this guide's examples are based on) but has no confirmed SNOMED CT or LOINC binding yet; this is left open pending verification, following the same pattern as other unconfirmed terminology in this guide.

**Macula outer sectors are not yet confirmed.** LOINC codes were confirmed for the macula center point, center subfield, and the four inner sectors, but not for the four outer sectors. Those components are left with open `CodeableConcept` codes and a note, rather than guessing at a code, consistent with this guide's terminology rigor (see [Terminology](terminology.md)).

### Status

Both profiles are formally defined in FSH.

## Corneal Tomography: six Observations under one report

**FHIR resources:** `Observation` (six profiles: `CTAnteriorSurface`, `CTPosteriorSurface`, `CTPachymetry`, `CTAnteriorChamber`, `CTKeratoconusIndices`, `CTDensitometry`), plus `CornealTomographyReport` (`DiagnosticReport`)

**Motivation:** A modern corneal tomographer (Scheimpflug/Pentacam-style device) produces a single exam session that covers several genuinely distinct analyses: the shape of the front of the cornea, the shape of the back of the cornea, how thick the cornea is at each point, the anterior chamber behind it, derived keratoconus screening indices, and corneal transparency (densitometry). This guide represents each of these six analyses as its own `Observation` profile, grouped together under a single `CornealTomographyReport`.

```
graph TD
    R[CornealTomographyReport] -->|result| A[CTAnteriorSurface<br/>55 components]
    R -->|result| B[CTPosteriorSurface<br/>7 components]
    R -->|result| C[CTPachymetry<br/>6 components]
    R -->|result| D[CTAnteriorChamber<br/>5 components]
    R -->|result| E[CTKeratoconusIndices<br/>19 components]
    R -->|result| F[CTDensitometry<br/>7 components]

```

### Design decisions

**Why six Observations, not one, and not fifty-plus.** This is the same underlying principle applied at the OCT profiles above (see the "Component-based" note there), taken to its natural conclusion for a much richer exam. Values that describe the **same** underlying analysis — for example, all the different keratometry and elevation readings that describe the anterior corneal surface — are grouped as `component` entries within a single Observation, exactly like RNFL's quadrant thicknesses. But `CTAnteriorSurface` and `CTPosteriorSurface` are **not** merged into one Observation with a "front/back" component, even though they share many parallel fields (K1, K2, Km, Q-value, elevation, BFS radius all appear in both). The distinction is not "are these numbers similar in shape", it is "are these numbers describing the same physical/optical entity". The anterior and posterior corneal surfaces are optically and clinically distinct surfaces — a keratorefractive surgeon reasons about them separately, and a device can output one without the other (for example, older Placido-based topographers only measure the anterior surface). Likewise, pachymetry (a thickness map), the anterior chamber (a different anatomical structure entirely), keratoconus indices (derived screening scores, not raw measurements), and densitometry (a transparency/light-scatter property, not a shape property) are each their own kind of analysis, so each gets its own Observation.

**Rule of thumb used throughout this guide:** if two values are two facets of describing the **same object at the same moment** (e.g. this scan's superior RNFL thickness and this scan's inferior RNFL thickness — both are "how thick is the RNFL, broken down by direction"), they are components of one Observation. If two values describe **different objects or different kinds of analysis** (e.g. how the front of the cornea curves vs. how thick the cornea is), they belong in separate Observations, tied together by the parent `DiagnosticReport`.

**A note on the HL7 Eye Care IG.** Corneal tomography of this depth (Scheimpflug-based, with keratoconus screening indices) is not covered by the HL7 Eye Care IG at all; this entire family of profiles is a FHIR4Eyes contribution, not an adaptation of an existing pattern.

**Grouping under one report is provisional.** See the design note in `CornealTomographyReport`'s own FSH source: whether these six analyses should be grouped under a single report, or split to mirror how a given device physically prints separate "maps", is left open for future review, since the current priority is representing the underlying data correctly.

**Sourced directly from the FHIR4Eyes Observations catalog.** Every component in these six profiles, including the eight components that reference specific DICOM Sup 168 tags (vertex location, pupil centroid, map type, and others), was taken directly from the project's maintained variable catalog, not invented for this guide. Where a component has no confirmed SNOMED CT or LOINC binding, its code is left open, following this guide's terminology rigor (see [Terminology](terminology.md)).

### Status

All six Observation profiles and `CornealTomographyReport` are formally defined in FSH.

## OphthalmicOcularBiometry and IOLFormulaResult

**FHIR resources:** `Observation`, both

**Motivation:** Represents an ocular biometry exam used for IOL power calculation ahead of cataract surgery. Sourced directly from the FHIR4Eyes Observations catalog (Ocular Biometry section), DICOM-aligned per CIDs 4230-4243.

```
graph TD
    B[OphthalmicOcularBiometry<br/>26 shared components:<br/>AL, ACD, LT, K1/K2, WTW...] -->|hasMember| F1[IOLFormulaResult<br/>Barrett Universal II]
    B -->|hasMember| F2[IOLFormulaResult<br/>SRK/T]
    B -->|hasMember| F3[IOLFormulaResult<br/>Holladay 2 ...]

    F1 -.-> D1["lens model, IOL power,<br/>expected refraction"]

```

### Design decisions

**Shared measurements as components, each formula as a separate Observation.** A single biometry exam produces one set of shared measurements (axial length, keratometry, anterior chamber depth, and so on), but is typically run through **several** IOL power formulas for comparison (for example Barrett Universal II, SRK/T, Holladay 2), each producing its own suggested lens, power, and expected refractive outcome. Rather than fixing two hardcoded "formula 1" / "formula 2" component slots on the biometry Observation itself, this guide represents each formula's result as a separate `IOLFormulaResult` instance, referenced via `hasMember`. This allows any number of formulas to be recorded, and keeps each formula's full result (constant, lens, power, expected refraction) together as its own coherent unit, following the same "different object/analysis gets its own Observation" principle used throughout this guide (see the Corneal Tomography section above).

**Formula-specific fields live only on `IOLFormulaResult`.** `formula`, `lensConstantType`, `lensConstantValue`, `iolModel`, `iolPower`, `expectedRef`, and `iolTable` are components of `IOLFormulaResult`, not of `OphthalmicOcularBiometry`. The biometry Observation holds only the measurements that are shared and independent of which formula is later applied to them.

### Status

Both profiles are formally defined in FSH.

## Profiles pending clinical validation

The following profiles remain lower priority and are deliberately left undesigned in this guide until they can be reviewed with an ophthalmologist colleague, rather than being modeled speculatively:

* Goal (intraocular pressure target)
* Biomicroscopy
* Gonioscopy
* Fundus examination
* And others, to be identified as this guide develops further

Not every possible ophthalmic examination needs a dedicated profile in this guide. A profile is only warranted where the examination has a structural need beyond what a simple `Observation` bound to the terminology already defined in [Terminology](terminology.md) can represent (for example, a panel, as with `TensionCurve`, or a multi-component exam, as with `StrabismusExam`). Examinations that fit the simple pattern do not require their own profile, and are already covered by the general terminology strategy.

