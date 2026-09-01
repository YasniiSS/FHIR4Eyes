# Change History - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.3.0

* [**Table of Contents**](toc.md)
* **Change History**

## Change History

# Change History

## 0.3.0

Corrective release following a multi-agent audit of the guide (2026-09-01).

**Fixed: UCUM unit codes.** Corrected invalid or non-standard UCUM codes used across profiles and examples: dioptric power `D` → `[diop]`, prism dioptric power (cover test / prism cover test family) → `[p'diop]`, and distance in feet `ft` → `[ft_i]` (international foot).

**Fixed: DICOM modality code.** OCT-related profiles and examples now consistently use the correct DICOM modality code `OPT` (Ophthalmic Tomography) instead of the invalid `OCT`.

**Fixed: duplicate `^short` captions.** Removed duplicate `^short` caption assignments introduced across several profiles during the 0.2.0 expansion.

**Fixed: example timeline inconsistencies.** Corrected example instances where `effectiveDateTime`/`Period` values did not align with the surrounding clinical narrative.

**Housekeeping.** Renamed `gitignore` to `.gitignore`, and moved `patient-ejemplo.fsh` from `input/fsh/profiles/` to `input/fsh/examples/`, consistent with the ADR-003 file organization convention (profiles vs. examples).

**Documentation.** Refreshed `fhir4eyes-gap-analysis.md`, `usecases.md`, and `fhir4eyes-decisions.md`, which had fallen out of date relative to the profile set: they now correctly reflect that `OphthalmicServiceRequest`, `OphthalmicDiagnosticReport`, `OphthalmicCondition`, and `CornealTomographyReport` are implemented, and record new gaps identified by the audit (terminology binding for `component.code`, UCUM enforcement in profiles rather than only examples, SearchParameters/CapabilityStatement, a Core Patient profile with identifier systems, a Goal profile, MedicationRequest/MedicationStatement for chronic therapy, FHIRPath invariants, a Refraction profile, a VisionPrescription profile, OCT fluid status (SRF/IRF/PED), RNFL quadrant/clock-hour thickness, VF reliability indices and GHT, and a Device profile for acquisition equipment).

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

