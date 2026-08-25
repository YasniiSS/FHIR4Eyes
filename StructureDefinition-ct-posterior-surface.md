# Corneal Tomography - Posterior Surface - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Corneal Tomography - Posterior Surface**

## Resource Profile: Corneal Tomography - Posterior Surface 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ct-posterior-surface | *Version*:0.2.0 |
| Draft as of 2026-08-25 | *Computable Name*:CTPosteriorSurface |

 
Represents the posterior corneal surface analysis component of a corneal tomography exam, one of six Observations grouped under a single CornealTomographyReport. Sourced directly from the FHIR4Eyes Observations catalog (Corneal Topography: Posterior Surface section). Component codes are left as open text for now, following this guide's terminology rigor (see Terminology). 

**Usages:**

* Examples for this Profile: [Observation/CTPosteriorSurfaceRightEyeExample](Observation-CTPosteriorSurfaceRightEyeExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir4eyes.core|current/StructureDefinition/StructureDefinition-ct-posterior-surface.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ct-posterior-surface.csv), [Excel](StructureDefinition-ct-posterior-surface.xlsx), [Schematron](StructureDefinition-ct-posterior-surface.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ct-posterior-surface",
  "url" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ct-posterior-surface",
  "version" : "0.2.0",
  "name" : "CTPosteriorSurface",
  "title" : "Corneal Tomography - Posterior Surface",
  "status" : "draft",
  "date" : "2026-08-25T00:41:24+00:00",
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
  "description" : "Represents the posterior corneal surface analysis component of a corneal\ntomography exam, one of six Observations grouped under a single CornealTomographyReport.\nSourced directly from the FHIR4Eyes Observations catalog (Corneal Topography: Posterior\nSurface section). Component codes are left as open text for now, following this guide's\nterminology rigor (see Terminology).",
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
      "min" : 1,
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
      "short" : "Identifies this as the posterior surface component of a corneal tomography exam",
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
        "profile" : ["http://hl7.org/fhir/StructureDefinition/bodySite"]
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
      "id" : "Observation.component:backK1",
      "path" : "Observation.component",
      "sliceName" : "backK1",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:backK1.code",
      "path" : "Observation.component.code",
      "short" : "K1 back (flat) - posterior surface flat keratometry"
    },
    {
      "id" : "Observation.component:backK1.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:backK2",
      "path" : "Observation.component",
      "sliceName" : "backK2",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:backK2.code",
      "path" : "Observation.component.code",
      "short" : "K2 back (steep) - posterior surface steep keratometry"
    },
    {
      "id" : "Observation.component:backK2.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:backKm",
      "path" : "Observation.component",
      "sliceName" : "backKm",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:backKm.code",
      "path" : "Observation.component.code",
      "short" : "Km back - posterior surface mean keratometry"
    },
    {
      "id" : "Observation.component:backKm.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:backAstig",
      "path" : "Observation.component",
      "sliceName" : "backAstig",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:backAstig.code",
      "path" : "Observation.component.code",
      "short" : "Back astigmatism - posterior surface astigmatism"
    },
    {
      "id" : "Observation.component:backAstig.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:qValueBack",
      "path" : "Observation.component",
      "sliceName" : "qValueBack",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:qValueBack.code",
      "path" : "Observation.component.code",
      "short" : "Q-value back (asphericity) - posterior surface asphericity"
    },
    {
      "id" : "Observation.component:qValueBack.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:elevationBack",
      "path" : "Observation.component",
      "sliceName" : "elevationBack",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:elevationBack.code",
      "path" : "Observation.component.code",
      "short" : "Elevation back BFS - posterior elevation from Best Fit Sphere"
    },
    {
      "id" : "Observation.component:elevationBack.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:bestFitSphereBack",
      "path" : "Observation.component",
      "sliceName" : "bestFitSphereBack",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:bestFitSphereBack.code",
      "path" : "Observation.component.code",
      "short" : "BFS radius back - Best Fit Sphere radius posterior"
    },
    {
      "id" : "Observation.component:bestFitSphereBack.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    }]
  }
}

```
