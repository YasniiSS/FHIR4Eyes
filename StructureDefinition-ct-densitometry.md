# Corneal Tomography - Densitometry - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Corneal Tomography - Densitometry**

## Resource Profile: Corneal Tomography - Densitometry 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ct-densitometry | *Version*:0.4.0 |
| Draft as of 2026-10-20 | *Computable Name*:CTDensitometry |

 
Represents the corneal densitometry (light backscatter) component of a corneal tomography exam, one of six Observations grouped under a single CornealTomographyReport. Sourced directly from the FHIR4Eyes Observations catalog (Corneal Topography: Densitometry section): three radial zones plus total, and a per-layer breakdown (anterior, central, posterior). Component codes are local FHIR4Eyes codes, as no confirmed laterality-neutral SNOMED CT/LOINC codes were identified for these device-specific measurements (see Terminology). 

Represents the corneal densitometry (light backscatter) analysis of a corneal tomography exam: three radial zones (0-2 mm, 2-6 mm, 6-10 mm) plus total, and a per-layer breakdown (anterior, central, posterior). Densitometry describes a transparency/light-scatter property rather than a shape property, so it is one of six separate analyses grouped under a single [CornealTomographyReport](StructureDefinition-corneal-tomography-report.md), following the rule of thumb explained on that page. Component codes are local FHIR4Eyes codes ([FHIR4EyesCS](CodeSystem-fhir4eyes-cs.md)) pending an external code (see [Terminology](terminology.md)).

**Examples:** [CT densitometry: right eye](Observation-CTDensitometryRightEyeExample.md)

**Usages:**

* Refer to this Profile: [Corneal Tomography Report](StructureDefinition-corneal-tomography-report.md)
* Examples for this Profile: [Observation/CTDensitometryRightEyeExample](Observation-CTDensitometryRightEyeExample.md)
* CapabilityStatements using this Profile: [FHIR4Eyes Server Capability Statement](CapabilityStatement-FHIR4EyesCapabilityStatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir4eyes.core|current/StructureDefinition/StructureDefinition-ct-densitometry.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ct-densitometry.csv), [Excel](StructureDefinition-ct-densitometry.xlsx), [Schematron](StructureDefinition-ct-densitometry.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ct-densitometry",
  "url" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ct-densitometry",
  "version" : "0.4.0",
  "name" : "CTDensitometry",
  "title" : "Corneal Tomography - Densitometry",
  "status" : "draft",
  "date" : "2026-10-20T20:13:11-03:00",
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
  "description" : "Represents the corneal densitometry (light backscatter) component of a\ncorneal tomography exam, one of six Observations grouped under a single\nCornealTomographyReport. Sourced directly from the FHIR4Eyes Observations catalog\n(Corneal Topography: Densitometry section): three radial zones plus total, and a\nper-layer breakdown (anterior, central, posterior). Component codes are local FHIR4Eyes codes, as no confirmed laterality-neutral SNOMED CT/LOINC codes were identified for these device-specific measurements (see Terminology).",
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
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
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
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.status",
      "path" : "Observation.status",
      "mustSupport" : true
    },
    {
      "id" : "Observation.category",
      "path" : "Observation.category",
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
      "id" : "Observation.category:exam",
      "path" : "Observation.category",
      "sliceName" : "exam",
      "min" : 1,
      "max" : "1",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "exam",
          "display" : "Exam"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "short" : "Identifies this as the densitometry component of a corneal tomography exam",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "corneal-densitometry",
          "display" : "Corneal densitometry"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.encounter",
      "path" : "Observation.encounter",
      "mustSupport" : true
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "mustSupport" : true
    },
    {
      "id" : "Observation.note",
      "path" : "Observation.note",
      "mustSupport" : true
    },
    {
      "id" : "Observation.bodySite",
      "path" : "Observation.bodySite",
      "mustSupport" : true
    },
    {
      "id" : "Observation.bodySite.extension:bodySiteEye",
      "path" : "Observation.bodySite.extension",
      "sliceName" : "bodySiteEye",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/bodySite|5.3.0"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.bodySite.extension:bodySiteEye.value[x]",
      "path" : "Observation.bodySite.extension.value[x]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ocular-body-structure"]
      }]
    },
    {
      "id" : "Observation.device",
      "path" : "Observation.device",
      "short" : "The tomographer used (e.g. Scheimpflug)",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "code"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.component:densitometry02",
      "path" : "Observation.component",
      "sliceName" : "densitometry02",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:densitometry02.code",
      "path" : "Observation.component.code",
      "short" : "Densitometry 0-2mm zone - central zone corneal transparency (Grayscale Units)",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "corneal-densitometry-zone-0-2mm",
          "display" : "Corneal densitometry, 0-2 mm zone"
        }]
      }
    },
    {
      "id" : "Observation.component:densitometry02.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:densitometry26",
      "path" : "Observation.component",
      "sliceName" : "densitometry26",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:densitometry26.code",
      "path" : "Observation.component.code",
      "short" : "Densitometry 2-6mm zone - paracentral zone transparency",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "corneal-densitometry-zone-2-6mm",
          "display" : "Corneal densitometry, 2-6 mm zone"
        }]
      }
    },
    {
      "id" : "Observation.component:densitometry26.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:densitometry610",
      "path" : "Observation.component",
      "sliceName" : "densitometry610",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:densitometry610.code",
      "path" : "Observation.component.code",
      "short" : "Densitometry 6-10mm zone - peripheral zone transparency",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "corneal-densitometry-zone-6-10mm",
          "display" : "Corneal densitometry, 6-10 mm zone"
        }]
      }
    },
    {
      "id" : "Observation.component:densitometry610.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:densitometryTotal",
      "path" : "Observation.component",
      "sliceName" : "densitometryTotal",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:densitometryTotal.code",
      "path" : "Observation.component.code",
      "short" : "Densitometry total - overall corneal transparency",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "corneal-densitometry-total",
          "display" : "Corneal densitometry, total"
        }]
      }
    },
    {
      "id" : "Observation.component:densitometryTotal.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:densitometryAnt",
      "path" : "Observation.component",
      "sliceName" : "densitometryAnt",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:densitometryAnt.code",
      "path" : "Observation.component.code",
      "short" : "Densitometry anterior layer - anterior 120um layer transparency, by corneal layer",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "corneal-densitometry-anterior-layer",
          "display" : "Corneal densitometry, anterior layer"
        }]
      }
    },
    {
      "id" : "Observation.component:densitometryAnt.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:densitometryCenter",
      "path" : "Observation.component",
      "sliceName" : "densitometryCenter",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:densitometryCenter.code",
      "path" : "Observation.component.code",
      "short" : "Densitometry central layer - central stromal layer transparency, by corneal layer",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "corneal-densitometry-central-layer",
          "display" : "Corneal densitometry, central layer"
        }]
      }
    },
    {
      "id" : "Observation.component:densitometryCenter.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:densitometryPost",
      "path" : "Observation.component",
      "sliceName" : "densitometryPost",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:densitometryPost.code",
      "path" : "Observation.component.code",
      "short" : "Densitometry posterior layer - posterior 60um layer transparency, by corneal layer",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "corneal-densitometry-posterior-layer",
          "display" : "Corneal densitometry, posterior layer"
        }]
      }
    },
    {
      "id" : "Observation.component:densitometryPost.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    }]
  }
}

```
