# Profiles - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.1.0

* [**Table of Contents**](toc.md)
* **Profiles**

## Profiles

# Profiles

This page documents the profile-level design decisions for FHIR4Eyes Core. For the clinical motivation behind each profile, see [Use Cases](usecases.md). For terminology strategy and value sets, see [Terminology](terminology.md).

Profiles below are presented in the chronological order they typically appear within a clinical encounter: the medical order, the diagnosis (when already known), the procedure or observation performed, any imaging study involved, the resulting diagnostic report, and finally the treatment plan.

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

### Status

This profile is not yet formally defined in FSH. This page currently documents the design decisions reached so far; the StructureDefinition itself is the next step.

## StrabismusExam

**FHIR resource:** `Observation`

**Motivation:** Represents a strabismus examination, which unlike most examinations in [use case 2, group A](usecases.md#group-a-direct-observations), is not a single measurement but a clinical exam made up of several possible components (for example, deviation angle, cover test result, ocular motility), evaluated as needed for the specific clinical case.

### Design decisions

**Flexible components, not a fixed checklist.** This examination does not follow a fixed, required set of components; which aspects are assessed and recorded depends on the clinical case. `Observation.component` is used to represent this, with `0..*` cardinality and no components marked as required. Each component carries its own SNOMED CT code (following the terminology strategy in [Terminology](terminology.md)) and its own value, allowing any combination relevant to the case at hand, rather than forcing every strabismus exam to report the same fixed checklist.

> This structure was defined by the guide's author directly, as a case where enough clinical judgment was already available to model it without deferring to further ophthalmologist review (unlike the lower-priority profiles listed below).

### Status

This profile is not yet formally defined in FSH. This page currently documents the design decisions reached so far; the StructureDefinition itself is the next step.

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

## Profiles pending clinical validation

The following profiles remain lower priority and are deliberately left undesigned in this guide until they can be reviewed with an ophthalmologist colleague, rather than being modeled speculatively:

* Goal (intraocular pressure target)
* Biomicroscopy
* Gonioscopy
* Fundus examination
* And others, to be identified as this guide develops further

Not every possible ophthalmic examination needs a dedicated profile in this guide. A profile is only warranted where the examination has a structural need beyond what a simple `Observation` bound to the terminology already defined in [Terminology](terminology.md) can represent (for example, a panel, as with `TensionCurve`, or a multi-component exam, as with `StrabismusExam`). Examinations that fit the simple pattern do not require their own profile, and are already covered by the general terminology strategy.

