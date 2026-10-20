# Change Log - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* **Change Log**

## Change Log

## Unreleased (current build)

**Guide reorganization**, modelled on the structure of the AU Base IG:

* New menu with submenus: Guidance, FHIR Artefacts, Examples, Support and Change Log.
* [Profiles](profiles.md) is now an index grouped by clinical domain, with direct links to each profile and its examples. The design narrative of each profile moved to the profile's own page.
* New [Examples](examples.md) page, grouped by clinical scenario, showing how the instances reference each other.
* New [Search Parameters and Capabilities](search-parameters.md) and [Downloads](downloads.md) pages.
* The [Artefacts Summary](artifacts.md) is grouped by clinical domain.
* All examples now have a title and description.

**Terminology and validation fixes**:

* New [FHIR4Eyes Code System](CodeSystem-fhir4eyes-cs.md) (`FHIR4EyesCS`, about 213 laterality-neutral codes). Every `component` slice is now identified by a fixed code (LOINC or SNOMED CT where verified, otherwise FHIR4EyesCS), and most `Observation.code` values are fixed as well. IG Publisher QA errors dropped from about 5478 to 0 (excluding the two known links to the future FHIR4Eyes CL guide).
* Pachymetry and specular microscopy use laterality-neutral FHIR4EyesCS codes; instances add the eye-specific LOINC (for example `79825-6` / `79826-4`) as a second coding.
* `OphthalmicVisualAcuity.code` is now SNOMED CT `363983007` (Visual acuity); instances may add a specific LOINC (for example `98505-1`) as a second coding.
* `OphthalmicOCTMacula`: the `centralVol` slice was renamed `totalVol`, matching LOINC `57118-2` (Macular grid.total volume by OCT).
* SNOMED CT `39021009` was replaced by `82859000` (Macula lutea structure) in imaging series body sites.
* SearchParameter and CapabilityStatement canonical URLs now follow the IG canonical, with version 0.4.0.
* `OphthalmicDiagnosticReport` adds an optional `IMG` (Diagnostic Imaging, v2-0074) category slice for image-based exams.
* `OphthalmicPatient` identifier slices are now discriminated by `type`.
* The `bodySiteEye` extension was removed from `ImagingStudy.series` (laterality uses the native `series.laterality`, and the `eye` search parameter now searches it as a token) and added to `MedicationAdministration.dosage`.
* `GazePositionMeasurement` records the gaze position in a dedicated `gazePosition` component.
* DICOM modality codes use the DICOM system (`http://dicom.nema.org/resources/ontology/DCM`).
* [Low Vision Assessment Value Set](ValueSet-low-vision-assessment-vs.md): displays corrected, and the distance-specific counting-fingers codes (`260292001`, `260293006`, `260294000`) added as members.
* Added `input/ignoreWarnings.txt` for documented, intentional publisher warnings.

**DICOM mappings and clinical consistency**:

* DICOM tags and context groups removed from element descriptions and FHIR4EyesCS definitions; verified correspondences are now informative `Mapping`s (Mappings tab of biometry, IOL formula, OCT macula, OCT RNFL, visual field, corneal anterior surface and anterior chamber). Several wrong tags were corrected (see the DICOM mapping notes).
* Strabismus: deviations are positive magnitudes with a separate direction component (eso/exo, hyper/hypo); testing distance near/far uses its own code; Worth 4 dot test gains correction status; the cover test example is split into near and far.
* OCT: one normative classification value set for RNFL and macula (`interpretation`); RNFL quadrant thicknesses added; examples made internally consistent.
* Visual field: Glaucoma Hemifield Test, fixation losses and false positive/negative errors added; luminance in UCUM `cd/m2`.
* Corneal tomography: posterior corneal power is negative; duplicated corneal cylinder removed. Biometry: Km and K axes added.
* Binocular measurements reference a both-eyes OcularBodyStructure; all Observation examples carry performer and effective time.

**Generic patient and encounter references**: Core profiles reference a generic `Patient` and `Encounter` (12 profiles previously required `OphthalmicEncounter`). The patient and encounter profiles are inherited from the international context or, in Chile, from FHIR4Eyes CL. Internal working notes remain outside the published navigation.

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

**New: Corneal Tomography.** Six `Observation` profiles (`CTAnteriorSurface`, `CTPosteriorSurface`, `CTPachymetry`, `CTAnteriorChamber`, `CTKeratoconusIndices`, `CTDensitometry`) grouped under `CornealTomographyReport`, covering Scheimpflug/Pentacam- style tomography in full detail, including keratoconus screening indices (BAD-D and its sub-components, ABCD grading, Amsler-Krumeich staging) and layered densitometry. See [Corneal Tomography Report](StructureDefinition-corneal-tomography-report.md).

**Replaced: `OphthalmicOCTMacula` and `OphthalmicOCTRNFL`.** Both profiles were rebuilt to match this guide's maintained variable catalog. `OphthalmicOCTRNFL` in particular changed structurally, from a quadrant-thickness model to an optic nerve head (cup/disc geometry), Disc Damage Likelihood Scale (DDLS), and global TSNIT profile model, which better reflects how RNFL/ONH analysis is actually reported in practice.

**New: `OphthalmicOcularBiometry`.** IOL power calculation biometry, DICOM-aligned per CIDs 4230-4243, including axial length, keratometry, lens constants, formula selection, and the recommended IOL power.

**New: `OphthalmicHumphreyVisualField`.** Automated static perimetry, DICOM-aligned per CIDs 4250-4257, including MD/PSD/VFI and full test parameters (stimulus size, luminance, duration, fixation strategy).

**New: `OphthalmicSpecularMicroscopy`.** Corneal endothelial cell analysis: density, cell count, coefficient of variation, hexagonality, and cell area statistics.

**New pages.** `guidance.html` (conventions used throughout this guide, with worked examples and rendered diagrams) and `security.html` (security and privacy considerations) were added, completing the page structure originally planned for this guide.

**Deferred.** Wavefront aberrometry (Zernike coefficients), Schirmer test, and lensometry remain identified in this guide's scope but are not yet built, given lower clinical frequency relative to what was prioritized for this release.

## 0.1.0

Initial Core release. Established the foundational profile set covering a full clinical episode: `OphthalmicServiceRequest`, `OphthalmicCondition`, `OphthalmicProcedure`, `OcularBodyStructure`, `OphthalmicCarePlan`, `OphthalmicDevice`, `OphthalmicEncounter`, `OphthalmicMedication`, `OphthalmicMedicationAdministration`, `OphthalmicImagingStudy`, `OphthalmicDiagnosticReport`, `OphthalmicVisualAcuity` (with the `LowVisionAssessment` value set), `TensionCurve`, `IntraocularPressure`, `CorrectedIntraocularPressure`, `Pachymetry`, and the full `StrabismusExam` family (thirteen profiles covering direct and gaze-position-based sub-tests). Established this guide's terminology strategy (direct SNOMED CT/LOINC binding rather than depending on the unpublished HL7 Eye Care IG package) and its core design conventions (the `bodySite` laterality pattern, the panel/`hasMember` pattern, and the granular-components pattern).

