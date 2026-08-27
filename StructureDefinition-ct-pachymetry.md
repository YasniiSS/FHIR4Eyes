# Corneal Tomography - Pachymetry - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Corneal Tomography - Pachymetry**

## Resource Profile: Corneal Tomography - Pachymetry 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ct-pachymetry | *Version*:0.2.0 |
| Draft as of 2026-08-25 | *Computable Name*:CTPachymetry |

 
Represents the pachymetry (corneal thickness) component of a corneal tomography exam, one of six Observations grouped under a single CornealTomographyReport. Distinct from the standalone Pachymetry profile used for simple central corneal thickness measurements outside the tomography context (see Profiles); this profile captures the fuller thickness map data a tomography device produces. Sourced directly from the FHIR4Eyes Observations catalog (Corneal Topography: Pachymetry section). 

**Usages:**

* Examples for this Profile: [Observation/CTPachymetryRightEyeExample](Observation-CTPachymetryRightEyeExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir4eyes.core|current/StructureDefinition/StructureDefinition-ct-pachymetry.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ct-pachymetry.csv), [Excel](StructureDefinition-ct-pachymetry.xlsx), [Schematron](StructureDefinition-ct-pachymetry.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ct-pachymetry",
  "url" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ct-pachymetry",
  "version" : "0.2.0",
  "name" : "CTPachymetry",
  "title" : "Corneal Tomography - Pachymetry",
  "status" : "draft",
  "date" : "2026-08-25T18:52:20+00:00",
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
  "description" : "Represents the pachymetry (corneal thickness) component of a corneal\ntomography exam, one of six Observations grouped under a single CornealTomographyReport.\nDistinct from the standalone Pachymetry profile used for simple central corneal thickness\nmeasurements outside the tomography context (see Profiles); this profile captures the\nfuller thickness map data a tomography device produces. Sourced directly from the\nFHIR4Eyes Observations catalog (Corneal Topography: Pachymetry section).",
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
      "short" : "Identifies this as the pachymetry component of a corneal tomography exam",
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
      },
      "min" : 1
    },
    {
      "id" : "Observation.component:cctApex",
      "path" : "Observation.component",
      "sliceName" : "cctApex",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:cctApex.code",
      "path" : "Observation.component.code",
      "short" : "CCT at apex - central corneal thickness at corneal apex"
    },
    {
      "id" : "Observation.component:cctApex.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:cctPupil",
      "path" : "Observation.component",
      "sliceName" : "cctPupil",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:cctPupil.code",
      "path" : "Observation.component.code",
      "short" : "CCT at pupil center - corneal thickness at pupil center, may differ from apex"
    },
    {
      "id" : "Observation.component:cctPupil.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:thinnest",
      "path" : "Observation.component",
      "sliceName" : "thinnest",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:thinnest.code",
      "path" : "Observation.component.code",
      "short" : "Thinnest point value - thickness at thinnest corneal point, critical for keratoconus"
    },
    {
      "id" : "Observation.component:thinnest.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:thinnestLoc",
      "path" : "Observation.component",
      "sliceName" : "thinnestLoc",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:thinnestLoc.code",
      "path" : "Observation.component.code",
      "short" : "Thinnest point location (x,y) - location of thinnest point from center"
    },
    {
      "id" : "Observation.component:thinnestLoc.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Observation.component:cornealVol",
      "path" : "Observation.component",
      "sliceName" : "cornealVol",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:cornealVol.code",
      "path" : "Observation.component.code",
      "short" : "Corneal volume - total corneal volume"
    },
    {
      "id" : "Observation.component:cornealVol.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:pachyProgression",
      "path" : "Observation.component",
      "sliceName" : "pachyProgression",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:pachyProgression.code",
      "path" : "Observation.component.code",
      "short" : "Pachymetry progression index - rate of thickness change from thinnest point (BAD component Dp)"
    },
    {
      "id" : "Observation.component:pachyProgression.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    }]
  }
}

```
