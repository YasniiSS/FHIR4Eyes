# Ophthalmic Diagnostic Report - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ophthalmic Diagnostic Report**

## Resource Profile: Ophthalmic Diagnostic Report 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-diagnostic-report | *Version*:0.4.0 |
| Draft as of 2026-10-19 | *Computable Name*:OphthalmicDiagnosticReport |

 
Represents the findings, diagnosis, and treatment plan reached after reviewing an imaging study or structured examination dataset. Unlike a radiology report, this is not limited to describing imaging findings: the same clinical act typically also reaches a diagnosis and defines a treatment plan, recorded as separate Condition and CarePlan resources referencing this report. 

Every examination in [use case 2, group B](usecases.md#group-b-imaging-studies-with-report), and [use case 6 (teleophthalmology)](usecases.md#use-case-6-teleophthalmology), depends on this profile to represent the findings, diagnosis, and treatment plan reached after reviewing an imaging study or structured examination dataset.

### Design decisions

**Category.** `DiagnosticReport.category` is `0..*` by the base FHIR specification (`1..*` in this profile), which allows more than one classification to be recorded at once. No dedicated ophthalmology code exists in the standard `v2-0074` diagnostic service section table (the closest available code is `IMG`, Diagnostic Imaging, which does not fit examinations that are not strictly image-based, such as computerized visual fields). FHIR4Eyes uses two independent slices:

| | | |
| :--- | :--- | :--- |
| `specialty` | 1..1 (always present) | SNOMED CT`394594003`(Ophthalmology, qualifier value) |
| `imagingType` | 0..1 (only when applicable) | `IMG`(Diagnostic Imaging), used only when the examination produces an image in the strict sense (for example OCT, angiography, retinography, topography); omitted for examinations that produce structured data without a photographic image |

> **Open discussion, not yet resolved:** whether to add a third, more granular classification level for subspecialty (for example Retina, Glaucoma) is a design question left open for a future iteration of this guide. It is noted here so it is not lost, but is intentionally out of scope for the current version.

**Relationship to ImagingStudy.** `DiagnosticReport.imagingStudy` is optional (`0..*`), referencing [OphthalmicImagingStudy](StructureDefinition-ophthalmic-imaging-study.md). Not every examination in group B necessarily produces a formal `ImagingStudy` resource (for example, computerized visual field data may be stored as part of the report itself rather than as a separate imaging study). When a session produces more than one study (for example, one per eye), all of them can be referenced; see [Guidance](guidance.md).

**Relationship to the order.** `DiagnosticReport.basedOn` may reference the [OphthalmicServiceRequest](StructureDefinition-ophthalmic-service-request.md) that led to the report, consistent with both the HL7 Eye Care IG and the IHE Radiology Imaging Diagnostic Report profile.

**Results.** `DiagnosticReport.result` accepts any `Observation` in this base profile, since the type of report it backs varies. Specializations narrow it to their specific set of Observation profiles, as [CornealTomographyReport](StructureDefinition-corneal-tomography-report.md) does. For OCT, the results are typically [OphthalmicOCTRNFL](StructureDefinition-ophthalmic-oct-rnfl.md) and [OphthalmicOCTMacula](StructureDefinition-ophthalmic-oct-macula.md).

**Scope beyond imaging interpretation.** Unlike a radiology report, this profile is not limited to describing imaging findings. As established in [Background](background.md) and [Use Cases](usecases.md), the same clinical act typically also reaches a diagnosis and defines a treatment plan. [OphthalmicCondition](StructureDefinition-ophthalmic-condition.md) and [OphthalmicCarePlan](StructureDefinition-ophthalmic-care-plan.md) are therefore expected to be recorded alongside this report, referencing it, rather than being folded into the report itself.

**Examples:** [OCT report (RNFL + macula)](DiagnosticReport-OCTDiagnosticReportExample.md), [OCT macula report](DiagnosticReport-OCTMaculaDiagnosticReportExample.md)

**Usages:**

* Derived from this Profile: [Corneal Tomography Report](StructureDefinition-corneal-tomography-report.md)
* Refer to this Profile: [Ophthalmic Procedure](StructureDefinition-ophthalmic-procedure.md)
* Examples for this Profile: [DiagnosticReport/OCTDiagnosticReportExample](DiagnosticReport-OCTDiagnosticReportExample.md) and [DiagnosticReport/OCTMaculaDiagnosticReportExample](DiagnosticReport-OCTMaculaDiagnosticReportExample.md)
* CapabilityStatements using this Profile: [FHIR4Eyes Server Capability Statement](CapabilityStatement-FHIR4EyesCapabilityStatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir4eyes.core|current/StructureDefinition/StructureDefinition-ophthalmic-diagnostic-report.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ophthalmic-diagnostic-report.csv), [Excel](StructureDefinition-ophthalmic-diagnostic-report.xlsx), [Schematron](StructureDefinition-ophthalmic-diagnostic-report.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ophthalmic-diagnostic-report",
  "url" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-diagnostic-report",
  "version" : "0.4.0",
  "name" : "OphthalmicDiagnosticReport",
  "title" : "Ophthalmic Diagnostic Report",
  "status" : "draft",
  "date" : "2026-10-19T22:17:00-03:00",
  "publisher" : "FHIR4Eyes Project",
  "contact" : [{
    "name" : "FHIR4Eyes Project",
    "telecom" : [{
      "system" : "url",
      "value" : "https://YasniiSS.github.io/fhir4eyes"
    }]
  },
  {
    "name" : "Yasna Soto",
    "telecom" : [{
      "system" : "url",
      "value" : "https://YasniiSS.github.io/fhir4eyes"
    }]
  }],
  "description" : "Represents the findings, diagnosis, and treatment plan reached after\r\nreviewing an imaging study or structured examination dataset. Unlike a radiology report,\r\nthis is not limited to describing imaging findings: the same clinical act typically also\r\nreaches a diagnosis and defines a treatment plan, recorded as separate Condition and\r\nCarePlan resources referencing this report.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001",
      "display" : "World"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DiagnosticReport",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/DiagnosticReport",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DiagnosticReport",
      "path" : "DiagnosticReport"
    },
    {
      "id" : "DiagnosticReport.identifier",
      "path" : "DiagnosticReport.identifier",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.basedOn",
      "path" : "DiagnosticReport.basedOn",
      "short" : "The medical order that led to this report, when applicable",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-service-request"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.status",
      "path" : "DiagnosticReport.status",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.category",
      "path" : "DiagnosticReport.category",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this"
        }],
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.category:specialty",
      "path" : "DiagnosticReport.category",
      "sliceName" : "specialty",
      "min" : 1,
      "max" : "1",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "394594003",
          "display" : "Ophthalmology (qualifier value)"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.category:imagingType",
      "path" : "DiagnosticReport.category",
      "sliceName" : "imagingType",
      "short" : "IMG (Diagnostic Imaging), only when the exam is image-based; omitted otherwise",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://terminology.hl7.org/ValueSet/v2-0074"
      }
    },
    {
      "id" : "DiagnosticReport.code",
      "path" : "DiagnosticReport.code",
      "short" : "The specific examination this report covers",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.subject",
      "path" : "DiagnosticReport.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.encounter",
      "path" : "DiagnosticReport.encounter",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.effective[x]",
      "path" : "DiagnosticReport.effective[x]",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.issued",
      "path" : "DiagnosticReport.issued",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.performer",
      "path" : "DiagnosticReport.performer",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.resultsInterpreter",
      "path" : "DiagnosticReport.resultsInterpreter",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.result",
      "path" : "DiagnosticReport.result",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.imagingStudy",
      "path" : "DiagnosticReport.imagingStudy",
      "short" : "The imaging study this report interprets, when applicable",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-imaging-study"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.conclusion",
      "path" : "DiagnosticReport.conclusion",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.conclusionCode",
      "path" : "DiagnosticReport.conclusionCode",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.presentedForm",
      "path" : "DiagnosticReport.presentedForm",
      "mustSupport" : true
    }]
  }
}

```
