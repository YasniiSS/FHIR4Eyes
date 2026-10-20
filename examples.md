# Examples - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* **Examples**

## Examples

The following examples are published with this guide. They are grouped by clinical scenario, so that the instances that reference each other (order, imaging study, observations, report) appear together. All examples are also available as a downloadable zip file (see [Downloads](downloads.md#examples)).

Examples are **non-normative**: they illustrate how the profiles are intended to be used, but the formal requirements are in the profiles themselves (see [Profiles](profiles.md)). The data shown is fictitious.

### Shared actors

Instances referenced by most of the other examples.

| | | |
| :--- | :--- | :--- |
| [Patient (international identifier)](Patient-PatientExample.md) | [Ophthalmic Patient](StructureDefinition-ophthalmic-patient.md) | Patient identified with a passport number |
| [Patient (Chilean RUT identifier)](Patient-PacienteEjemplo.md) | [Ophthalmic Patient](StructureDefinition-ophthalmic-patient.md) | Patient identified with a Chilean RUT |
| [Ophthalmologist](Practitioner-OphthalmologistExample.md) | Practitioner (base) | Requester and performer in the examples |
| [Ambulatory ophthalmology encounter](Encounter-EncounterExample.md) | [Ophthalmic Encounter](StructureDefinition-ophthalmic-encounter.md) | An ambulatory consultation |
| [Right eye](BodyStructure-RightEyeStructureExample.md),[Left eye](BodyStructure-LeftEyeStructureExample.md),[Both eyes](BodyStructure-BothEyesStructureExample.md) | [Ocular Body Structure](StructureDefinition-ocular-body-structure.md) | Laterality targets referenced from`bodySite` |

### Visual acuity

The pinhole measurement references the uncorrected measurement it followed via `derivedFrom`.

| | | |
| :--- | :--- | :--- |
| [Uncorrected, right eye](Observation-VisualAcuityUncorrectedRightEyeExample.md) | [Ophthalmic Visual Acuity](StructureDefinition-ophthalmic-visual-acuity.md) | Base measurement |
| [Pinhole, right eye](Observation-VisualAcuityPinholeRightEyeExample.md) | [Ophthalmic Visual Acuity](StructureDefinition-ophthalmic-visual-acuity.md) | `derivedFrom`the uncorrected measurement |
| [Corrected, left eye](Observation-VisualAcuityCorrectedLeftEyeExample.md) | [Ophthalmic Visual Acuity](StructureDefinition-ophthalmic-visual-acuity.md) | Corrected distance acuity |
| [Counting fingers, right eye](Observation-VisualAcuityCountingFingersRightEyeExample.md) | [Ophthalmic Visual Acuity](StructureDefinition-ophthalmic-visual-acuity.md) | Low vision qualitative value |
| [Binocular](Observation-VisualAcuityBinocularExample.md) | [Ophthalmic Visual Acuity](StructureDefinition-ophthalmic-visual-acuity.md) | Both eyes together |

### Intraocular pressure, pachymetry and tension curve

`CorrectedIntraocularPressure` references the IOP and pachymetry it was calculated from; `TensionCurve` groups the day's readings with `hasMember`.

| | | |
| :--- | :--- | :--- |
| [IOP: right eye](Observation-IntraocularPressureRightEyeExample.md),[left eye](Observation-IntraocularPressureLeftEyeExample.md) | [Intraocular Pressure](StructureDefinition-intraocular-pressure.md) | Single readings |
| [Pachymetry: right eye](Observation-PachymetryRightEyeExample.md),[left eye](Observation-PachymetryLeftEyeExample.md) | [Pachymetry](StructureDefinition-pachymetry.md) | Central corneal thickness |
| [Corrected IOP: right eye](Observation-CorrectedIntraocularPressureRightEyeExample.md),[left eye](Observation-CorrectedIntraocularPressureLeftEyeExample.md) | [Corrected Intraocular Pressure](StructureDefinition-corrected-intraocular-pressure.md) | `derivedFrom`IOP + pachymetry |
| [Tension curve panel, right eye](Observation-TensionCurveRightEyeExample.md) | [Tension Curve](StructureDefinition-tension-curve.md) | Panel |
| [08:00](Observation-TensionCurveRightEye0800Example.md),[12:00](Observation-TensionCurveRightEye1200Example.md),[14:00](Observation-TensionCurveRightEye1400Example.md) | [Intraocular Pressure](StructureDefinition-intraocular-pressure.md) | Members of the tension curve |

### OCT: order, imaging study, analyses and report

Full chain for a bilateral OCT (RNFL + macula): order → procedure → imaging studies → observations → report.

| | | |
| :--- | :--- | :--- |
| [OCT order](ServiceRequest-OCTServiceRequestExample.md) | [Ophthalmic Service Request](StructureDefinition-ophthalmic-service-request.md) | The medical order |
| [OCT procedure](Procedure-OCTProcedureExample.md) | [Ophthalmic Procedure](StructureDefinition-ophthalmic-procedure.md) | The acquisition |
| [Imaging study: right eye](ImagingStudy-OCTStudyRightEyeExample.md),[left eye](ImagingStudy-OCTStudyLeftEyeExample.md) | [Ophthalmic Imaging Study](StructureDefinition-ophthalmic-imaging-study.md) | `basedOn`the order |
| [OCT RNFL: right eye](Observation-OCTRNFLRightEyeExample.md),[left eye](Observation-OCTRNFLLeftEyeExample.md) | [Ophthalmic OCT RNFL](StructureDefinition-ophthalmic-oct-rnfl.md) | RNFL analysis |
| [OCT macula: right eye](Observation-OCTMaculaRightEyeExample.md),[left eye](Observation-OCTMaculaLeftEyeExample2.md) | [Ophthalmic OCT Macula](StructureDefinition-ophthalmic-oct-macula.md) | Macular thickness |
| [OCT report](DiagnosticReport-OCTDiagnosticReportExample.md) | [Ophthalmic Diagnostic Report](StructureDefinition-ophthalmic-diagnostic-report.md) | Groups the results |

Additional single-exam OCT examples:

| | | |
| :--- | :--- | :--- |
| [OCT macula order](ServiceRequest-OCTMaculaServiceRequestExample.md) | [Ophthalmic Service Request](StructureDefinition-ophthalmic-service-request.md) | Order |
| [OCT macula imaging study: left eye](ImagingStudy-OCTMaculaLeftEyeExample.md) | [Ophthalmic Imaging Study](StructureDefinition-ophthalmic-imaging-study.md) | Imaging study |
| [OCT macula report](DiagnosticReport-OCTMaculaDiagnosticReportExample.md) | [Ophthalmic Diagnostic Report](StructureDefinition-ophthalmic-diagnostic-report.md) | Report |
| [OCT optic disc order](ServiceRequest-OCTOpticDiscServiceRequestExample.md) | [Ophthalmic Service Request](StructureDefinition-ophthalmic-service-request.md) | Order |
| [OCT optic disc imaging study: left eye](ImagingStudy-OCTOpticDiscLeftEyeExample.md) | [Ophthalmic Imaging Study](StructureDefinition-ophthalmic-imaging-study.md) | Imaging study |

### Corneal tomography

One report grouping the six analyses of a single exam of the right eye.

| | | |
| :--- | :--- | :--- |
| [Corneal tomography order](ServiceRequest-CornealTomographyServiceRequestExample.md) | [Ophthalmic Service Request](StructureDefinition-ophthalmic-service-request.md) | The medical order |
| [Corneal tomography report](DiagnosticReport-CornealTomographyReportRightEyeExample.md) | [Corneal Tomography Report](StructureDefinition-corneal-tomography-report.md) | Groups the six analyses |
| [Anterior surface](Observation-CTAnteriorSurfaceRightEyeExample.md) | [CT - Anterior Surface](StructureDefinition-ct-anterior-surface.md) |   |
| [Posterior surface](Observation-CTPosteriorSurfaceRightEyeExample.md) | [CT - Posterior Surface](StructureDefinition-ct-posterior-surface.md) |   |
| [Pachymetry](Observation-CTPachymetryRightEyeExample.md) | [CT - Pachymetry](StructureDefinition-ct-pachymetry.md) |   |
| [Anterior chamber](Observation-CTAnteriorChamberRightEyeExample.md) | [CT - Anterior Chamber](StructureDefinition-ct-anterior-chamber.md) |   |
| [Keratoconus indices](Observation-CTKeratoconusIndicesRightEyeExample.md) | [CT - Keratoconus Indices](StructureDefinition-ct-keratoconus-indices.md) |   |
| [Densitometry](Observation-CTDensitometryRightEyeExample.md) | [CT - Densitometry](StructureDefinition-ct-densitometry.md) |   |

### Other diagnostic tests

| | | |
| :--- | :--- | :--- |
| [Humphrey visual field: right eye](Observation-HumphreyVFRightEyeExample.md) | [Ophthalmic Humphrey Visual Field](StructureDefinition-ophthalmic-humphrey-visual-field.md) | Automated static perimetry |
| [Specular microscopy: right eye](Observation-SpecularMicroscopyRightEyeExample.md) | [Ophthalmic Specular Microscopy](StructureDefinition-ophthalmic-specular-microscopy.md) | Corneal endothelium |

### Biometry and cataract surgery with IOL implantation

The biometry groups one `IOLFormulaResult` per formula via `hasMember`; the surgery references the implanted lens via `focalDevice`.

| | | |
| :--- | :--- | :--- |
| [Ocular biometry: right eye](Observation-BiometryRightEyeExample.md) | [Ophthalmic Ocular Biometry](StructureDefinition-ophthalmic-ocular-biometry.md) | Shared measurements |
| [IOL formula: Barrett Universal II](Observation-IOLFormulaBarrettExample.md),[SRK/T](Observation-IOLFormulaSRKTExample.md) | [IOL Formula Result](StructureDefinition-iol-formula-result.md) | Members of the biometry |
| [Cataract surgery](Procedure-CataractSurgeryProcedureExample.md) | [Ophthalmic Procedure](StructureDefinition-ophthalmic-procedure.md) | `focalDevice`→ IOL |
| [Intraocular lens](Device-IntraocularLensExample.md) | [Ophthalmic Device](StructureDefinition-ophthalmic-device.md) | The implanted IOL |

### Strabismus exam

| | | |
| :--- | :--- | :--- |
| [Strabismus exam panel](Observation-StrabismusExamExample.md) | [Strabismus Exam](StructureDefinition-strabismus-exam.md) | Groups the sub-tests performed |
| [Cover test: near](Observation-CoverTestExample.md),[far](Observation-CoverTestFarExample.md) | [Cover Test](StructureDefinition-cover-test.md) | Direct sub-test, one per testing distance |
| [Ocular motility: right eye](Observation-OcularMotilityRightEyeExample.md),[left eye](Observation-OcularMotilityLeftEyeExample.md) | [Ocular Motility](StructureDefinition-ocular-motility.md) | Direct sub-test |
| [Near point of convergence](Observation-NearPointOfConvergenceExample.md) | [Near Point of Convergence](StructureDefinition-near-point-of-convergence.md) | Direct sub-test |
| [Convergence assessment](Observation-ConvergenceAssessmentExample.md) | [Convergence Assessment](StructureDefinition-convergence-assessment.md) | Direct sub-test |
| [Stereopsis test](Observation-StereopsisTestExample.md) | [Stereopsis Test](StructureDefinition-stereopsis-test.md) | Direct sub-test |
| [Prism cover test panel](Observation-PrismCoverTestExample.md) | [Prism Cover Test](StructureDefinition-prism-cover-test.md) | Position-based sub-test |
| [Primary position](Observation-PrismCoverTestPrimaryPositionExample.md) | [Gaze Position Measurement](StructureDefinition-gaze-position-measurement.md) | Member of the prism cover test |
| [Krimsky test panel](Observation-KrimskyTestExample.md)(5 gaze positions × FOD/FOI, e.g.[primary FOD](Observation-KrimskyPrimaryFODExample.md)) | [Krimsky Test](StructureDefinition-krimsky-test.md) | Position-based sub-test, far: 30 PD FOD / 25 PD FOI exo |
| [Hirschberg test panel](Observation-HirschbergTestExample.md)(5 gaze positions × FOD/FOI, e.g.[primary FOD](Observation-HirschbergPrimaryFODExample.md)) | [Hirschberg Test](StructureDefinition-hirschberg-test.md) | Position-based sub-test: about 15° exo FODI |
| [Red filter light test panel](Observation-RedFilterLightTestExample.md)([primary position](Observation-RedFilterPrimaryPositionExample.md)) | [Red Filter Light Test](StructureDefinition-red-filter-light-test.md) | Position-based sub-test, near |
| [Worth 4 dot test panel](Observation-Worth4DotTestExample.md)([primary position](Observation-Worth4DotPrimaryPositionExample.md)) | [Worth 4 Dot Test](StructureDefinition-worth-4-dot-test.md) | Position-based sub-test, far |

### Intravitreal injection treatment

Diagnosis → care plan → each injection session as a procedure (`basedOn` the plan) with its medication administration.

| | | |
| :--- | :--- | :--- |
| [Diabetic macular edema diagnosis](Condition-DiabeticMacularEdemaConditionExample.md) | [Ophthalmic Condition](StructureDefinition-ophthalmic-condition.md) | The diagnosis |
| [Intravitreal injection care plan](CarePlan-AvastinInjectionCarePlanExample.md) | [Ophthalmic Care Plan](StructureDefinition-ophthalmic-care-plan.md) | The treatment scheme |
| [Intravitreal injection procedure](Procedure-IntravitrealInjectionProcedureExample.md) | [Ophthalmic Procedure](StructureDefinition-ophthalmic-procedure.md) | One session,`basedOn`the plan |
| [Bevacizumab (Avastin)](Medication-AvastinMedicationExample.md) | [Ophthalmic Medication](StructureDefinition-ophthalmic-medication.md) | The medication |
| [Bevacizumab administration: dose 1](MedicationAdministration-AvastinDose1AdministrationExample.md) | [Ophthalmic Medication Administration](StructureDefinition-ophthalmic-medication-administration.md) | The administered dose |

