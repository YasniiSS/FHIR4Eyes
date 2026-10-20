# Search Parameters and Capabilities - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* **Search Parameters and Capabilities**

## Search Parameters and Capabilities

### Capability Statement

The [FHIR4Eyes Capability Statement](CapabilityStatement-FHIR4EyesCapabilityStatement.md) describes the expected capabilities of a FHIR server exchanging ophthalmic data under this guide: the resource types it supports, the profiles it is expected to declare, and the search parameters it should support for each of them.

### Search Parameters

The following [search parameters](http://hl7.org/fhir/R4/search.html) are defined by this guide, in addition to those defined in the FHIR standard (see the [search parameter registry](http://hl7.org/fhir/R4/searchparameter-registry.html)). Most of them make the laterality pattern searchable: they search the `BodyStructure` referenced from `bodySite` (see [General Guidance](guidance.md)).

The search parameters below **SHALL NOT** be interpreted on their own as a list of search requirements for a server. See the [Capability Statement](CapabilityStatement-FHIR4EyesCapabilityStatement.md) for the expected server behaviour.

| | | | |
| :--- | :--- | :--- | :--- |
| Condition | `eye` | [ConditionEye](SearchParameter-sp-condition-eye.md) | Laterality (`bodySite`→ BodyStructure) |
| DiagnosticReport | `imaging-study` | [DiagnosticReportImagingStudy](SearchParameter-sp-diagnosticreport-imaging-study.md) | `DiagnosticReport.imagingStudy` |
| Encounter | `appointment` | [EncounterAppointment](SearchParameter-sp-encounter-appointment.md) | `Encounter.appointment` |
| ImagingStudy | `eye` | [ImagingStudyEye](SearchParameter-sp-imagingstudy-eye.md) | Laterality of the series |
| ImagingStudy | `modality` | [ImagingStudyModality](SearchParameter-sp-imagingstudy-modality.md) | `ImagingStudy.series.modality` |
| Observation | `eye` | [ObservationEye](SearchParameter-sp-observation-eye.md) | Laterality (`bodySite`→ BodyStructure) |
| Procedure | `eye` | [ProcedureEye](SearchParameter-sp-procedure-eye.md) | Laterality (`bodySite`→ BodyStructure) |

