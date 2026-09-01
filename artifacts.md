# Artifacts Summary - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.3.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Behavior: Capability Statements 

The following artifacts define the specific capabilities that different types of systems are expected to have in order to comply with this implementation guide. Systems conforming to this implementation guide are expected to declare conformance to one or more of the following capability statements.

| | |
| :--- | :--- |
| [FHIR4Eyes Server Capability Statement](CapabilityStatement-FHIR4EyesCapabilityStatement.md) | Capability Statement for a FHIR4Eyes conformant server supporting ophthalmic clinical data exchange |

### Behavior: Search Parameters 

These define the properties by which a RESTful server can be searched. They can also be used for sorting and including related resources.

| | |
| :--- | :--- |
| [sp-condition-eye](SearchParameter-sp-condition-eye.md) | Search ophthalmic conditions/diagnoses by eye laterality, expressed via the bodySite extension referencing an OcularBodyStructure instance. |
| [sp-diagnosticreport-imaging-study](SearchParameter-sp-diagnosticreport-imaging-study.md) | Search ophthalmic diagnostic reports by the OphthalmicImagingStudy they interpret. |
| [sp-encounter-appointment](SearchParameter-sp-encounter-appointment.md) | Search ophthalmic encounters by the appointment that led to them. |
| [sp-imagingstudy-eye](SearchParameter-sp-imagingstudy-eye.md) | Search ophthalmic imaging studies by the laterality of an examined series, expressed via the bodySite extension on ImagingStudy.series referencing an OcularBodyStructure instance. |
| [sp-imagingstudy-modality](SearchParameter-sp-imagingstudy-modality.md) | Search ophthalmic imaging studies by the DICOM acquisition modality of their series (e.g. OPT, OP, OPV, OPM, OAM, AR). |
| [sp-observation-eye](SearchParameter-sp-observation-eye.md) | Search observations (e.g. OphthalmicVisualAcuity, IntraocularPressure, and other ophthalmic Observation profiles in this guide) by eye laterality, expressed via the bodySite extension referencing an OcularBodyStructure instance. |
| [sp-procedure-eye](SearchParameter-sp-procedure-eye.md) | Search ophthalmic procedures by eye laterality, expressed via the bodySite extension referencing an OcularBodyStructure instance. |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Convergence Assessment](StructureDefinition-convergence-assessment.md) | Represents a qualitative assessment of convergence ability (good, fair, insufficient, poor). |
| [Corneal Tomography - Anterior Chamber](StructureDefinition-ct-anterior-chamber.md) | Represents the anterior chamber analysis component of a corneal tomography exam, one of six Observations grouped under a single CornealTomographyReport. Component codes are left as open text for now, following this guide's terminology rigor: no confirmed SNOMED CT/LOINC codes were identified for these device-specific measurements (see Terminology). |
| [Corneal Tomography - Anterior Surface](StructureDefinition-ct-anterior-surface.md) | Represents the anterior corneal surface analysis component of a corneal tomography exam (e.g. Scheimpflug/Pentacam-style device), one of six Observations grouped under a single CornealTomographyReport. Sourced directly from the FHIR4Eyes Observations catalog (Corneal Topography: Anterior Surface section). Component codes are left as open text for now, following this guide's terminology rigor: most confirmed SNOMED CT/LOINC codes were not identified for these device-specific indices (see Terminology); a handful of components reference specific DICOM Sup 168 tags directly in their terminology, noted in the catalog. |
| [Corneal Tomography - Densitometry](StructureDefinition-ct-densitometry.md) | Represents the corneal densitometry (light backscatter) component of a corneal tomography exam, one of six Observations grouped under a single CornealTomographyReport. Sourced directly from the FHIR4Eyes Observations catalog (Corneal Topography: Densitometry section): three radial zones plus total, and a per-layer breakdown (anterior, central, posterior). Component codes are left as open text for now, following this guide's terminology rigor (see Terminology). |
| [Corneal Tomography - Keratoconus Indices](StructureDefinition-ct-keratoconus-indices.md) | Represents the keratoconus screening/classification indices component of a corneal tomography exam, one of six Observations grouped under a single CornealTomographyReport. Sourced directly from the FHIR4Eyes Observations catalog (Corneal Topography: Keratoconus Indices section). Component codes are left as open text for now, following this guide's terminology rigor (see Terminology). |
| [Corneal Tomography - Pachymetry](StructureDefinition-ct-pachymetry.md) | Represents the pachymetry (corneal thickness) component of a corneal tomography exam, one of six Observations grouped under a single CornealTomographyReport. Distinct from the standalone Pachymetry profile used for simple central corneal thickness measurements outside the tomography context (see Profiles); this profile captures the fuller thickness map data a tomography device produces. Sourced directly from the FHIR4Eyes Observations catalog (Corneal Topography: Pachymetry section). |
| [Corneal Tomography - Posterior Surface](StructureDefinition-ct-posterior-surface.md) | Represents the posterior corneal surface analysis component of a corneal tomography exam, one of six Observations grouped under a single CornealTomographyReport. Sourced directly from the FHIR4Eyes Observations catalog (Corneal Topography: Posterior Surface section). Component codes are left as open text for now, following this guide's terminology rigor (see Terminology). |
| [Corneal Tomography Report](StructureDefinition-corneal-tomography-report.md) | A specialization of OphthalmicDiagnosticReport for corneal tomography exams (e.g. Scheimpflug/Pentacam-style devices), grouping its six component analyses (CTAnteriorSurface, CTPosteriorSurface, CTPachymetry, CTAnteriorChamber, CTKeratoconusIndices, CTDensitometry) via result, following the same DiagnosticReport grouping pattern already used for OCT (see OphthalmicOCTRNFL and OphthalmicOCTMacula).Open question, not yet resolved: in practice, a tomography device may print these as separate reports or 'maps' (an anterior surface map, a posterior surface map, and so on) rather than a single integrated report. For now, this guide captures all six as results under a single combined report, since the current priority is representing the underlying data correctly rather than resolving the exact report/printout structure a given device produces. Whether this should instead be split into multiple report profiles is left open for future review. |
| [Corrected Intraocular Pressure](StructureDefinition-corrected-intraocular-pressure.md) | Represents an intraocular pressure reading corrected for corneal thickness (pachymetry). Recorded as a separate Observation from the plain IOP reading, referencing both the IOP and pachymetry measurements it was derived from via derivedFrom. |
| [Cover Test](StructureDefinition-cover-test.md) | Represents a cover test result, performed with or without correction, at near or far distance. Findings are recorded as open text/coded values for now (PC: orthophoria, PL: various movement patterns), since no confirmed SNOMED/LOINC binding has been verified for these specific findings yet. |
| [Gaze Position Measurement](StructureDefinition-gaze-position-measurement.md) | A reusable pattern for a single measurement or finding taken at one gaze position (e.g. primary position, right gaze, up-and-right gaze). Used by PrismCoverTest and KrimskyTest for quantitative prism diopter deviation, and by HirschbergTest, RedFilterLightTest, and Worth4DotTest for a qualitative finding at each position. Each test uses only the components relevant to it; all components are optional. Not intended to be used standalone; always referenced via hasMember from one of those panels. |
| [Hirschberg Test](StructureDefinition-hirschberg-test.md) | Represents a Hirschberg corneal light reflex test, used to estimate the angle of deviation when other tests aren't feasible (e.g. young children). Performed across multiple gaze positions; each position is recorded as a separate GazePositionMeasurement, referenced here via hasMember, using its qualitative finding component. |
| [IOL Formula Result](StructureDefinition-iol-formula-result.md) | Represents the result of a single IOL power calculation formula (e.g. Barrett Universal II, SRK/T, Holladay), including the recommended lens and expected refraction. Not intended to be used standalone: always referenced via hasMember from an OphthalmicOcularBiometry instance, since one biometry exam typically has its shared measurements calculated through several formulas, each with its own suggested lens. |
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
| [Ophthalmic Humphrey Visual Field](StructureDefinition-ophthalmic-humphrey-visual-field.md) | Represents an automated static perimetry (Humphrey field analyzer) exam. Sourced directly from the FHIR4Eyes Observations catalog (Automated Visual Field (Humphrey) section), DICOM-aligned per CIDs 4250-4257 where a CID reference is noted. |
| [Ophthalmic Imaging Study](StructureDefinition-ophthalmic-imaging-study.md) | An ophthalmic imaging study, such as OCT, retinography, or angiography. Always traceable back to the medical order that led to it via basedOn. Laterality is represented both through the native series.bodySite/series.laterality Coding fields (for standard DICOM/PACS compatibility) and through an additional extension referencing OcularBodyStructure (for structured cross-resource navigation, consistent with the rest of this guide). |
| [Ophthalmic Medication](StructureDefinition-ophthalmic-medication.md) | A medication used in ophthalmology, such as an anti-VEGF agent for intravitreal injection. |
| [Ophthalmic Medication Administration](StructureDefinition-ophthalmic-medication-administration.md) | Records the administration of a medication during an ophthalmic procedure, most notably an intravitreal injection. Always linked back to the specific procedure it was administered during, via partOf, consistent with FHIR's standard 'larger event of which this is a component' pattern. |
| [Ophthalmic OCT Macula](StructureDefinition-ophthalmic-oct-macula.md) | Represents an OCT macular thickness analysis using the ETDRS 9-sector grid, plus device-reported acquisition metadata (dilation, signal strength) and DICOM Sup 152 classification fields (thickness definition, deviation category, anatomic reference point). Sourced directly from the FHIR4Eyes Observations catalog (OCT Macula section), replacing an earlier, less complete version of this profile. |
| [Ophthalmic OCT RNFL](StructureDefinition-ophthalmic-oct-rnfl.md) | Represents an OCT optic nerve head (ONH) and retinal nerve fiber layer (RNFL) analysis: cup and disc geometry, cup-to-disc ratios, Disc Damage Likelihood Scale (DDLS), and the global TSNIT (Temporal-Superior-Nasal-Inferior-Temporal) RNFL profile statistics, alongside acquisition metadata and an overall normative classification. Sourced directly from the FHIR4Eyes Observations catalog (OCT Optic Disc/RNFL section), replacing an earlier, quadrant-thickness-only version of this profile. |
| [Ophthalmic Ocular Biometry](StructureDefinition-ophthalmic-ocular-biometry.md) | Represents an ocular biometry exam (optical or ultrasonic), used primarily for IOL power calculation ahead of cataract surgery. Sourced directly from the FHIR4Eyes Observations catalog (Ocular Biometry section), DICOM-aligned per CIDs 4230-4243 where a CID reference is noted. Holds the shared measurements common to the whole exam (axial length, keratometry, and so on) as components; each formula calculated from those shared measurements, with its own suggested IOL and expected outcome, is a separate IOLFormulaResult instance referenced via hasMember, since one biometry exam is typically run through several formulas. |
| [Ophthalmic Patient](StructureDefinition-ophthalmic-patient.md) | Represents a patient receiving eye care, extending the base Patient resource with identifier slices for the Chilean national identifier (RUT) and passport number, and requiring the core demographic elements (name, gender, birthDate) needed for clinical ophthalmic workflows such as scheduling, MWL/DICOM worklist generation, and reporting. |
| [Ophthalmic Procedure](StructureDefinition-ophthalmic-procedure.md) | Any ophthalmic procedure, from minor ambulatory surgeries to individual sessions within a longer treatment scheme, such as an intravitreal injection or a vision therapy session. When a procedure involves administering a medication (e.g. an intravitreal injection), the medication administration is recorded as a separate OphthalmicMedicationAdministration, linked back to this procedure via MedicationAdministration.partOf, not the other way around. |
| [Ophthalmic Service Request](StructureDefinition-ophthalmic-service-request.md) | A request for an ophthalmic examination and, where relevant, its interpretation or treatment. Covers three scenarios: an order fulfilled locally, an order referred from primary care to a hospital or reference center, and an order originating directly at a hospital. See the Use Cases and Profiles pages of this guide for the full clinical and design rationale. |
| [Ophthalmic Specular Microscopy](StructureDefinition-ophthalmic-specular-microscopy.md) | Represents a corneal endothelial specular microscopy exam. Sourced directly from the FHIR4Eyes Observations catalog (Specular Microscopy section). |
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
| [BiometryRightEyeExample](Observation-BiometryRightEyeExample.md) |  |
| [CTAnteriorChamberRightEyeExample](Observation-CTAnteriorChamberRightEyeExample.md) |  |
| [CTAnteriorSurfaceRightEyeExample](Observation-CTAnteriorSurfaceRightEyeExample.md) |  |
| [CTDensitometryRightEyeExample](Observation-CTDensitometryRightEyeExample.md) |  |
| [CTKeratoconusIndicesRightEyeExample](Observation-CTKeratoconusIndicesRightEyeExample.md) |  |
| [CTPachymetryRightEyeExample](Observation-CTPachymetryRightEyeExample.md) |  |
| [CTPosteriorSurfaceRightEyeExample](Observation-CTPosteriorSurfaceRightEyeExample.md) |  |
| [CataractSurgeryProcedureExample](Procedure-CataractSurgeryProcedureExample.md) |  |
| [ConvergenceAssessmentExample](Observation-ConvergenceAssessmentExample.md) |  |
| [CornealTomographyReportRightEyeExample](DiagnosticReport-CornealTomographyReportRightEyeExample.md) |  |
| [CornealTomographyServiceRequestExample](ServiceRequest-CornealTomographyServiceRequestExample.md) |  |
| [CorrectedIntraocularPressureLeftEyeExample](Observation-CorrectedIntraocularPressureLeftEyeExample.md) |  |
| [CorrectedIntraocularPressureRightEyeExample](Observation-CorrectedIntraocularPressureRightEyeExample.md) |  |
| [CoverTestExample](Observation-CoverTestExample.md) |  |
| [DiabeticMacularEdemaConditionExample](Condition-DiabeticMacularEdemaConditionExample.md) |  |
| [EncounterExample](Encounter-EncounterExample.md) |  |
| [HumphreyVFRightEyeExample](Observation-HumphreyVFRightEyeExample.md) |  |
| [IOLFormulaBarrettExample](Observation-IOLFormulaBarrettExample.md) |  |
| [IOLFormulaSRKTExample](Observation-IOLFormulaSRKTExample.md) |  |
| [IntraocularLensExample](Device-IntraocularLensExample.md) |  |
| [IntraocularPressureLeftEyeExample](Observation-IntraocularPressureLeftEyeExample.md) |  |
| [IntraocularPressureRightEyeExample](Observation-IntraocularPressureRightEyeExample.md) |  |
| [IntravitrealInjectionProcedureExample](Procedure-IntravitrealInjectionProcedureExample.md) |  |
| [LeftEyeStructureExample](BodyStructure-LeftEyeStructureExample.md) |  |
| [NearPointOfConvergenceExample](Observation-NearPointOfConvergenceExample.md) |  |
| [OCTDiagnosticReportExample](DiagnosticReport-OCTDiagnosticReportExample.md) |  |
| [OCTMaculaDiagnosticReportExample](DiagnosticReport-OCTMaculaDiagnosticReportExample.md) |  |
| [OCTMaculaLeftEyeExample](ImagingStudy-OCTMaculaLeftEyeExample.md) |  |
| [OCTMaculaLeftEyeExample2](Observation-OCTMaculaLeftEyeExample2.md) |  |
| [OCTMaculaRightEyeExample](Observation-OCTMaculaRightEyeExample.md) |  |
| [OCTMaculaServiceRequestExample](ServiceRequest-OCTMaculaServiceRequestExample.md) |  |
| [OCTOpticDiscLeftEyeExample](ImagingStudy-OCTOpticDiscLeftEyeExample.md) |  |
| [OCTOpticDiscServiceRequestExample](ServiceRequest-OCTOpticDiscServiceRequestExample.md) |  |
| [OCTProcedureExample](Procedure-OCTProcedureExample.md) |  |
| [OCTRNFLLeftEyeExample](Observation-OCTRNFLLeftEyeExample.md) |  |
| [OCTRNFLRightEyeExample](Observation-OCTRNFLRightEyeExample.md) |  |
| [OCTServiceRequestExample](ServiceRequest-OCTServiceRequestExample.md) |  |
| [OCTStudyLeftEyeExample](ImagingStudy-OCTStudyLeftEyeExample.md) |  |
| [OCTStudyRightEyeExample](ImagingStudy-OCTStudyRightEyeExample.md) |  |
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
| [SpecularMicroscopyRightEyeExample](Observation-SpecularMicroscopyRightEyeExample.md) |  |
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

