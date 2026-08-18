# Use Cases - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.1.0

* [**Table of Contents**](toc.md)
* **Use Cases**

## Use Cases

# Use Cases

This page describes the clinical scenarios that motivated the profiles defined in this guide. Each use case lists the actors involved, the general flow, and the FHIR resources that come into play. For the full technical detail of each profile, see [Profiles](profiles.md).

## Actors used throughout this page

To keep this guide usable across different health systems, the following generic actor names are used instead of country-specific role titles (see the [FHIR4Eyes CL](cl/index.md) extension for Chile-specific role mappings):

* **Patient**: the person receiving eye care.
* **Ophthalmologist**: the physician specialized in eye care, responsible for diagnosis, clinical decision-making, and interpretation of most eye examinations.
* **Eye care professional**: a non-physician professional trained to perform eye examinations and procedures (this may correspond to an optometrist, an orthoptist, or a medical technologist specialized in ophthalmology, depending on the country).
* **Eye care assistant**: support staff who assist with preparing the patient or the equipment for an examination or procedure, without independently interpreting results.

## Baseline resources assumed throughout

Every use case below produces at least an `Encounter`, representing the clinical visit itself. Many of the procedures and examinations described in this guide also follow a prior chain of steps: a scheduled appointment, and a medical order (represented by `OphthalmicServiceRequest`, defined in [Profiles](profiles.md), when the exam was formally ordered rather than performed ad hoc during the same visit).

Scheduling itself (`Appointment`, `Schedule`, `Slot`) is intentionally out of scope for this guide, since it is purely administrative and already well served by generic FHIR resources (see [Background](background.md)).

The "FHIR resources involved" tables in each use case below list only the resources that are specific or structurally distinctive to that use case. They do not repeat `Encounter` or `OphthalmicServiceRequest` in every table, even though both are typically present in the full chain leading up to the use case described.

## Use case 1: General ophthalmology encounter

This is the baseline clinical encounter and does not, on its own, require anything beyond what FHIR already provides through generic resources. It is included here as the starting point for every other use case in this guide.

**Actors:** Patient, Ophthalmologist (an Eye care professional may also be involved, depending on local workflows).

**Flow:** The patient is seen by the ophthalmologist, who reviews the reason for the visit, examines the patient, may request or perform diagnostic procedures (see [Use case 2](#use-case-2-diagnostic-examinations)), and records a diagnosis and a plan.

**FHIR resources involved:**

| | |
| :--- | :--- |
| `Encounter` | Represents the visit itself |
| `Condition` | Represents the diagnosis reached during the visit |
| `Observation` | Represents any clinical findings recorded (generic, no FHIR4Eyes profile required at this level) |

```
sequenceDiagram
    participant P as Patient
    participant O as Ophthalmologist
    P->>O: Presents with reason for visit
    O->>P: Examination
    O->>O: Records Condition and Observation(s)
    O->>P: Communicates diagnosis and plan

```

> This use case does not currently require any FHIR4Eyes-specific profile. As the guide develops further (for example, if an `OphthalmicCondition` profile is defined), this section will be updated to reference it.

## Use case 2: Diagnostic examinations

Ophthalmology relies on a wide range of diagnostic examinations, performed by the ophthalmologist or by an eye care professional. These examinations split naturally into two groups, because they follow different FHIR patterns.

> The lists below are not exhaustive. They cover the most representative and frequently performed examinations considered so far. Less common examinations not yet listed here can still be represented using the same patterns, and may be added to this guide over time.

### Group A: Direct observations

These examinations produce a clinical value or finding directly. There is no separate image to review afterward; the result itself is the data.

**Actors:** Patient, and either an Ophthalmologist or an Eye care professional (who may be assisted by an Eye care assistant, depending on the examination and local workflow).

**Flow:** The professional performs the examination on the patient and records the resulting value or finding directly as clinical data.

```
sequenceDiagram
    participant P as Patient
    participant E as Ophthalmologist / Eye care professional
    P->>E: Undergoes examination
    E->>E: Records Observation directly

```

**FHIR resources involved:** `Procedure` (the act of performing the examination) and `Observation` (the resulting value).

| | |
| :--- | :--- |
| Tonometry (applanation or other) | Covered by the`IntraocularPressure`profile |
| Pachymetry | Covered by the`Pachymetry`profile |
| Ambulatory tension curve | Covered by the`TensionCurve`panel profile |
| Autorefractometry |   |
| Clinical refraction | Not yet covered by a dedicated profile (see[Background](background.md)) |
| Strabismus examination |   |

### Group B: Imaging studies with report

These examinations generate an image or a structured dataset (stored using DICOM, whether as a photograph, a scan, or structured waveform-like data), which is then reviewed and interpreted separately from the acquisition itself. Unlike radiology, this interpretation is typically performed by the same ophthalmologist or eye care team following the patient, often within the same visit (see [Background](background.md)).

**Actors:** Patient, Eye care professional or Eye care assistant (usually performs the acquisition), Ophthalmologist (usually performs the interpretation, though in some workflows the same professional may do both).

**Flow:** The image or structured dataset is acquired and stored. The ophthalmologist then reviews it, but unlike a radiology report, this step is not limited to describing imaging findings: it typically leads directly into a diagnosis and a treatment plan for the patient, all within the same clinical act. This is part of what distinguishes the ophthalmology imaging pathway from radiology (see [Background](background.md)).

```
sequenceDiagram
    participant P as Patient
    participant A as Eye care professional / assistant
    participant O as Ophthalmologist
    P->>A: Undergoes imaging study
    A->>A: Acquires and stores ImagingStudy
    O->>A: Reviews the study
    O->>O: Records findings and DiagnosticReport
    O->>O: Reaches a diagnosis (Condition)
    O->>O: Defines a treatment plan (CarePlan)

```

**FHIR resources involved:** `ImagingStudy` (the acquired study), `DiagnosticReport` (the findings), `Condition` (the diagnosis reached), and `CarePlan` (the resulting treatment plan, when applicable).

| | |
| :--- | :--- |
| Optical coherence tomography (OCT) |   |
| Retinal angiography |   |
| Retinography |   |
| Corneal topography |   |
| Computerized and Goldmann visual field | Structured report data, also stored as part of the imaging study |
| Ocular ultrasound |   |
| Ocular biometry |   |
| Pupillometry |   |
| Electroretinogram (ERG) |   |
| Aberrometry |   |
| Meibography |   |
| Specular microscopy |   |

> `OphthalmicDiagnosticReport` is not yet built (see the profiles inventory in [Background](background.md)); it is a high-priority item for this guide, since every examination in this group depends on it to represent the interpretation step.

## Use case 3: Vision therapy and rehabilitation

Some conditions, such as strabismus or binocular vision disorders, are treated not with medication or surgery but with a structured program of repeated sessions: vision therapy exercises or orthoptic treatment aimed at improving visual function over time.

**Actors:** Patient, Ophthalmologist (defines and oversees the treatment plan), Eye care professional (an orthoptist or similarly trained professional, who may perform the sessions themselves depending on local workflow).

**Flow:** The ophthalmologist establishes a treatment plan made up of multiple sessions. The professional performing each session carries out the exercises, and the patient's functional progress (for example deviation angle or binocular function) is recorded at each session, so progress can be tracked over the course of the plan.

```
sequenceDiagram
    participant P as Patient
    participant O as Ophthalmologist
    participant T as Eye care professional
    O->>O: Defines CarePlan (treatment scheme)
    loop Each session
        P->>T: Attends session
        T->>T: Performs Procedure (session)
        T->>T: Records Observation (functional progress)
    end
    T->>O: Progress reviewed against CarePlan

```

**FHIR resources involved:** `CarePlan` (the overall treatment scheme), `Procedure` (each individual session), and `Observation` (functional progress recorded per session).

> Whether vision therapy and orthoptic treatment reuse the same `CarePlan` profile defined for intravitreal injection treatment, or require their own variation, is still to be decided in [Profiles](profiles.md).

## Use case 4: Minor ambulatory surgical procedures

Several ophthalmology treatments are performed as brief, ambulatory surgical procedures. This includes procedures such as panretinal photocoagulation, LASIK, PRK, and YAG capsulotomy (typically performed after cataract surgery, to clear a clouded lens capsule).

**Actors:** Patient, Ophthalmologist (performs the procedure), Eye care assistant (may support preparation).

**Flow:** The ophthalmologist performs the procedure during a single encounter. The procedure is recorded with its laterality and any relevant clinical detail.

**FHIR resources involved:** `Encounter`, `Procedure` (with `bodySite` referencing `BodyStructure` for laterality).

| | |
| :--- | :--- |
| Panretinal photocoagulation |   |
| LASIK |   |
| PRK |   |
| YAG capsulotomy |   |

> This list is not exhaustive and is expected to grow as more procedures are documented.

### Intravitreal injection treatment

Intravitreal injections are treated separately from the procedures above because they are not a single event: they follow a long-term treatment scheme made up of repeated injection sessions, each administering a medication directly into the eye.

**Actors:** Patient, Ophthalmologist (establishes the diagnosis and the treatment scheme, and typically performs each injection).

**Flow:** A diagnosis is reached and recorded once. Based on it, a treatment scheme is defined, covering the expected course of injections over time. Each individual injection is then recorded as its own procedure, linked back to the overall scheme, along with the medication administered during it.

```
sequenceDiagram
    participant P as Patient
    participant O as Ophthalmologist
    O->>O: Records diagnosis (Condition)
    O->>O: Defines treatment scheme (CarePlan)
    loop Each injection session
        P->>O: Attends session
        O->>O: Performs Procedure (linked to CarePlan)
        O->>O: Records MedicationAdministration
    end

```

**FHIR resources involved:**

| | |
| :--- | :--- |
| `Condition` | The diagnosis motivating treatment, recorded once and referenced throughout |
| `CarePlan` | The overall treatment scheme |
| `Procedure` | Each individual injection, linked to the`CarePlan`via`basedOn`, with`bodySite`for laterality |
| `MedicationAdministration` | The medication administered during each injection, referencing the cataloged`Medication` |

## Use case 5: Cataract surgery with intraocular lens implantation

Cataract surgery involves removing the eye's clouded natural lens and replacing it with an intraocular lens (IOL). Unlike the procedures in [use case 4](#use-case-4-minor-ambulatory-surgical-procedures), this involves a permanently implanted device, which needs to be represented as such.

**Actors:** Patient, Ophthalmologist (reviews prior examinations, selects the lens, and performs the surgery).

**Flow:** Before the day of surgery, the ophthalmologist reviews the relevant prior examinations (typically including ocular biometry) and selects the appropriate IOL from the device catalog. On the day of surgery, the ophthalmologist performs the procedure and implants the selected lens, which is recorded as the focal device of the procedure.

```
sequenceDiagram
    participant O as Ophthalmologist
    participant P as Patient
    O->>O: Reviews prior exams (e.g. ocular biometry)
    O->>O: Selects IOL from Device catalog
    P->>O: Attends surgery
    O->>O: Performs Procedure, with selected Device as focalDevice

```

**FHIR resources involved:**

| | |
| :--- | :--- |
| `Device` | The IOL, modeled as a cataloged/inventory item, not linked to the patient directly |
| `Procedure` | The surgery itself, with`bodySite`for laterality and`focalDevice`referencing the implanted`Device` |

> The link from patient to implanted device is made only through `Procedure.focalDevice`. The `Device` resource itself is not linked to the patient.

## Use case 6: Teleophthalmology

In many health systems, imaging studies are acquired at a primary care facility, while interpretation is performed remotely by an ophthalmologist based at a hospital or reference center. This differs from the integrated pathway described in [use case 2, group B](#group-b-imaging-studies-with-report), where acquisition and interpretation typically happen close together, often within the same visit. In teleophthalmology, the two steps are separated in place and often in time, and a formal request is needed to connect them, similar in structure to how teleradiology works.

**Actors:** Patient, Eye care professional (acquires the study at the primary care facility), Ophthalmologist (interprets remotely at a hospital or reference center).

**Flow:** A request for remote interpretation is created at the primary care facility. The study is acquired there and made available to the remote ophthalmologist, who reviews it and produces the interpretation, findings, diagnosis, and treatment plan as with any other imaging study, but without being physically present with the patient.

```
sequenceDiagram
    participant P as Patient
    participant A as Eye care professional (primary care)
    participant O as Ophthalmologist (remote, hospital)
    A->>A: Creates ServiceRequest for remote interpretation
    P->>A: Undergoes imaging study
    A->>A: Acquires and stores ImagingStudy
    O->>A: Reviews the study remotely
    O->>O: Records DiagnosticReport, Condition, CarePlan as applicable

```

**FHIR resources involved:** `ServiceRequest` (the request for remote interpretation, not yet covered by a dedicated profile), plus the same resources as [use case 2, group B](#group-b-imaging-studies-with-report) (`ImagingStudy`, `DiagnosticReport`, `Condition`, `CarePlan`).

> This use case is an open opportunity for this guide. `OphthalmicServiceRequest` is listed as a medium-priority profile to build (see [Background](background.md)), and the full detail of how the remote request and response should be structured is still to be designed.

