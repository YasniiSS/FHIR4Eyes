# Ophthalmic Imaging Study - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ophthalmic Imaging Study**

## Resource Profile: Ophthalmic Imaging Study 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-imaging-study | *Version*:0.1.0 |
| Draft as of 2026-08-18 | *Computable Name*:OphthalmicImagingStudy |

 
An ophthalmic imaging study, such as OCT, retinography, or angiography. Always traceable back to the medical order that led to it via basedOn. Laterality is represented both through the native series.bodySite/series.laterality Coding fields (for standard DICOM/PACS compatibility) and through an additional extension referencing OcularBodyStructure (for structured cross-resource navigation, consistent with the rest of this guide). 

**Usages:**

* Refer to this Profile: [Ophthalmic Diagnostic Report](StructureDefinition-ophthalmic-diagnostic-report.md)
* Examples for this Profile: [ImagingStudy/OCTMaculaLeftEyeExample](ImagingStudy-OCTMaculaLeftEyeExample.md) and [ImagingStudy/OCTOpticDiscLeftEyeExample](ImagingStudy-OCTOpticDiscLeftEyeExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir4eyes.core|current/StructureDefinition/StructureDefinition-ophthalmic-imaging-study.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ophthalmic-imaging-study.csv), [Excel](StructureDefinition-ophthalmic-imaging-study.xlsx), [Schematron](StructureDefinition-ophthalmic-imaging-study.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ophthalmic-imaging-study",
  "url" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-imaging-study",
  "version" : "0.1.0",
  "name" : "OphthalmicImagingStudy",
  "title" : "Ophthalmic Imaging Study",
  "status" : "draft",
  "date" : "2026-08-18T20:04:06+00:00",
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
  "description" : "An ophthalmic imaging study, such as OCT, retinography, or angiography.\r\nAlways traceable back to the medical order that led to it via basedOn. Laterality is\r\nrepresented both through the native series.bodySite/series.laterality Coding fields (for\r\nstandard DICOM/PACS compatibility) and through an additional extension referencing\r\nOcularBodyStructure (for structured cross-resource navigation, consistent with the rest of\r\nthis guide).",
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
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "dicom",
    "uri" : "http://nema.org/dicom",
    "name" : "DICOM Tag Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ImagingStudy",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ImagingStudy",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ImagingStudy",
      "path" : "ImagingStudy"
    },
    {
      "id" : "ImagingStudy.identifier",
      "path" : "ImagingStudy.identifier",
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.status",
      "path" : "ImagingStudy.status",
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.modality",
      "path" : "ImagingStudy.modality",
      "short" : "Acquisition modality for all series in the study",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.subject",
      "path" : "ImagingStudy.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.encounter",
      "path" : "ImagingStudy.encounter",
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.started",
      "path" : "ImagingStudy.started",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.basedOn",
      "path" : "ImagingStudy.basedOn",
      "short" : "The medical order that led to this study being acquired",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-service-request"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.numberOfSeries",
      "path" : "ImagingStudy.numberOfSeries",
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.numberOfInstances",
      "path" : "ImagingStudy.numberOfInstances",
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.note",
      "path" : "ImagingStudy.note",
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.series",
      "path" : "ImagingStudy.series",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.series.extension",
      "path" : "ImagingStudy.series.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "ImagingStudy.series.extension:bodySiteEye",
      "path" : "ImagingStudy.series.extension",
      "sliceName" : "bodySiteEye",
      "short" : "Structured reference to the same OcularBodyStructure instance used elsewhere for this patient/encounter",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/bodySite"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.series.extension:bodySiteEye.value[x]",
      "path" : "ImagingStudy.series.extension.value[x]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ocular-body-structure"]
      }]
    },
    {
      "id" : "ImagingStudy.series.uid",
      "path" : "ImagingStudy.series.uid",
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.series.modality",
      "path" : "ImagingStudy.series.modality",
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.series.bodySite",
      "path" : "ImagingStudy.series.bodySite",
      "short" : "The anatomical eye structure examined (e.g. cornea, retina), coded using SNOMED CT",
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.series.laterality",
      "path" : "ImagingStudy.series.laterality",
      "short" : "Laterality of the structure examined, coded using SNOMED CT",
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.series.instance",
      "path" : "ImagingStudy.series.instance",
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.series.instance.uid",
      "path" : "ImagingStudy.series.instance.uid",
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.series.instance.sopClass",
      "path" : "ImagingStudy.series.instance.sopClass",
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.series.instance.title",
      "path" : "ImagingStudy.series.instance.title",
      "mustSupport" : true
    }]
  }
}

```
