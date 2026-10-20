# Terminology - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* **Terminology**

## Terminology

## Strategy

This guide follows a simple principle: reuse existing terminology wherever it already exists, and only define new terminology where a genuine gap exists.

The [HL7 Eye Care Implementation Guide](https://build.fhir.org/ig/HL7/fhir-eyecare-ig/) is not yet available as a published FHIR package, so it cannot be declared as a formal dependency (see [Background](background.md)). Because of that, FHIR4Eyes does not attempt to reuse its value sets by reference. Instead, wherever a clinical concept is already representable in SNOMED CT, FHIR4Eyes binds directly to SNOMED CT, without introducing an intermediate value set of its own. This keeps FHIR4Eyes decoupled from an unpublished guide while still remaining aligned with how eye care terminology is generally represented internationally.

New value sets and codes are only introduced by FHIR4Eyes where there is a real terminology gap, not otherwise covered by SNOMED CT, LOINC or the HL7 Eye Care IG. Those local codes live in a single code system, described [below](#fhir4eyes-local-code-system).

| | |
| :--- | :--- |
| Clinical findings, examination methods, procedures | Direct binding to SNOMED CT |
| Diagnoses (FHIR4Eyes Core) | SNOMED CT and/or ICD-11 |
| Diagnoses (FHIR4Eyes CL) | ICD-10, as currently used in the Chilean public health system |
| Laterality | Represented using`BodyStructure`(see[Background](background.md)); no dedicated value set needed |
| Observation and component codes with no side-neutral external code | FHIR4Eyes local code system ([FHIR4Eyes Code System](CodeSystem-fhir4eyes-cs.md)) |

## General principle: choosing between SNOMED CT and LOINC

Rather than replicating every value set from the HL7 Eye Care IG here (which would be redundant and fragile if that guide changes), this guide follows one general principle, consistent with how the HL7 Eye Care IG itself applies terminology:

* **SNOMED CT** is used for observable concepts, examination methods, findings, and procedures: the kind of clinical concept that benefits from SNOMED's hierarchical structure (`descendant-of` a root concept). This includes imaging examinations where the device itself does not output a structured report, and the ophthalmologist instead records findings directly (for example retinography and retinal angiography).
* **LOINC** is used for structured panels of numeric, parametric results: examinations where the device produces a battery of discrete measured values, each with its own code, the way laboratory panels typically work (for example OCT or specular microscopy).

The table below summarizes how this applies across the examinations covered by this guide (see [Use Cases](usecases.md) for the clinical description of each). Only the exceptions and open gaps are elaborated further below; the general principle applies to any examination not explicitly listed here.

| | | |
| :--- | :--- | :--- |
| Visual acuity (observable entity and chart/method) | SNOMED CT (code), LOINC and FHIR4Eyes (components) | `Observation.code`is SNOMED CT`363983007`(Visual acuity); instances may add a specific LOINC as a second coding (for example`98505-1`). The chart/method component uses LOINC`79908-0`; the other components use FHIR4Eyes codes |
| Ophthalmic procedures | SNOMED CT | Descendants of`371548008`and`371560009`; CPT for codes not covered by SNOMED CT |
| Diagnoses | SNOMED CT and/or ICD-11 (Core); ICD-10 (CL) |   |
| OCT macula | LOINC | Panel`57119-0`; thickness subfields`57108-3`..`57117-4`and total volume`57118-2`. Components without a LOINC code (subfield volume, scan and dilation metadata) use FHIR4Eyes codes |
| OCT RNFL / optic nerve head | LOINC (panel) and FHIR4Eyes (components) | Panel`86291-2`; the optic nerve head and TSNIT components use FHIR4Eyes codes |
| Specular microscopy | FHIR4Eyes, plus eye-specific LOINC | Laterality-neutral FHIR4Eyes codes are fixed in the profile; instances add the eye-specific LOINC (`100070-2`family) as a second coding |
| Computerized visual field | FHIR4Eyes | No verified LOINC panel for the parametric results; FHIR4Eyes codes for the exam and its components |
| Corneal tomography | FHIR4Eyes | No verified LOINC coverage; FHIR4Eyes codes for each tomography observation and its components |
| Ocular biometry and IOL formula results | FHIR4Eyes | No verified LOINC coverage; FHIR4Eyes codes for the exam and its components |
| Retinography | SNOMED CT | The device does not produce a structured report; the ophthalmologist records clinical findings directly, which follows the finding-type logic rather than the parametric-panel logic |
| Retinal angiography | SNOMED CT | Same reasoning as retinography: findings are recorded by the ophthalmologist, not output as a structured device report |
| Tonometry (intraocular pressure) | SNOMED CT | `Observation.code`is`41633001`(Intraocular pressure); the tonometer type in`method`follows LOINC`79764-7`(Type of Tonometer) |
| Corrected IOP, tension curve | FHIR4Eyes | Laterality-neutral FHIR4Eyes codes; corrected IOP instances may add the eye-specific LOINC (`96093-0`/`96092-2`, still to be verified) as a second coding |
| Pachymetry | FHIR4Eyes, plus eye-specific LOINC | Laterality-neutral`central-corneal-thickness`; instances add`79825-6`(right) /`79826-4`(left) as a second coding |
| Strabismus exam and sub-tests | FHIR4Eyes | FHIR4Eyes codes for each test and its components |
| Autorefractometry, pupillometry | SNOMED CT | Single or few discrete values, not a structured panel (no profile yet) |
| Low vision (below chart-measurable range) | FHIR4Eyes`LowVisionAssessment` | A curated value set of SNOMED CT concepts; see below |

## FHIR4Eyes local code system

LOINC codes for many eye examinations are defined per eye (for example `79825-6` "Right cornea Central corneal thickness" and `79826-4` for the left cornea). In FHIR4Eyes, laterality is carried by `bodySite`, so a profile cannot fix one of these codes without also fixing the eye. For other concepts (corneal tomography, biometry, visual field, strabismus sub-tests, much of the OCT optic nerve head and scan metadata) no LOINC or SNOMED CT code has been verified at all.

For these cases this guide defines its own codes in the [FHIR4Eyes Code System](CodeSystem-fhir4eyes-cs.md). Local codes are used only when:

* no side-neutral LOINC or SNOMED CT code is available for the concept; and
* the concept is needed as a fixed `Observation.code` or as the code that identifies a `component` slice.

Where an eye-specific LOINC code exists, the FHIR4Eyes code is the one fixed in the profile, and instances **add** the eye-specific LOINC as a second coding in the same `CodeableConcept` (for example, pachymetry carries `central-corneal-thickness` plus `79825-6` for a right-eye measurement). Receivers that understand LOINC can still use it, while the profile stays valid for either eye.

The code system is intended as a bridge, not a replacement: codes are laterality-neutral, in English and kebab-case, and are open to replacement as suitable external codes are verified.

## FHIR4Eyes value sets

### LowVisionAssessment

Represents visual acuity in patients whose vision is too limited to be measured on a standard chart.

#### Clinical and official basis

The World Health Organization defines vision impairment and blindness severity categories in [ICD-11 (9D90)](https://icd.who.int/browse/latest-release/mms/en), based on best-corrected visual acuity in the better eye:

| | | |
| :--- | :--- | :--- |
| No vision impairment |   | 6/12, 5/10 (0.5), 20/40, 0.3 |
| 1: Mild vision impairment | 6/12, 5/10 (0.5), 20/40, 0.3 | 6/18, 3/10 (0.3), 20/70, 0.5 |
| 2: Moderate vision impairment | 6/18, 3/10 (0.3), 20/70, 0.5 | 6/60, 1/10 (0.1), 20/200, 1.0 |
| 3: Severe vision impairment | 6/60, 1/10 (0.1), 20/200, 1.0 | 3/60, 1/20 (0.05), 20/400, 1.3 |
| 4: Blindness | 3/60, 1/20 (0.05), 20/400, 1.3 | 1/60 or counts fingers (CF) at 1 metre, 1/50 (0.02), 20/1200 or CF at 1 metre, 1.8 |
| 5: Blindness | 1/60, 1/50 (0.02), 5/300 (20/1200), 1.8 | Light perception |
| 6: Blindness | No light perception |   |
| 9: Undetermined or unspecified |   |   |
| Near vision impairment | N6 or M 0.8 at 40 cm |   |

*1 Presented in metres, decimals, feet and logMAR.

`LowVisionAssessment` covers the range of ICD-11 categories 4 through 6 (blindness), where visual acuity is no longer meaningfully expressed on a Snellen or decimal chart, and clinicians instead record it using the qualitative scale below.

#### Terminology basis

All five concepts below have a confirmed match in SNOMED CT, verified directly against the SNOMED CT browser. The value set includes every SNOMED CT code listed in the table, including the distance-specific counting-fingers codes.

| | | |
| :--- | :--- | :--- |
| counting-fingers | Counting fingers (at a specified distance) | `422256009`(Counts fingers, distance vision, generic) or, when the specific distance is known,`260292001`(1 metre),`260293006`(1/2 metre),`260294000`(1/3 metre) |
| hand-motion | Hand motion | `260295004`(Sees hand movements) |
| light-perception-good-projection | Light perception, good projection | Matches SNOMED CT`260297007`/`264944004`(Visual acuity perception of light, accurate projection) |
| light-perception-poor-projection | Light perception, poor projection | Matches SNOMED CT`264943005`(Visual acuity perception of light, inaccurate projection) |
| no-light-perception | No light perception | Matches SNOMED CT`63063006`(Visual acuity, no light perception) |

> **Design note:** for `counting-fingers`, both options are allowed by the value set. The generic `422256009` code is the default, since the specific testing distance is not always recorded. When the distance is known and clinically relevant, implementers may use the distance-specific codes (`260292001`, `260293006`, `260294000`) instead.

The distinction between good and poor projection matters clinically: both indicate that the patient can perceive light, but poor projection means the patient cannot reliably tell where the light is coming from, which is a clinically meaningful difference from good projection.

The formal definition is published as the [Low Vision Assessment Value Set](ValueSet-low-vision-assessment-vs.md), used by [Ophthalmic Visual Acuity](StructureDefinition-ophthalmic-visual-acuity.md).

## Terminology artefacts defined in this guide

| | | |
| :--- | :--- | :--- |
| [FHIR4Eyes Code System](CodeSystem-fhir4eyes-cs.md) | CodeSystem | Fixed`Observation.code`and`component`slice codes across the observation profiles (see[above](#fhir4eyes-local-code-system)) |
| [Low Vision Assessment Value Set](ValueSet-low-vision-assessment-vs.md) | ValueSet | [Ophthalmic Visual Acuity](StructureDefinition-ophthalmic-visual-acuity.md) |
| [Ophthalmic Care Plan Category Value Set](ValueSet-ophthalmic-care-plan-category-vs.md) | ValueSet | [Ophthalmic Care Plan](StructureDefinition-ophthalmic-care-plan.md) |
| [FHIR4Eyes Care Plan Category Code System](CodeSystem-fhir4eyes-care-plan-category-cs.md) | CodeSystem | [Ophthalmic Care Plan Category Value Set](ValueSet-ophthalmic-care-plan-category-vs.md) |

