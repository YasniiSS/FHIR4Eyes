# Artifacts Summary - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.1.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Convergence Assessment](StructureDefinition-convergence-assessment.md) | Represents a qualitative assessment of convergence ability (good, fair, insufficient, poor). |
| [Corrected Intraocular Pressure](StructureDefinition-corrected-intraocular-pressure.md) | Represents an intraocular pressure reading corrected for corneal thickness (pachymetry). Recorded as a separate Observation from the plain IOP reading, referencing both the IOP and pachymetry measurements it was derived from via derivedFrom. |
| [Cover Test](StructureDefinition-cover-test.md) | Represents a cover test result, performed with or without correction, at near or far distance. Findings are recorded as open text/coded values for now (PC: orthophoria, PL: various movement patterns), since no confirmed SNOMED/LOINC binding has been verified for these specific findings yet. |
| [Gaze Position Measurement](StructureDefinition-gaze-position-measurement.md) | A reusable pattern for a single measurement or finding taken at one gaze position (e.g. primary position, right gaze, up-and-right gaze). Used by PrismCoverTest and KrimskyTest for quantitative prism diopter deviation, and by HirschbergTest, RedFilterLightTest, and Worth4DotTest for a qualitative finding at each position. Each test uses only the components relevant to it; all components are optional. Not intended to be used standalone; always referenced via hasMember from one of those panels. |
| [Hirschberg Test](StructureDefinition-hirschberg-test.md) | Represents a Hirschberg corneal light reflex test, used to estimate the angle of deviation when other tests aren't feasible (e.g. young children). Performed across multiple gaze positions; each position is recorded as a separate GazePositionMeasurement, referenced here via hasMember, using its qualitative finding component. |
| [Intraocular Pressure](StructureDefinition-intraocular-pressure.md) | Represents a single intraocular pressure (IOP) reading, in mmHg. Code is fixed to SNOMED CT 41633001 (Intraocular pressure). |
| [Krimsky Test](StructureDefinition-krimsky-test.md) | Represents a Krimsky test (corneal light reflex test with prism), measuring ocular deviation in prism diopters across multiple gaze positions. Follows the same structural pattern as PrismCoverTest: each gaze position is a separate GazePositionMeasurement, referenced via hasMember. |
| [Near Point of Convergence](StructureDefinition-near-point-of-convergence.md) | Represents the near point of convergence (PPC), recorded either as a numeric distance in centimetres, or, when a precise measurement isn't obtained, as a qualitative finding (e.g. 'nasal', 'near nasal'). |
| [Ocular Body Structure](StructureDefinition-ocular-body-structure.md) | Represents an anatomical ocular location, used throughout this guide to express laterality (right eye, left eye, or both eyes) for observations, conditions, procedures, and imaging studies. Follows the same structural pattern as the HL7 Eye Care IG's equivalent profile ('Ocular anatomical location' / body-structure-eye): a `location` element identifying the anatomical structure, and a `locationQualifier` element carrying laterality and other qualifiers. The HL7 Eye Care IG defines its own dedicated value sets for these two elements (`ValueSet/body-site-eye` for location, `ValueSet/qualifiers` for locationQualifier), which are the intended reference terminology for this profile. However, because the HL7 Eye Care IG is not published as a usable FHIR package, those value sets cannot be formally imported here; this profile binds to SNOMED CT directly instead (see the Terminology page of this guide for the general rationale). |
| [Ocular Motility](StructureDefinition-ocular-motility.md) | Represents the assessment of extraocular muscle function (hypofunction or hyperfunction) for a specific eye and muscle. Recorded per eye, since motility findings can differ between the two eyes independently. |
| [Ophthalmic Care Plan](StructureDefinition-ophthalmic-care-plan.md) | A long-term treatment scheme made up of repeated sessions or administrations, rather than a single event. Covers two schemes identified in this guide's Use Cases: intravitreal injection treatment, and vision therapy or orthoptic treatment. Not every planned session is necessarily scheduled at once: some sessions remain planned but unscheduled within the CarePlan (via activity), while each session that is actually performed is recorded as a separate OphthalmicProcedure, linked back to this CarePlan via Procedure.basedOn. |
| [Ophthalmic Condition](StructureDefinition-ophthalmic-condition.md) | The formal, past or present clinical diagnosis of a specific ophthalmic condition. Follows the same minimalist technical pattern as the HL7 Eye Care IG's equivalent profile (condition-base): only code, bodySite, and subject carry real constraints; everything else in the base Condition resource is left as-is. See the Profiles page of this guide for the full design rationale, including a note on where FHIR4Eyes departs from the Eye Care IG's own narrative documentation. |
| [Ophthalmic Device](StructureDefinition-ophthalmic-device.md) | An implanted ophthalmic device instance, such as an intraocular lens (IOL), affixed to a specific patient. Following the same pattern as US Core's Implantable Device Profile, this represents the specific unit already implanted, not a generic catalog item; patient is therefore required. Procedure.focalDevice (in OphthalmicProcedure) also references this Device from the implanting procedure, consistent with US Core's own guidance that a procedure involving an implantable device should reference it via focalDevice. A generic device catalog (DeviceDefinition) is out of scope for this guide for now. See the Profiles page of this guide for the full design rationale, including a note on other implantable devices (such as glaucoma drainage devices) that may also fit this profile. |
| [Ophthalmic Diagnostic Report](StructureDefinition-ophthalmic-diagnostic-report.md) | Represents the findings, diagnosis, and treatment plan reached after reviewing an imaging study or structured examination dataset. Unlike a radiology report, this is not limited to describing imaging findings: the same clinical act typically also reaches a diagnosis and defines a treatment plan, recorded as separate Condition and CarePlan resources referencing this report. |
| [Ophthalmic Encounter](StructureDefinition-ophthalmic-encounter.md) | An ambulatory ophthalmology consultation encounter. Parented on the generic FHIR Encounter, not the Chilean core Encounter profile (EncounterCL); the Chilean dependency belongs in the FHIR4Eyes CL extension, not this Core guide. |
| [Ophthalmic Imaging Study](StructureDefinition-ophthalmic-imaging-study.md) | An ophthalmic imaging study, such as OCT, retinography, or angiography. Always traceable back to the medical order that led to it via basedOn. Laterality is represented both through the native series.bodySite/series.laterality Coding fields (for standard DICOM/PACS compatibility) and through an additional extension referencing OcularBodyStructure (for structured cross-resource navigation, consistent with the rest of this guide). |
| [Ophthalmic Medication](StructureDefinition-ophthalmic-medication.md) | A medication used in ophthalmology, such as an anti-VEGF agent for intravitreal injection. |
| [Ophthalmic Medication Administration](StructureDefinition-ophthalmic-medication-administration.md) | Records the administration of a medication during an ophthalmic procedure, most notably an intravitreal injection. Always linked back to the specific procedure it was administered during, via partOf, consistent with FHIR's standard 'larger event of which this is a component' pattern. |
| [Ophthalmic Procedure](StructureDefinition-ophthalmic-procedure.md) | Any ophthalmic procedure, from minor ambulatory surgeries to individual sessions within a longer treatment scheme, such as an intravitreal injection or a vision therapy session. When a procedure involves administering a medication (e.g. an intravitreal injection), the medication administration is recorded as a separate OphthalmicMedicationAdministration, linked back to this procedure via MedicationAdministration.partOf, not the other way around. |
| [Ophthalmic Service Request](StructureDefinition-ophthalmic-service-request.md) | A request for an ophthalmic examination and, where relevant, its interpretation or treatment. Covers three scenarios: an order fulfilled locally, an order referred from primary care to a hospital or reference center, and an order originating directly at a hospital. See the Use Cases and Profiles pages of this guide for the full clinical and design rationale. |
| [Ophthalmic Visual Acuity](StructureDefinition-ophthalmic-visual-acuity.md) | Represents a visual acuity measurement, modeled as discrete, independently combinable components (distance, correction status, chart/optotype, scale, pinhole) rather than as a single pre-coordinated code that bundles all of these together. This follows a more granular pattern than the HL7 Eye Care IG's published (2021) approach, aligned with a newer proposal discussed within SNOMED International's Eye Care Clinical Reference Group (2025), which favors flexible, independently recordable components over pre-coordinated codes. See Terminology for the underlying terminology strategy, including the LowVisionAssessment value set for vision below what any chart can measure. |
| [Pachymetry](StructureDefinition-pachymetry.md) | Represents a corneal pachymetry measurement (corneal thickness), typically in micrometres. Used on its own, and also referenced by CorrectedIntraocularPressure when correcting an IOP reading for corneal thickness. |
| [Prism Cover Test](StructureDefinition-prism-cover-test.md) | Represents a prism cover test, measuring ocular deviation in prism diopters across multiple gaze positions. Each gaze position is recorded as a separate GazePositionMeasurement, referenced here via hasMember. Distance and correction status are recorded as components on this panel, following the same granular pattern used for OphthalmicVisualAcuity, rather than being folded into a single pre-coordinated code. |
| [Red Filter Light Test](StructureDefinition-red-filter-light-test.md) | Represents a red filter plus light test, assessing fusion, suppression, or diplopia. Performed across multiple gaze positions; each position is recorded as a separate GazePositionMeasurement, referenced here via hasMember, using its qualitative finding component. Distance and correction status are recorded as components on this panel. |
| [Stereopsis Test](StructureDefinition-stereopsis-test.md) | Represents a stereoacuity test result (e.g. Titmus, Randot). The specific test used is recorded as a component, since several different stereopsis tests exist in practice and the test type affects how the result should be interpreted. |
| [Strabismus Exam](StructureDefinition-strabismus-exam.md) | Represents a strabismus examination as a panel grouping together whichever sub-tests were actually performed for this patient (for example, cover test, motility, near point of convergence, stereopsis, prism cover test, Krimsky test). Not every possible sub-test is performed for every patient; this profile does not enforce a fixed checklist. Each sub-test is recorded as its own Observation, referenced here via hasMember. |
| [Tension Curve](StructureDefinition-tension-curve.md) | Represents an ambulatory tension curve: several intraocular pressure readings taken across a single day, grouped together as a single clinical concept rather than recorded as unrelated, disconnected observations. This profile was already defined in an earlier version of this guide's design work and is carried forward here. |
| [Worth 4 Dot Test](StructureDefinition-worth-4-dot-test.md) | Represents a Worth 4 dot test, assessing fusion, suppression, or diplopia. Performed across multiple gaze positions; each position is recorded as a separate GazePositionMeasurement, referenced here via hasMember, using its qualitative finding component. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Low Vision Assessment Value Set](ValueSet-low-vision-assessment-vs.md) | Qualitative visual acuity for patients whose vision falls below what any chart can measure (ICD-11 blindness categories 4 through 6). All five codes are confirmed SNOMED CT concepts, verified directly against the SNOMED CT browser. See Terminology for the full clinical and terminology rationale. The counting-fingers concept below uses the generic code by default; the more specific distance-based codes may be used instead when that detail is known. |
| [Ophthalmic Care Plan Category Value Set](ValueSet-ophthalmic-care-plan-category-vs.md) | The type of ophthalmic treatment scheme. Proposed FHIR4Eyes-only codes, open to revision if a suitable external code is identified later. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [FHIR4Eyes Care Plan Category Code System](CodeSystem-fhir4eyes-care-plan-category-cs.md) | Proposed FHIR4Eyes-only codes for care plan category, not yet bound to an external terminology. See the Profiles page of this guide for the design rationale. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Avastin injection scheme - left eye](CarePlan-AvastinInjectionCarePlanExample.md) | 3 monthly intravitreal Avastin injections for diabetic macular edema |
| [AvastinDose1AdministrationExample](MedicationAdministration-AvastinDose1AdministrationExample.md) |  |
| [AvastinMedicationExample](Medication-AvastinMedicationExample.md) |  |
| [CataractSurgeryProcedureExample](Procedure-CataractSurgeryProcedureExample.md) |  |
| [ConvergenceAssessmentExample](Observation-ConvergenceAssessmentExample.md) |  |
| [CorrectedIntraocularPressureLeftEyeExample](Observation-CorrectedIntraocularPressureLeftEyeExample.md) |  |
| [CorrectedIntraocularPressureRightEyeExample](Observation-CorrectedIntraocularPressureRightEyeExample.md) |  |
| [CoverTestExample](Observation-CoverTestExample.md) |  |
| [DiabeticMacularEdemaConditionExample](Condition-DiabeticMacularEdemaConditionExample.md) |  |
| [EncounterExample](Encounter-EncounterExample.md) |  |
| [IntraocularLensExample](Device-IntraocularLensExample.md) |  |
| [IntraocularPressureLeftEyeExample](Observation-IntraocularPressureLeftEyeExample.md) |  |
| [IntraocularPressureRightEyeExample](Observation-IntraocularPressureRightEyeExample.md) |  |
| [IntravitrealInjectionProcedureExample](Procedure-IntravitrealInjectionProcedureExample.md) |  |
| [LeftEyeStructureExample](BodyStructure-LeftEyeStructureExample.md) |  |
| [NearPointOfConvergenceExample](Observation-NearPointOfConvergenceExample.md) |  |
| [OCTMaculaDiagnosticReportExample](DiagnosticReport-OCTMaculaDiagnosticReportExample.md) |  |
| [OCTMaculaLeftEyeExample](ImagingStudy-OCTMaculaLeftEyeExample.md) |  |
| [OCTMaculaServiceRequestExample](ServiceRequest-OCTMaculaServiceRequestExample.md) |  |
| [OCTOpticDiscLeftEyeExample](ImagingStudy-OCTOpticDiscLeftEyeExample.md) |  |
| [OCTOpticDiscServiceRequestExample](ServiceRequest-OCTOpticDiscServiceRequestExample.md) |  |
| [OCTProcedureExample](Procedure-OCTProcedureExample.md) |  |
| [OcularMotilityLeftEyeExample](Observation-OcularMotilityLeftEyeExample.md) |  |
| [OcularMotilityRightEyeExample](Observation-OcularMotilityRightEyeExample.md) |  |
| [OphthalmologistExample](Practitioner-OphthalmologistExample.md) |  |
| [PachymetryLeftEyeExample](Observation-PachymetryLeftEyeExample.md) |  |
| [PachymetryRightEyeExample](Observation-PachymetryRightEyeExample.md) |  |
| [PacienteEjemplo](Patient-PacienteEjemplo.md) |  |
| [PatientExample](Patient-PatientExample.md) |  |
| [PrismCoverTestExample](Observation-PrismCoverTestExample.md) |  |
| [PrismCoverTestPrimaryPositionExample](Observation-PrismCoverTestPrimaryPositionExample.md) |  |
| [RightEyeStructureExample](BodyStructure-RightEyeStructureExample.md) |  |
| [StereopsisTestExample](Observation-StereopsisTestExample.md) |  |
| [StrabismusExamExample](Observation-StrabismusExamExample.md) |  |
| [TensionCurveRightEye0800Example](Observation-TensionCurveRightEye0800Example.md) |  |
| [TensionCurveRightEye1200Example](Observation-TensionCurveRightEye1200Example.md) |  |
| [TensionCurveRightEye1400Example](Observation-TensionCurveRightEye1400Example.md) |  |
| [TensionCurveRightEyeExample](Observation-TensionCurveRightEyeExample.md) |  |
| [VisualAcuityBinocularExample](Observation-VisualAcuityBinocularExample.md) |  |
| [VisualAcuityCorrectedLeftEyeExample](Observation-VisualAcuityCorrectedLeftEyeExample.md) |  |
| [VisualAcuityCountingFingersRightEyeExample](Observation-VisualAcuityCountingFingersRightEyeExample.md) |  |
| [VisualAcuityPinholeRightEyeExample](Observation-VisualAcuityPinholeRightEyeExample.md) |  |
| [VisualAcuityUncorrectedRightEyeExample](Observation-VisualAcuityUncorrectedRightEyeExample.md) |  |

