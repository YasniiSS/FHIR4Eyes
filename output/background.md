# Background - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.1.0

* [**Table of Contents**](toc.md)
* **Background**

## Background

# Background

## Why does ophthalmology need its own profiles?

Generic FHIR resources like `Observation`, `Procedure`, or `ImagingStudy` can technically represent almost any clinical data. But using them without further guidance leaves too much room for different systems to represent the same clinical concept in incompatible ways. Eye care has a specific set of characteristics that make this especially true.

### Bilaterality

Almost every eye care measurement, finding, or procedure applies to one eye, the other, or both, and the two eyes are frequently compared against each other. A generic `Observation` has no reliable way to say "this measurement is for the right eye" that every system will interpret the same way. FHIR4Eyes standardizes this using `BodyStructure`, aligned with the approach the HL7 Eye Care IG is also converging on.

### Serial measurements and panels

Some measurements, most notably intraocular pressure (IOP), are rarely useful in isolation. Clinicians track them over time, and sometimes group several readings taken across a single day into a single clinical concept: a tension curve. FHIR4Eyes defines a panel pattern (`hasMember`) for this, something not addressed by generic observation profiles.

### Implantable devices

Intraocular lenses (IOLs) and similar devices are cataloged products implanted during a procedure and left in the eye permanently. They need to be modeled as inventory items linked to the patient through the procedure that implanted them, not as loose references scattered across clinical records.

### Chronic treatment with repeated doses

Conditions treated with intravitreal injections follow a long-term treatment plan, made up of many individual administration events over months or years. This calls for a `CarePlan` and `MedicationAdministration` pattern that can represent an ongoing scheme, not just a single medication event.

### An integrated imaging and care pathway

Ophthalmology also differs from other specialties in how imaging fits into the clinical workflow. In radiology, the clinician who orders an imaging study is usually not the one who interprets it: a radiologist, a different specialist entirely, reviews the images and produces a report that is then sent back. In ophthalmology, imaging studies such as OCT scans or retinal photographs are typically reviewed and interpreted by the same ophthalmologist, or the same eye care team, that is following the patient clinically, often within the same visit. In addition, other eye health professionals (such as optometrists and eye care technologists) contribute their own procedures and encounters along the way, not only imaging, all supporting the continuity of the same care pathway.

The result is that clinical findings, imaging data, and procedural data stay tightly connected within a single, continuous circuit of care, rather than being handed off between separate systems or specialties. A generic radiology-oriented pattern for imaging and diagnostic reports does not reflect this well. FHIR4Eyes profiles are designed around this integrated pathway instead.

## The current state of standardization

There is no mature, complete international standard for ophthalmology data exchange today. The most relevant existing effort, the [HL7 Eye Care Implementation Guide](https://build.fhir.org/ig/HL7/fhir-eyecare-ig/), is still in early ballot status. It defines a solid foundation for basic clinical observations (visual acuity, IOP, visual fields, OCT) but does not yet cover diagnoses, treatment, devices, or the imaging and care-pathway integration described above.

The table below summarizes where FHIR4Eyes adds coverage that isn't available anywhere else yet. See [Profiles](profiles.md) for the full technical detail of each one.

| | |
| :--- | :--- |
| IOP corrected for corneal thickness | Dedicated profile linking IOP and pachymetry via`derivedFrom` |
| Corneal pachymetry | Dedicated observation profile |
| Tension curve (panel of IOP readings) | Panel pattern using`hasMember` |
| Ophthalmic imaging studies | `ImagingStudy`profile for OCT, retinography, angiography |
| Intravitreal injection care plans | `CarePlan`modeling a full treatment scheme |
| Individual medication administrations | `MedicationAdministration`for each dose |
| Implantable device catalog (IOLs) | `Device`profile using an inventory model |
| Ophthalmology-specific encounters | `Encounter`profile for outpatient eye care visits |
| Qualitative low vision acuity | Dedicated value set (counting fingers, hand motion, light perception, no light perception) |

A number of areas remain open opportunities, not yet covered by FHIR4Eyes, the HL7 Eye Care IG, or any other known effort: refraction, biomicroscopy, gonioscopy, fundus examination findings, Schirmer testing, contrast sensitivity, and color vision. These are candidates for future versions of this guide. See [Use Cases](usecases.md) for the clinical scenarios that motivated the profiles that already exist.

