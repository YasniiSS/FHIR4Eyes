# Profiles - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* **Profiles**

## Profiles

This page lists every profile defined in FHIR4Eyes Core, grouped by clinical domain. Each profile page contains the narrative description and design decisions for that profile, followed by its formal definition. For the clinical motivation behind each profile, see [Use Cases](usecases.md); for the patterns shared across profiles (laterality, panels, components), see [General Guidance](guidance.md); for terminology, see [Terminology](terminology.md). All example instances are listed on the [Examples](examples.md) page.

Within each domain, profiles are listed in the order they typically appear in a clinical encounter: the medical order, the diagnosis (when already known), the procedure or observation performed, any imaging study involved, the resulting diagnostic report, and finally the treatment plan.

### Foundation: patient, encounter and laterality

| | | | |
| :--- | :--- | :--- | :--- |
| [Ophthalmic Patient](StructureDefinition-ophthalmic-patient.md) | Patient | A patient receiving eye care | [Patient (international)](Patient-PatientExample.md),[Patient (Chile)](Patient-PacienteEjemplo.md) |
| [Ophthalmic Encounter](StructureDefinition-ophthalmic-encounter.md) | Encounter | An ambulatory ophthalmology consultation | [Encounter](Encounter-EncounterExample.md) |
| [Ocular Body Structure](StructureDefinition-ocular-body-structure.md) | BodyStructure | The eye or ocular location, referenced from`bodySite`to express laterality | [Right eye](BodyStructure-RightEyeStructureExample.md),[Left eye](BodyStructure-LeftEyeStructureExample.md),[Both eyes](BodyStructure-BothEyesStructureExample.md) |

### Clinical workflow: orders, diagnoses, procedures, imaging and reports

| | | | |
| :--- | :--- | :--- | :--- |
| [Ophthalmic Service Request](StructureDefinition-ophthalmic-service-request.md) | ServiceRequest | The order for an ophthalmic examination, local or referred | [OCT order](ServiceRequest-OCTServiceRequestExample.md),[Corneal tomography order](ServiceRequest-CornealTomographyServiceRequestExample.md) |
| [Ophthalmic Condition](StructureDefinition-ophthalmic-condition.md) | Condition | A diagnosis of an ophthalmic condition, optionally lateral | [Diabetic macular edema](Condition-DiabeticMacularEdemaConditionExample.md) |
| [Ophthalmic Procedure](StructureDefinition-ophthalmic-procedure.md) | Procedure | Any ophthalmic procedure, including sessions of a treatment scheme | [Cataract surgery](Procedure-CataractSurgeryProcedureExample.md),[Intravitreal injection](Procedure-IntravitrealInjectionProcedureExample.md),[OCT](Procedure-OCTProcedureExample.md) |
| [Ophthalmic Imaging Study](StructureDefinition-ophthalmic-imaging-study.md) | ImagingStudy | An ophthalmic imaging study (OCT, retinography, angiography…), always linked to its order | [OCT right eye](ImagingStudy-OCTStudyRightEyeExample.md),[OCT left eye](ImagingStudy-OCTStudyLeftEyeExample.md) |
| [Ophthalmic Diagnostic Report](StructureDefinition-ophthalmic-diagnostic-report.md) | DiagnosticReport | Findings and conclusions of an ophthalmic examination | [OCT report](DiagnosticReport-OCTDiagnosticReportExample.md),[OCT macula report](DiagnosticReport-OCTMaculaDiagnosticReportExample.md) |

### Visual acuity

| | | | |
| :--- | :--- | :--- | :--- |
| [Ophthalmic Visual Acuity](StructureDefinition-ophthalmic-visual-acuity.md) | Observation | Visual acuity with distance, correction, chart, scale and pinhole as components | [Uncorrected](Observation-VisualAcuityUncorrectedRightEyeExample.md),[Pinhole](Observation-VisualAcuityPinholeRightEyeExample.md),[Corrected](Observation-VisualAcuityCorrectedLeftEyeExample.md),[Counting fingers](Observation-VisualAcuityCountingFingersRightEyeExample.md),[Binocular](Observation-VisualAcuityBinocularExample.md) |

### Intraocular pressure and pachymetry

| | | | |
| :--- | :--- | :--- | :--- |
| [Intraocular Pressure](StructureDefinition-intraocular-pressure.md) | Observation | A single IOP reading in mmHg | [Right eye](Observation-IntraocularPressureRightEyeExample.md),[Left eye](Observation-IntraocularPressureLeftEyeExample.md) |
| [Pachymetry](StructureDefinition-pachymetry.md) | Observation | Central corneal thickness | [Right eye](Observation-PachymetryRightEyeExample.md),[Left eye](Observation-PachymetryLeftEyeExample.md) |
| [Corrected Intraocular Pressure](StructureDefinition-corrected-intraocular-pressure.md) | Observation | IOP corrected for corneal thickness, derived from an IOP and a pachymetry | [Right eye](Observation-CorrectedIntraocularPressureRightEyeExample.md),[Left eye](Observation-CorrectedIntraocularPressureLeftEyeExample.md) |
| [Tension Curve](StructureDefinition-tension-curve.md) | Observation (panel) | Several IOP readings across one day, grouped with`hasMember` | [Tension curve](Observation-TensionCurveRightEyeExample.md) |

### Optical coherence tomography (OCT)

| | | | |
| :--- | :--- | :--- | :--- |
| [Ophthalmic OCT RNFL](StructureDefinition-ophthalmic-oct-rnfl.md) | Observation | Optic nerve head and RNFL analysis | [Right eye](Observation-OCTRNFLRightEyeExample.md),[Left eye](Observation-OCTRNFLLeftEyeExample.md) |
| [Ophthalmic OCT Macula](StructureDefinition-ophthalmic-oct-macula.md) | Observation | Macular thickness on the ETDRS 9-sector grid | [Right eye](Observation-OCTMaculaRightEyeExample.md),[Left eye](Observation-OCTMaculaLeftEyeExample2.md) |

### Corneal tomography

| | | | |
| :--- | :--- | :--- | :--- |
| [Corneal Tomography Report](StructureDefinition-corneal-tomography-report.md) | OphthalmicDiagnosticReport | Groups the six corneal tomography analyses of one exam | [Report](DiagnosticReport-CornealTomographyReportRightEyeExample.md) |
| [CT - Anterior Surface](StructureDefinition-ct-anterior-surface.md) | Observation | Anterior corneal surface (keratometry, elevation, …) | [Example](Observation-CTAnteriorSurfaceRightEyeExample.md) |
| [CT - Posterior Surface](StructureDefinition-ct-posterior-surface.md) | Observation | Posterior corneal surface | [Example](Observation-CTPosteriorSurfaceRightEyeExample.md) |
| [CT - Pachymetry](StructureDefinition-ct-pachymetry.md) | Observation | Corneal thickness map | [Example](Observation-CTPachymetryRightEyeExample.md) |
| [CT - Anterior Chamber](StructureDefinition-ct-anterior-chamber.md) | Observation | Anterior chamber analysis | [Example](Observation-CTAnteriorChamberRightEyeExample.md) |
| [CT - Keratoconus Indices](StructureDefinition-ct-keratoconus-indices.md) | Observation | Keratoconus screening indices | [Example](Observation-CTKeratoconusIndicesRightEyeExample.md) |
| [CT - Densitometry](StructureDefinition-ct-densitometry.md) | Observation | Corneal transparency (light backscatter) | [Example](Observation-CTDensitometryRightEyeExample.md) |

### Other diagnostic tests

| | | | |
| :--- | :--- | :--- | :--- |
| [Ophthalmic Humphrey Visual Field](StructureDefinition-ophthalmic-humphrey-visual-field.md) | Observation | Automated static perimetry | [Right eye](Observation-HumphreyVFRightEyeExample.md) |
| [Ophthalmic Specular Microscopy](StructureDefinition-ophthalmic-specular-microscopy.md) | Observation | Corneal endothelial specular microscopy | [Right eye](Observation-SpecularMicroscopyRightEyeExample.md) |

### Ocular biometry, IOL calculation and implanted devices

| | | | |
| :--- | :--- | :--- | :--- |
| [Ophthalmic Ocular Biometry](StructureDefinition-ophthalmic-ocular-biometry.md) | Observation | Shared biometry measurements for IOL power calculation | [Right eye](Observation-BiometryRightEyeExample.md) |
| [IOL Formula Result](StructureDefinition-iol-formula-result.md) | Observation | The result of one IOL power formula, member of the biometry | [Barrett Universal II](Observation-IOLFormulaBarrettExample.md),[SRK/T](Observation-IOLFormulaSRKTExample.md) |
| [Ophthalmic Device](StructureDefinition-ophthalmic-device.md) | Device | An implanted ophthalmic device such as an intraocular lens | [Intraocular lens](Device-IntraocularLensExample.md) |

### Strabismus and binocular vision

[Strabismus Exam](StructureDefinition-strabismus-exam.md) is a panel that groups whichever sub-tests were performed. Direct sub-tests produce a single result; position-based sub-tests group one [Gaze Position Measurement](StructureDefinition-gaze-position-measurement.md) per gaze position tested.

| | | | |
| :--- | :--- | :--- | :--- |
| [Strabismus Exam](StructureDefinition-strabismus-exam.md) | Observation (panel) | Panel | [Strabismus exam](Observation-StrabismusExamExample.md) |
| [Cover Test](StructureDefinition-cover-test.md) | Observation | Direct | [Near](Observation-CoverTestExample.md),[Far](Observation-CoverTestFarExample.md) |
| [Ocular Motility](StructureDefinition-ocular-motility.md) | Observation | Direct | [Right eye](Observation-OcularMotilityRightEyeExample.md),[Left eye](Observation-OcularMotilityLeftEyeExample.md) |
| [Near Point of Convergence](StructureDefinition-near-point-of-convergence.md) | Observation | Direct | [Example](Observation-NearPointOfConvergenceExample.md) |
| [Convergence Assessment](StructureDefinition-convergence-assessment.md) | Observation | Direct | [Example](Observation-ConvergenceAssessmentExample.md) |
| [Stereopsis Test](StructureDefinition-stereopsis-test.md) | Observation | Direct | [Example](Observation-StereopsisTestExample.md) |
| [Prism Cover Test](StructureDefinition-prism-cover-test.md) | Observation (panel) | Position-based | [Prism cover test](Observation-PrismCoverTestExample.md) |
| [Krimsky Test](StructureDefinition-krimsky-test.md) | Observation (panel) | Position-based | [Krimsky test](Observation-KrimskyTestExample.md) |
| [Hirschberg Test](StructureDefinition-hirschberg-test.md) | Observation (panel) | Position-based | [Hirschberg test](Observation-HirschbergTestExample.md) |
| [Red Filter Light Test](StructureDefinition-red-filter-light-test.md) | Observation (panel) | Position-based | [Red filter test](Observation-RedFilterLightTestExample.md) |
| [Worth 4 Dot Test](StructureDefinition-worth-4-dot-test.md) | Observation (panel) | Position-based | [Worth 4 dot test](Observation-Worth4DotTestExample.md) |
| [Gaze Position Measurement](StructureDefinition-gaze-position-measurement.md) | Observation | Reusable per-position result | [Primary position](Observation-PrismCoverTestPrimaryPositionExample.md) |

### Treatment: care plans and medications

| | | | |
| :--- | :--- | :--- | :--- |
| [Ophthalmic Care Plan](StructureDefinition-ophthalmic-care-plan.md) | CarePlan | A long-term scheme of repeated sessions (intravitreal injections, vision therapy) | [Intravitreal injection plan](CarePlan-AvastinInjectionCarePlanExample.md) |
| [Ophthalmic Medication](StructureDefinition-ophthalmic-medication.md) | Medication | A medication used in ophthalmology | [Bevacizumab](Medication-AvastinMedicationExample.md) |
| [Ophthalmic Medication Administration](StructureDefinition-ophthalmic-medication-administration.md) | MedicationAdministration | Administration of a medication during an ophthalmic procedure | [Dose 1](MedicationAdministration-AvastinDose1AdministrationExample.md) |

### Profiles pending clinical validation

The following profiles remain lower priority and are deliberately left undesigned in this guide until they can be reviewed with an ophthalmologist colleague, rather than being modeled speculatively:

* Goal (intraocular pressure target)
* Biomicroscopy
* Gonioscopy
* Fundus examination
* And others, to be identified as this guide develops further

Not every possible ophthalmic examination needs a dedicated profile in this guide. A profile is only warranted where the examination has a structural need beyond what a simple `Observation` bound to the terminology already defined in [Terminology](terminology.md) can represent (for example, a panel, as with `TensionCurve`, or a multi-component exam, as with `StrabismusExam`). Examinations that fit the simple pattern do not require their own profile, and are already covered by the general terminology strategy.

