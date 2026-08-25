# Terminology - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.2.0

* [**Table of Contents**](toc.md)
* **Terminology**

## Terminology

# Terminology

## Strategy

This guide follows a simple principle: reuse existing terminology wherever it already exists, and only define new terminology where a genuine gap exists.

The [HL7 Eye Care Implementation Guide](https://build.fhir.org/ig/HL7/fhir-eyecare-ig/) is not yet available as a published FHIR package, so it cannot be declared as a formal dependency (see [Background](background.md)). Because of that, FHIR4Eyes does not attempt to reuse its value sets by reference. Instead, wherever a clinical concept is already representable in SNOMED CT, FHIR4Eyes binds directly to SNOMED CT, without introducing an intermediate value set of its own. This keeps FHIR4Eyes decoupled from an unpublished guide while still remaining aligned with how eye care terminology is generally represented internationally.

New value sets are only introduced by FHIR4Eyes where there is a real terminology gap, not otherwise covered by SNOMED CT or by the HL7 Eye Care IG.

| | |
| :--- | :--- |
| Clinical findings, examination methods, procedures | Direct binding to SNOMED CT |
| Diagnoses (FHIR4Eyes Core) | SNOMED CT and/or ICD-11 |
| Diagnoses (FHIR4Eyes CL) | ICD-10, as currently used in the Chilean public health system |
| Laterality | Represented using`BodyStructure`(see[Background](background.md)); no dedicated value set needed |

## General principle: choosing between SNOMED CT and LOINC

Rather than replicating every value set from the HL7 Eye Care IG here (which would be redundant and fragile if that guide changes), this guide follows one general principle, consistent with how the HL7 Eye Care IG itself applies terminology:

* **SNOMED CT** is used for observable concepts, examination methods, findings, and procedures: the kind of clinical concept that benefits from SNOMED's hierarchical structure (`descendant-of` a root concept). This includes imaging examinations where the device itself does not output a structured report, and the ophthalmologist instead records findings directly (for example retinography and retinal angiography).
* **LOINC** is used for structured panels of numeric, parametric results: examinations where the device produces a battery of discrete measured values, each with its own code, the way laboratory panels typically work (for example OCT or specular microscopy).

The table below summarizes how this applies across the examinations covered by this guide (see [Use Cases](usecases.md) for the clinical description of each). Only the exceptions and open gaps are elaborated further below; the general principle applies to any examination not explicitly listed here.

| | | |
| :--- | :--- | :--- |
| Visual acuity (observable entity and chart/method) | SNOMED CT | Descendants of`363983007`and`400912000` |
| Ophthalmic procedures | SNOMED CT | Descendants of`371548008`and`371560009`; CPT for codes not covered by SNOMED CT |
| Diagnoses | SNOMED CT and/or ICD-11 (Core); ICD-10 (CL) |   |
| OCT (macula and RNFL) | LOINC | Device produces a structured parametric report |
| Specular microscopy | LOINC | Device produces a structured parametric report (for example endothelial cell density, morphology) |
| Computerized and Goldmann visual field | LOINC | Follows the same parametric-panel logic as OCT |
| Corneal topography | LOINC | Follows the same parametric-panel logic as OCT |
| Ocular biometry | LOINC | Follows the same parametric-panel logic as OCT |
| Retinography | SNOMED CT | The device does not produce a structured report; the ophthalmologist records clinical findings directly, which follows the finding-type logic rather than the parametric-panel logic |
| Retinal angiography | SNOMED CT | Same reasoning as retinography: findings are recorded by the ophthalmologist, not output as a structured device report |
| Tonometry, pachymetry, tension curve, autorefractometry, pupillometry | SNOMED CT | Single or few discrete values, not a structured panel |
| Low vision (below chart-measurable range) | FHIR4Eyes`LowVisionAssessment` | A curated value set of SNOMED CT concepts; see below |

> The exact LOINC codes to use for OCT, visual field, topography, and biometry are to be identified when each of these profiles is built, following the pattern above rather than reproducing a full code list here.

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

All five codes below have a confirmed match in SNOMED CT, verified directly against the SNOMED CT browser.

| | | |
| :--- | :--- | :--- |
| counting-fingers | Counting fingers (at a specified distance) | `422256009`(Counts fingers, distance vision, generic) or, when the specific distance is known,`260292001`(1 metre),`260293006`(1/2 metre),`260294000`(1/3 metre) |
| hand-motion | Hand motion | `260295004`(Sees hand movements) |
| light-perception-good-projection | Light perception, good projection | Matches SNOMED CT`260297007`/`264944004`(Visual acuity perception of light, accurate projection) |
| light-perception-poor-projection | Light perception, poor projection | Matches SNOMED CT`264943005`(Visual acuity perception of light, inaccurate projection) |
| no-light-perception | No light perception | Matches SNOMED CT`63063006`(Visual acuity, no light perception) |

> **Design note:** for `counting-fingers`, this guide uses the generic `422256009` code by default, since the specific testing distance is not always recorded. When the distance is known and clinically relevant, implementers may use the more specific distance-based codes instead.

The distinction between good and poor projection matters clinically: both indicate that the patient can perceive light, but poor projection means the patient cannot reliably tell where the light is coming from, which is a clinically meaningful difference from good projection.

> The exact code system URL, formal value set URL, and FSH definition for `LowVisionAssessment` are to be finalized when this value set is implemented in [Profiles](profiles.md).

