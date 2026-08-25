# Change History - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.2.0

* [**Table of Contents**](toc.md)
* **Change History**

## Change History

# Change History

## 0.2.0

Substantial expansion of the profile set, covering the remaining high-complexity examinations identified in this guide's scope.

**New: Corneal Tomography.** Six `Observation` profiles (`CTAnteriorSurface`, `CTPosteriorSurface`, `CTPachymetry`, `CTAnteriorChamber`, `CTKeratoconusIndices`, `CTDensitometry`) grouped under `CornealTomographyReport`, covering Scheimpflug/Pentacam- style tomography in full detail, including keratoconus screening indices (BAD-D and its sub-components, ABCD grading, Amsler-Krumeich staging) and layered densitometry. See [Profiles](profiles.md#corneal-tomography-six-observations-under-one-report).

**Replaced: `OphthalmicOCTMacula` and `OphthalmicOCTRNFL`.** Both profiles were rebuilt to match this guide's maintained variable catalog. `OphthalmicOCTRNFL` in particular changed structurally, from a quadrant-thickness model to an optic nerve head (cup/disc geometry), Disc Damage Likelihood Scale (DDLS), and global TSNIT profile model, which better reflects how RNFL/ONH analysis is actually reported in practice.

**New: `OphthalmicOcularBiometry`.** IOL power calculation biometry, DICOM-aligned per CIDs 4230-4243, including axial length, keratometry, lens constants, formula selection, and the recommended IOL power.

**New: `OphthalmicHumphreyVisualField`.** Automated static perimetry, DICOM-aligned per CIDs 4250-4257, including MD/PSD/VFI and full test parameters (stimulus size, luminance, duration, fixation strategy).

**New: `OphthalmicSpecularMicroscopy`.** Corneal endothelial cell analysis: density, cell count, coefficient of variation, hexagonality, and cell area statistics.

**New pages.** `guidance.html` (conventions used throughout this guide, with worked examples and rendered diagrams) and `security.html` (security and privacy considerations) were added, completing the page structure originally planned for this guide.

**Deferred.** Wavefront aberrometry (Zernike coefficients), Schirmer test, and lensometry remain identified in this guide's scope but are not yet built, given lower clinical frequency relative to what was prioritized for this release.

## 0.1.0

Initial Core release. Established the foundational profile set covering a full clinical episode: `OphthalmicServiceRequest`, `OphthalmicCondition`, `OphthalmicProcedure`, `OcularBodyStructure`, `OphthalmicCarePlan`, `OphthalmicDevice`, `OphthalmicEncounter`, `OphthalmicMedication`, `OphthalmicMedicationAdministration`, `OphthalmicImagingStudy`, `OphthalmicDiagnosticReport`, `OphthalmicVisualAcuity` (with the `LowVisionAssessment` value set), `TensionCurve`, `IntraocularPressure`, `CorrectedIntraocularPressure`, `Pachymetry`, and the full `StrabismusExam` family (thirteen profiles covering direct and gaze-position-based sub-tests). Established this guide's terminology strategy (direct SNOMED CT/LOINC binding rather than depending on the unpublished HL7 Eye Care IG package) and its core design conventions (the `bodySite` laterality pattern, the panel/`hasMember` pattern, and the granular-components pattern).

