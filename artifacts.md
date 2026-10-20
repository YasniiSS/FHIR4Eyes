# Artifacts Summary - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Foundation: patient, encounter and laterality 

Base profiles reused throughout the guide: the patient, the ophthalmology encounter, and the ocular BodyStructure used to express laterality.

| | |
| :--- | :--- |
| [Ophthalmic Patient](StructureDefinition-ophthalmic-patient.md) | Represents a patient receiving eye care, extending the base Patient resource with identifier slices for the Chilean national identifier (RUT) and passport number, and requiring the core demographic elements (name, gender, birthDate) needed for clinical ophthalmic workflows such as scheduling, MWL/DICOM worklist generation, and reporting. |
| [Ophthalmic Encounter](StructureDefinition-ophthalmic-encounter.md) | An ambulatory ophthalmology consultation encounter. Parented on the generic FHIR Encounter, not the Chilean core Encounter profile (EncounterCL); the Chilean dependency belongs in the FHIR4Eyes CL extension, not this Core guide. |
| [Ocular Body Structure](StructureDefinition-ocular-body-structure.md) | Represents an anatomical ocular location, used throughout this guide to express laterality (right eye, left eye, or both eyes) for observations, conditions, procedures, and imaging studies. Follows the same structural pattern as the HL7 Eye Care IG's equivalent profile ('Ocular anatomical location' / body-structure-eye): a `location` element identifying the anatomical structure, and a `locationQualifier` element carrying laterality and other qualifiers. The HL7 Eye Care IG defines its own dedicated value sets for these two elements (`ValueSet/body-site-eye` for location, `ValueSet/qualifiers` for locationQualifier), which are the intended reference terminology for this profile. However, because the HL7 Eye Care IG is not published as a usable FHIR package, those value sets cannot be formally imported here; this profile binds to SNOMED CT directly instead (see the Terminology page of this guide for the general rationale). |

### Clinical workflow: orders, diagnoses, procedures, imaging and reports 

Profiles that chain an ophthalmic episode together: the order, the diagnosis, the procedure, the imaging study and the resulting diagnostic report.

| | |
| :--- | :--- |
| [Ophthalmic Service Request](StructureDefinition-ophthalmic-service-request.md) | A request for an ophthalmic examination and, where relevant, its interpretation or treatment. Covers three scenarios: an order fulfilled locally, an order referred from primary care to a hospital or reference center, and an order originating directly at a hospital. See the Use Cases and Profiles pages of this guide for the full clinical and design rationale. |
| [Ophthalmic Condition](StructureDefinition-ophthalmic-condition.md) | The formal, past or present clinical diagnosis of a specific ophthalmic condition. Follows the same minimalist technical pattern as the HL7 Eye Care IG's equivalent profile (condition-base): only code, bodySite, and subject carry real constraints; everything else in the base Condition resource is left as-is. See the Profiles page of this guide for the full design rationale, including a note on where FHIR4Eyes departs from the Eye Care IG's own narrative documentation. |
| [Ophthalmic Procedure](StructureDefinition-ophthalmic-procedure.md) | Any ophthalmic procedure, from minor ambulatory surgeries to individual sessions within a longer treatment scheme, such as an intravitreal injection or a vision therapy session. When a procedure involves administering a medication (e.g. an intravitreal injection), the medication administration is recorded as a separate OphthalmicMedicationAdministration, linked back to this procedure via MedicationAdministration.partOf, not the other way around. |
| [Ophthalmic Imaging Study](StructureDefinition-ophthalmic-imaging-study.md) | An ophthalmic imaging study, such as OCT, retinography, or angiography. Always traceable back to the medical order that led to it via basedOn. Laterality is represented both through the native series.bodySite/series.laterality Coding fields (for standard DICOM/PACS compatibility) and through an additional extension referencing OcularBodyStructure (for structured cross-resource navigation, consistent with the rest of this guide). |
| [Ophthalmic Diagnostic Report](StructureDefinition-ophthalmic-diagnostic-report.md) | Represents the findings, diagnosis, and treatment plan reached after reviewing an imaging study or structured examination dataset. Unlike a radiology report, this is not limited to describing imaging findings: the same clinical act typically also reaches a diagnosis and defines a treatment plan, recorded as separate Condition and CarePlan resources referencing this report. |

### Visual acuity 

Visual acuity measurements, including pinhole and low vision results.

| | |
| :--- | :--- |
| [Ophthalmic Visual Acuity](StructureDefinition-ophthalmic-visual-acuity.md) | Represents a visual acuity measurement, modeled as discrete, independently combinable components (distance, correction status, chart/optotype, scale, pinhole) rather than as a single pre-coordinated code that bundles all of these together. This follows a more granular pattern than the HL7 Eye Care IG's published (2021) approach, aligned with a newer proposal discussed within SNOMED International's Eye Care Clinical Reference Group (2025), which favors flexible, independently recordable components over pre-coordinated codes. See Terminology for the underlying terminology strategy, including the LowVisionAssessment value set for vision below what any chart can measure. |

### Intraocular pressure and pachymetry 

Single IOP readings, central corneal thickness, corrected IOP and the ambulatory tension curve panel.

| | |
| :--- | :--- |
| [Intraocular Pressure](StructureDefinition-intraocular-pressure.md) | Represents a single intraocular pressure (IOP) reading, in mmHg. Code is fixed to SNOMED CT 41633001 (Intraocular pressure). |
| [Pachymetry](StructureDefinition-pachymetry.md) | Represents a corneal pachymetry measurement (corneal thickness), typically in micrometres. Used on its own, and also referenced by CorrectedIntraocularPressure when correcting an IOP reading for corneal thickness. |
| [Corrected Intraocular Pressure](StructureDefinition-corrected-intraocular-pressure.md) | Represents an intraocular pressure reading corrected for corneal thickness (pachymetry). Recorded as a separate Observation from the plain IOP reading, referencing both the IOP and pachymetry measurements it was derived from via derivedFrom. |
| [Tension Curve](StructureDefinition-tension-curve.md) | Represents an ambulatory tension curve: several intraocular pressure readings taken across a single day, grouped together as a single clinical concept rather than recorded as unrelated, disconnected observations. This profile was already defined in an earlier version of this guide's design work and is carried forward here. |

### Optical coherence tomography (OCT) 

OCT optic nerve head / RNFL and macular thickness analyses.

| | |
| :--- | :--- |
| [Ophthalmic OCT RNFL](StructureDefinition-ophthalmic-oct-rnfl.md) | Represents an OCT optic nerve head (ONH) and retinal nerve fiber layer (RNFL) analysis: cup and disc geometry, cup-to-disc ratios, Disc Damage Likelihood Scale (DDLS), and the global TSNIT (Temporal-Superior-Nasal-Inferior-Temporal) RNFL profile statistics, alongside acquisition metadata and an overall normative classification. Sourced directly from the FHIR4Eyes Observations catalog (OCT Optic Disc/RNFL section), replacing an earlier, quadrant-thickness-only version of this profile. |
| [Ophthalmic OCT Macula](StructureDefinition-ophthalmic-oct-macula.md) | Represents an OCT macular thickness analysis using the ETDRS 9-sector grid, plus device-reported acquisition metadata (dilation, signal strength) and DICOM Sup 152 classification fields (thickness definition, deviation category, anatomic reference point). Sourced directly from the FHIR4Eyes Observations catalog (OCT Macula section), replacing an earlier, less complete version of this profile. |

### Corneal tomography 

The corneal tomography report and the six analyses grouped under it.

| | |
| :--- | :--- |
| [Corneal Tomography Report](StructureDefinition-corneal-tomography-report.md) | A specialization of OphthalmicDiagnosticReport for corneal tomography exams (e.g. Scheimpflug/Pentacam-style devices), grouping its six component analyses (CTAnteriorSurface, CTPosteriorSurface, CTPachymetry, CTAnteriorChamber, CTKeratoconusIndices, CTDensitometry) via result, following the same DiagnosticReport grouping pattern already used for OCT (see OphthalmicOCTRNFL and OphthalmicOCTMacula).Open question, not yet resolved: in practice, a tomography device may print these as separate reports or 'maps' (an anterior surface map, a posterior surface map, and so on) rather than a single integrated report. For now, this guide captures all six as results under a single combined report, since the current priority is representing the underlying data correctly rather than resolving the exact report/printout structure a given device produces. Whether this should instead be split into multiple report profiles is left open for future review. |
| [Corneal Tomography - Anterior Surface](StructureDefinition-ct-anterior-surface.md) | Represents the anterior corneal surface analysis component of a corneal tomography exam (e.g. Scheimpflug/Pentacam-style device), one of six Observations grouped under a single CornealTomographyReport. Sourced directly from the FHIR4Eyes Observations catalog (Corneal Topography: Anterior Surface section). Component codes are left as open text for now, following this guide's terminology rigor: most confirmed SNOMED CT/LOINC codes were not identified for these device-specific indices (see Terminology); a handful of components reference specific DICOM Sup 168 tags directly in their terminology, noted in the catalog. |
| [Corneal Tomography - Posterior Surface](StructureDefinition-ct-posterior-surface.md) | Represents the posterior corneal surface analysis component of a corneal tomography exam, one of six Observations grouped under a single CornealTomographyReport. Sourced directly from the FHIR4Eyes Observations catalog (Corneal Topography: Posterior Surface section). Component codes are left as open text for now, following this guide's terminology rigor (see Terminology). |
| [Corneal Tomography - Pachymetry](StructureDefinition-ct-pachymetry.md) | Represents the pachymetry (corneal thickness) component of a corneal tomography exam, one of six Observations grouped under a single CornealTomographyReport. Distinct from the standalone Pachymetry profile used for simple central corneal thickness measurements outside the tomography context (see Profiles); this profile captures the fuller thickness map data a tomography device produces. Sourced directly from the FHIR4Eyes Observations catalog (Corneal Topography: Pachymetry section). |
| [Corneal Tomography - Anterior Chamber](StructureDefinition-ct-anterior-chamber.md) | Represents the anterior chamber analysis component of a corneal tomography exam, one of six Observations grouped under a single CornealTomographyReport. Component codes are left as open text for now, following this guide's terminology rigor: no confirmed SNOMED CT/LOINC codes were identified for these device-specific measurements (see Terminology). |
| [Corneal Tomography - Keratoconus Indices](StructureDefinition-ct-keratoconus-indices.md) | Represents the keratoconus screening/classification indices component of a corneal tomography exam, one of six Observations grouped under a single CornealTomographyReport. Sourced directly from the FHIR4Eyes Observations catalog (Corneal Topography: Keratoconus Indices section). Component codes are left as open text for now, following this guide's terminology rigor (see Terminology). |
| [Corneal Tomography - Densitometry](StructureDefinition-ct-densitometry.md) | Represents the corneal densitometry (light backscatter) component of a corneal tomography exam, one of six Observations grouped under a single CornealTomographyReport. Sourced directly from the FHIR4Eyes Observations catalog (Corneal Topography: Densitometry section): three radial zones plus total, and a per-layer breakdown (anterior, central, posterior). Component codes are left as open text for now, following this guide's terminology rigor (see Terminology). |

### Other diagnostic tests 

Visual field and specular microscopy.

| | |
| :--- | :--- |
| [Ophthalmic Humphrey Visual Field](StructureDefinition-ophthalmic-humphrey-visual-field.md) | Represents an automated static perimetry (Humphrey field analyzer) exam. Sourced directly from the FHIR4Eyes Observations catalog (Automated Visual Field (Humphrey) section), DICOM-aligned per CIDs 4250-4257 where a CID reference is noted. |
| [Ophthalmic Specular Microscopy](StructureDefinition-ophthalmic-specular-microscopy.md) | Represents a corneal endothelial specular microscopy exam. Sourced directly from the FHIR4Eyes Observations catalog (Specular Microscopy section). |

### Ocular biometry, IOL calculation and implanted devices 

Biometry for cataract surgery planning, IOL power formula results and the implanted intraocular lens.

| | |
| :--- | :--- |
| [Ophthalmic Ocular Biometry](StructureDefinition-ophthalmic-ocular-biometry.md) | Represents an ocular biometry exam (optical or ultrasonic), used primarily for IOL power calculation ahead of cataract surgery. Sourced directly from the FHIR4Eyes Observations catalog (Ocular Biometry section), DICOM-aligned per CIDs 4230-4243 where a CID reference is noted. Holds the shared measurements common to the whole exam (axial length, keratometry, and so on) as components; each formula calculated from those shared measurements, with its own suggested IOL and expected outcome, is a separate IOLFormulaResult instance referenced via hasMember, since one biometry exam is typically run through several formulas. |
| [IOL Formula Result](StructureDefinition-iol-formula-result.md) | Represents the result of a single IOL power calculation formula (e.g. Barrett Universal II, SRK/T, Holladay), including the recommended lens and expected refraction. Not intended to be used standalone: always referenced via hasMember from an OphthalmicOcularBiometry instance, since one biometry exam typically has its shared measurements calculated through several formulas, each with its own suggested lens. |
| [Ophthalmic Device](StructureDefinition-ophthalmic-device.md) | An implanted ophthalmic device instance, such as an intraocular lens (IOL), affixed to a specific patient. Following the same pattern as US Core's Implantable Device Profile, this represents the specific unit already implanted, not a generic catalog item; patient is therefore required. Procedure.focalDevice (in OphthalmicProcedure) also references this Device from the implanting procedure, consistent with US Core's own guidance that a procedure involving an implantable device should reference it via focalDevice. A generic device catalog (DeviceDefinition) is out of scope for this guide for now. See the Profiles page of this guide for the full design rationale, including a note on other implantable devices (such as glaucoma drainage devices) that may also fit this profile. |

### Strabismus and binocular vision 

The strabismus exam panel and its family of direct and position-based sub-tests.

| | |
| :--- | :--- |
| [Strabismus Exam](StructureDefinition-strabismus-exam.md) | Represents a strabismus examination as a panel grouping together whichever sub-tests were actually performed for this patient (for example, cover test, motility, near point of convergence, stereopsis, prism cover test, Krimsky test). Not every possible sub-test is performed for every patient; this profile does not enforce a fixed checklist. Each sub-test is recorded as its own Observation, referenced here via hasMember. |
| [Cover Test](StructureDefinition-cover-test.md) | Represents a cover test result, performed with or without correction, at near or far distance. Findings are recorded as open text/coded values for now (PC: orthophoria, PL: various movement patterns), since no confirmed SNOMED/LOINC binding has been verified for these specific findings yet. |
| [Ocular Motility](StructureDefinition-ocular-motility.md) | Represents the assessment of extraocular muscle function (hypofunction or hyperfunction) for a specific eye and muscle. Recorded per eye, since motility findings can differ between the two eyes independently. |
| [Near Point of Convergence](StructureDefinition-near-point-of-convergence.md) | Represents the near point of convergence (PPC), recorded either as a numeric distance in centimetres, or, when a precise measurement isn't obtained, as a qualitative finding (e.g. 'nasal', 'near nasal'). |
| [Convergence Assessment](StructureDefinition-convergence-assessment.md) | Represents a qualitative assessment of convergence ability (good, fair, insufficient, poor). |
| [Stereopsis Test](StructureDefinition-stereopsis-test.md) | Represents a stereoacuity test result (e.g. Titmus, Randot). The specific test used is recorded as a component, since several different stereopsis tests exist in practice and the test type affects how the result should be interpreted. |
| [Prism Cover Test](StructureDefinition-prism-cover-test.md) | Represents a prism cover test, measuring ocular deviation in prism diopters across multiple gaze positions. Each gaze position is recorded as a separate GazePositionMeasurement, referenced here via hasMember. Distance and correction status are recorded as components on this panel, following the same granular pattern used for OphthalmicVisualAcuity, rather than being folded into a single pre-coordinated code. |
| [Krimsky Test](StructureDefinition-krimsky-test.md) | Represents a Krimsky test (corneal light reflex test with prism), measuring ocular deviation in prism diopters across multiple gaze positions. Follows the same structural pattern as PrismCoverTest: each gaze position is a separate GazePositionMeasurement, referenced via hasMember. |
| [Hirschberg Test](StructureDefinition-hirschberg-test.md) | Represents a Hirschberg corneal light reflex test, used to estimate the angle of deviation when other tests aren't feasible (e.g. young children). Performed across multiple gaze positions; each position is recorded as a separate GazePositionMeasurement, referenced here via hasMember, using its qualitative finding component. |
| [Red Filter Light Test](StructureDefinition-red-filter-light-test.md) | Represents a red filter plus light test, assessing fusion, suppression, or diplopia. Performed across multiple gaze positions; each position is recorded as a separate GazePositionMeasurement, referenced here via hasMember, using its qualitative finding component. Distance and correction status are recorded as components on this panel. |
| [Worth 4 Dot Test](StructureDefinition-worth-4-dot-test.md) | Represents a Worth 4 dot test, assessing fusion, suppression, or diplopia. Performed across multiple gaze positions; each position is recorded as a separate GazePositionMeasurement, referenced here via hasMember, using its qualitative finding component. |
| [Gaze Position Measurement](StructureDefinition-gaze-position-measurement.md) | A reusable pattern for a single measurement or finding taken at one gaze position (e.g. primary position, right gaze, up-and-right gaze). Used by PrismCoverTest and KrimskyTest for quantitative prism diopter deviation, and by HirschbergTest, RedFilterLightTest, and Worth4DotTest for a qualitative finding at each position. Each test uses only the components relevant to it; all components are optional. Not intended to be used standalone; always referenced via hasMember from one of those panels. |

### Treatment: care plans and medications 

Long-term treatment schemes (e.g. intravitreal injections) and the medications administered.

| | |
| :--- | :--- |
| [Ophthalmic Care Plan](StructureDefinition-ophthalmic-care-plan.md) | A long-term treatment scheme made up of repeated sessions or administrations, rather than a single event. Covers two schemes identified in this guide's Use Cases: intravitreal injection treatment, and vision therapy or orthoptic treatment. Not every planned session is necessarily scheduled at once: some sessions remain planned but unscheduled within the CarePlan (via activity), while each session that is actually performed is recorded as a separate OphthalmicProcedure, linked back to this CarePlan via Procedure.basedOn. |
| [Ophthalmic Medication](StructureDefinition-ophthalmic-medication.md) | A medication used in ophthalmology, such as an anti-VEGF agent for intravitreal injection. |
| [Ophthalmic Medication Administration](StructureDefinition-ophthalmic-medication-administration.md) | Records the administration of a medication during an ophthalmic procedure, most notably an intravitreal injection. Always linked back to the specific procedure it was administered during, via partOf, consistent with FHIR's standard 'larger event of which this is a component' pattern. |

### Capability statement and search parameters 

The expected server capabilities and the search parameters defined by this guide.

| | |
| :--- | :--- |
| [FHIR4Eyes Server Capability Statement](CapabilityStatement-FHIR4EyesCapabilityStatement.md) | Capability Statement for a FHIR4Eyes conformant server supporting ophthalmic clinical data exchange |
| [sp-observation-eye](SearchParameter-sp-observation-eye.md) | Search observations (e.g. OphthalmicVisualAcuity, IntraocularPressure, and other ophthalmic Observation profiles in this guide) by eye laterality, expressed via the bodySite extension referencing an OcularBodyStructure instance. |
| [sp-condition-eye](SearchParameter-sp-condition-eye.md) | Search ophthalmic conditions/diagnoses by eye laterality, expressed via the bodySite extension referencing an OcularBodyStructure instance. |
| [sp-procedure-eye](SearchParameter-sp-procedure-eye.md) | Search ophthalmic procedures by eye laterality, expressed via the bodySite extension referencing an OcularBodyStructure instance. |
| [sp-imagingstudy-eye](SearchParameter-sp-imagingstudy-eye.md) | Search ophthalmic imaging studies by the laterality of an examined series, expressed via the bodySite extension on ImagingStudy.series referencing an OcularBodyStructure instance. |
| [sp-imagingstudy-modality](SearchParameter-sp-imagingstudy-modality.md) | Search ophthalmic imaging studies by the DICOM acquisition modality of their series (e.g. OPT, OP, OPV, OPM, OAM, AR). |
| [sp-diagnosticreport-imaging-study](SearchParameter-sp-diagnosticreport-imaging-study.md) | Search ophthalmic diagnostic reports by the OphthalmicImagingStudy they interpret. |
| [sp-encounter-appointment](SearchParameter-sp-encounter-appointment.md) | Search ophthalmic encounters by the appointment that led to them. |

### Terminology 

Code systems and value sets defined by this guide.

| | |
| :--- | :--- |
| [FHIR4Eyes Care Plan Category Code System](CodeSystem-fhir4eyes-care-plan-category-cs.md) | Proposed FHIR4Eyes-only codes for care plan category, not yet bound to an external terminology. See the Profiles page of this guide for the design rationale. |
| [Ophthalmic Care Plan Category Value Set](ValueSet-ophthalmic-care-plan-category-vs.md) | The type of ophthalmic treatment scheme. Proposed FHIR4Eyes-only codes, open to revision if a suitable external code is identified later. |
| [Low Vision Assessment Value Set](ValueSet-low-vision-assessment-vs.md) | Qualitative visual acuity for patients whose vision falls below what any chart can measure (ICD-11 blindness categories 4 through 6). All five codes are confirmed SNOMED CT concepts, verified directly against the SNOMED CT browser. See Terminology for the full clinical and terminology rationale. The counting-fingers concept below uses the generic code by default; the more specific distance-based codes may be used instead when that detail is known. |

### Examples: shared actors 

Patient, practitioner, encounter and laterality instances referenced by the other examples.

| | |
| :--- | :--- |
| [Patient (international identifier)](Patient-PatientExample.md) | Example patient identified with a passport number, used across the guide's examples. |
| [Patient (Chilean RUT identifier)](Patient-PacienteEjemplo.md) | Example patient identified with a Chilean RUT. |
| [Ophthalmologist](Practitioner-OphthalmologistExample.md) | Example ophthalmologist referenced as requester and performer. |
| [Ambulatory ophthalmology encounter](Encounter-EncounterExample.md) | Example ambulatory ophthalmology consultation. |
| [Right eye (laterality)](BodyStructure-RightEyeStructureExample.md) | OcularBodyStructure for the right eye, referenced via bodySite for laterality. |
| [Left eye (laterality)](BodyStructure-LeftEyeStructureExample.md) | OcularBodyStructure for the left eye, referenced via bodySite for laterality. |

### Examples: visual acuity 

Visual acuity examples.

| | |
| :--- | :--- |
| [Visual acuity: uncorrected, right eye](Observation-VisualAcuityUncorrectedRightEyeExample.md) | Uncorrected distance visual acuity of the right eye. |
| [Visual acuity: pinhole, right eye](Observation-VisualAcuityPinholeRightEyeExample.md) | Pinhole measurement derived from the uncorrected right eye measurement. |
| [Visual acuity: corrected, left eye](Observation-VisualAcuityCorrectedLeftEyeExample.md) | Corrected distance visual acuity of the left eye. |
| [Visual acuity: counting fingers, right eye](Observation-VisualAcuityCountingFingersRightEyeExample.md) | Low vision qualitative result (counting fingers) with testing distance. |
| [Visual acuity: binocular](Observation-VisualAcuityBinocularExample.md) | Binocular visual acuity measurement. |

### Examples: intraocular pressure and tension curve 

IOP, pachymetry, corrected IOP and tension curve examples.

| | |
| :--- | :--- |
| [IOP: right eye](Observation-IntraocularPressureRightEyeExample.md) | Single intraocular pressure reading, right eye. |
| [IOP: left eye](Observation-IntraocularPressureLeftEyeExample.md) | Single intraocular pressure reading, left eye. |
| [Pachymetry: right eye](Observation-PachymetryRightEyeExample.md) | Central corneal thickness, right eye. |
| [Pachymetry: left eye](Observation-PachymetryLeftEyeExample.md) | Central corneal thickness, left eye. |
| [Corrected IOP: right eye](Observation-CorrectedIntraocularPressureRightEyeExample.md) | IOP corrected for corneal thickness, derived from IOP and pachymetry, right eye. |
| [Corrected IOP: left eye](Observation-CorrectedIntraocularPressureLeftEyeExample.md) | IOP corrected for corneal thickness, derived from IOP and pachymetry, left eye. |
| [Tension curve panel, right eye](Observation-TensionCurveRightEyeExample.md) | Ambulatory tension curve grouping three IOP readings via hasMember. |
| [Tension curve reading 08:00, right eye](Observation-TensionCurveRightEye0800Example.md) | IOP reading at 08:00, member of the tension curve. |
| [Tension curve reading 12:00, right eye](Observation-TensionCurveRightEye1200Example.md) | IOP reading at 12:00, member of the tension curve. |
| [Tension curve reading 14:00, right eye](Observation-TensionCurveRightEye1400Example.md) | IOP reading at 14:00, member of the tension curve. |

### Examples: OCT 

OCT orders, imaging studies, analyses and reports.

| | |
| :--- | :--- |
| [OCT order](ServiceRequest-OCTServiceRequestExample.md) | Order for an OCT examination (RNFL and macula). |
| [OCT procedure](Procedure-OCTProcedureExample.md) | Procedure record for the OCT acquisition. |
| [OCT imaging study: right eye](ImagingStudy-OCTStudyRightEyeExample.md) | ImagingStudy for the OCT acquisition of the right eye. |
| [OCT imaging study: left eye](ImagingStudy-OCTStudyLeftEyeExample.md) | ImagingStudy for the OCT acquisition of the left eye. |
| [OCT RNFL: right eye](Observation-OCTRNFLRightEyeExample.md) | OCT optic nerve head / RNFL analysis, right eye. |
| [OCT RNFL: left eye](Observation-OCTRNFLLeftEyeExample.md) | OCT optic nerve head / RNFL analysis, left eye. |
| [OCT macula: right eye](Observation-OCTMaculaRightEyeExample.md) | OCT macular thickness (ETDRS grid), right eye. |
| [OCT macula: left eye](Observation-OCTMaculaLeftEyeExample2.md) | OCT macular thickness (ETDRS grid), left eye. |
| [OCT report (RNFL + macula)](DiagnosticReport-OCTDiagnosticReportExample.md) | Diagnostic report grouping the OCT RNFL and macula results. |
| [OCT macula order](ServiceRequest-OCTMaculaServiceRequestExample.md) | Order for an OCT macula examination. |
| [OCT macula imaging study: left eye](ImagingStudy-OCTMaculaLeftEyeExample.md) | ImagingStudy for an OCT macula acquisition, left eye. |
| [OCT macula report](DiagnosticReport-OCTMaculaDiagnosticReportExample.md) | Diagnostic report for an OCT macula examination. |
| [OCT optic disc order](ServiceRequest-OCTOpticDiscServiceRequestExample.md) | Order for an OCT optic disc examination. |
| [OCT optic disc imaging study: left eye](ImagingStudy-OCTOpticDiscLeftEyeExample.md) | ImagingStudy for an OCT optic disc acquisition, left eye. |

### Examples: corneal tomography 

Corneal tomography order, report and its six analyses.

| | |
| :--- | :--- |
| [Corneal tomography order](ServiceRequest-CornealTomographyServiceRequestExample.md) | Order for a corneal tomography examination. |
| [Corneal tomography report: right eye](DiagnosticReport-CornealTomographyReportRightEyeExample.md) | Report grouping the six corneal tomography analyses of the right eye. |
| [CT anterior surface: right eye](Observation-CTAnteriorSurfaceRightEyeExample.md) | Anterior corneal surface analysis, right eye. |
| [CT posterior surface: right eye](Observation-CTPosteriorSurfaceRightEyeExample.md) | Posterior corneal surface analysis, right eye. |
| [CT pachymetry: right eye](Observation-CTPachymetryRightEyeExample.md) | Corneal thickness map analysis, right eye. |
| [CT anterior chamber: right eye](Observation-CTAnteriorChamberRightEyeExample.md) | Anterior chamber analysis, right eye. |
| [CT keratoconus indices: right eye](Observation-CTKeratoconusIndicesRightEyeExample.md) | Keratoconus screening indices, right eye. |
| [CT densitometry: right eye](Observation-CTDensitometryRightEyeExample.md) | Corneal densitometry, right eye. |

### Examples: other diagnostic tests 

Visual field and specular microscopy examples.

| | |
| :--- | :--- |
| [Humphrey visual field: right eye](Observation-HumphreyVFRightEyeExample.md) | Automated static perimetry, right eye. |
| [Specular microscopy: right eye](Observation-SpecularMicroscopyRightEyeExample.md) | Corneal endothelial specular microscopy, right eye. |

### Examples: biometry and cataract surgery 

Biometry, IOL formula results, cataract surgery and the implanted IOL.

| | |
| :--- | :--- |
| [Ocular biometry: right eye](Observation-BiometryRightEyeExample.md) | Biometry with shared measurements and IOL formula results as members. |
| [IOL formula: Barrett Universal II](Observation-IOLFormulaBarrettExample.md) | IOL power calculation result using Barrett Universal II. |
| [IOL formula: SRK/T](Observation-IOLFormulaSRKTExample.md) | IOL power calculation result using SRK/T. |
| [Cataract surgery with IOL implantation](Procedure-CataractSurgeryProcedureExample.md) | Cataract surgery referencing the implanted IOL via focalDevice. |
| [Intraocular lens (implanted device)](Device-IntraocularLensExample.md) | Implanted IOL referenced from the cataract surgery procedure. |

### Examples: strabismus exam 

Strabismus exam panel and its sub-tests.

| | |
| :--- | :--- |
| [Strabismus exam panel](Observation-StrabismusExamExample.md) | Strabismus examination grouping the sub-tests performed. |
| [Cover test](Observation-CoverTestExample.md) | Cover test result. |
| [Ocular motility: right eye](Observation-OcularMotilityRightEyeExample.md) | Extraocular muscle function assessment, right eye. |
| [Ocular motility: left eye](Observation-OcularMotilityLeftEyeExample.md) | Extraocular muscle function assessment, left eye. |
| [Near point of convergence](Observation-NearPointOfConvergenceExample.md) | Near point of convergence measurement. |
| [Convergence assessment](Observation-ConvergenceAssessmentExample.md) | Qualitative convergence assessment. |
| [Stereopsis test](Observation-StereopsisTestExample.md) | Stereoacuity test result. |
| [Prism cover test panel](Observation-PrismCoverTestExample.md) | Prism cover test grouping per-gaze-position measurements. |
| [Prism cover test: primary position](Observation-PrismCoverTestPrimaryPositionExample.md) | GazePositionMeasurement for the primary gaze position. |

### Examples: intravitreal injection treatment 

Diagnosis, care plan, medication, administration and injection procedure.

| | |
| :--- | :--- |
| [Diabetic macular edema diagnosis](Condition-DiabeticMacularEdemaConditionExample.md) | Ophthalmic diagnosis that motivates the intravitreal injection care plan. |
| [Intravitreal injection care plan](CarePlan-AvastinInjectionCarePlanExample.md) | Treatment scheme of repeated intravitreal anti-VEGF injections. |
| [Bevacizumab (Avastin)](Medication-AvastinMedicationExample.md) | Anti-VEGF medication used for intravitreal injection. |
| [Bevacizumab administration: dose 1](MedicationAdministration-AvastinDose1AdministrationExample.md) | First intravitreal dose administration. |
| [Intravitreal injection procedure](Procedure-IntravitrealInjectionProcedureExample.md) | One injection session, linked to the care plan via basedOn. |

