# Corneal Tomography - Keratoconus Indices - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Corneal Tomography - Keratoconus Indices**

## Resource Profile: Corneal Tomography - Keratoconus Indices 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ct-keratoconus-indices | *Version*:0.2.0 |
| Draft as of 2026-08-25 | *Computable Name*:CTKeratoconusIndices |

 
Represents the keratoconus screening/classification indices component of a corneal tomography exam, one of six Observations grouped under a single CornealTomographyReport. Sourced directly from the FHIR4Eyes Observations catalog (Corneal Topography: Keratoconus Indices section). Component codes are left as open text for now, following this guide's terminology rigor (see Terminology). 

**Usages:**

* Examples for this Profile: [Observation/CTKeratoconusIndicesRightEyeExample](Observation-CTKeratoconusIndicesRightEyeExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir4eyes.core|current/StructureDefinition/StructureDefinition-ct-keratoconus-indices.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ct-keratoconus-indices.csv), [Excel](StructureDefinition-ct-keratoconus-indices.xlsx), [Schematron](StructureDefinition-ct-keratoconus-indices.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ct-keratoconus-indices",
  "url" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ct-keratoconus-indices",
  "version" : "0.2.0",
  "name" : "CTKeratoconusIndices",
  "title" : "Corneal Tomography - Keratoconus Indices",
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
  "description" : "Represents the keratoconus screening/classification indices component of a\ncorneal tomography exam, one of six Observations grouped under a single\nCornealTomographyReport. Sourced directly from the FHIR4Eyes Observations catalog\n(Corneal Topography: Keratoconus Indices section). Component codes are left as open text\nfor now, following this guide's terminology rigor (see Terminology).",
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
      "short" : "Identifies this as the keratoconus indices component of a corneal tomography exam",
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
      "id" : "Observation.component:badD",
      "path" : "Observation.component",
      "sliceName" : "badD",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:badD.code",
      "path" : "Observation.component.code",
      "short" : "BAD-D (final D) - Belin-Ambrósio total deviation index, key KC screening index"
    },
    {
      "id" : "Observation.component:badD.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:badDf",
      "path" : "Observation.component",
      "sliceName" : "badDf",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:badDf.code",
      "path" : "Observation.component.code",
      "short" : "BAD Df (front deviation) - anterior elevation deviation from enhanced BFS"
    },
    {
      "id" : "Observation.component:badDf.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:badDb",
      "path" : "Observation.component",
      "sliceName" : "badDb",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:badDb.code",
      "path" : "Observation.component.code",
      "short" : "BAD Db (back deviation) - posterior elevation deviation from enhanced BFS"
    },
    {
      "id" : "Observation.component:badDb.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:badDp",
      "path" : "Observation.component",
      "sliceName" : "badDp",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:badDp.code",
      "path" : "Observation.component.code",
      "short" : "BAD Dp (pachymetric deviation) - pachymetric progression deviation"
    },
    {
      "id" : "Observation.component:badDp.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:badDt",
      "path" : "Observation.component",
      "sliceName" : "badDt",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:badDt.code",
      "path" : "Observation.component.code",
      "short" : "BAD Dt (thinnest deviation) - thinnest point deviation"
    },
    {
      "id" : "Observation.component:badDt.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:badDy",
      "path" : "Observation.component",
      "sliceName" : "badDy",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:badDy.code",
      "path" : "Observation.component.code",
      "short" : "BAD Dy (vertical asymmetry) - Y-coordinate asymmetry deviation"
    },
    {
      "id" : "Observation.component:badDy.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:badClassif",
      "path" : "Observation.component",
      "sliceName" : "badClassif",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:badClassif.code",
      "path" : "Observation.component.code",
      "short" : "BAD classification - BAD result classification (normal/suspicious/abnormal), color-coded"
    },
    {
      "id" : "Observation.component:badClassif.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Observation.component:enhBfsFront",
      "path" : "Observation.component",
      "sliceName" : "enhBfsFront",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:enhBfsFront.code",
      "path" : "Observation.component.code",
      "short" : "Enhanced BFS radius front - enhanced best fit sphere anterior, BAD enhanced reference"
    },
    {
      "id" : "Observation.component:enhBfsFront.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:enhBfsBack",
      "path" : "Observation.component",
      "sliceName" : "enhBfsBack",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:enhBfsBack.code",
      "path" : "Observation.component.code",
      "short" : "Enhanced BFS radius back - enhanced best fit sphere posterior, BAD enhanced reference"
    },
    {
      "id" : "Observation.component:enhBfsBack.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:amslerKrumeich",
      "path" : "Observation.component",
      "sliceName" : "amslerKrumeich",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:amslerKrumeich.code",
      "path" : "Observation.component.code",
      "short" : "Amsler-Krumeich stage - classic keratoconus staging (I-IV)"
    },
    {
      "id" : "Observation.component:amslerKrumeich.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Observation.component:abcdGrading",
      "path" : "Observation.component",
      "sliceName" : "abcdGrading",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:abcdGrading.code",
      "path" : "Observation.component.code",
      "short" : "ABCD grading (Belin) - Belin ABCD keratoconus grading, modern grading"
    },
    {
      "id" : "Observation.component:abcdGrading.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Observation.component:isv",
      "path" : "Observation.component",
      "sliceName" : "isv",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:isv.code",
      "path" : "Observation.component.code",
      "short" : "ISV (Index Surface Variance) - deviation of corneal radii from mean, topometric index"
    },
    {
      "id" : "Observation.component:isv.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:iva",
      "path" : "Observation.component",
      "sliceName" : "iva",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:iva.code",
      "path" : "Observation.component.code",
      "short" : "IVA (Index Vertical Asymmetry) - superior-inferior curvature asymmetry, topometric index"
    },
    {
      "id" : "Observation.component:iva.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:ki",
      "path" : "Observation.component",
      "sliceName" : "ki",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:ki.code",
      "path" : "Observation.component.code",
      "short" : "KI (Keratoconus Index) - central-peripheral curvature ratio, topometric index"
    },
    {
      "id" : "Observation.component:ki.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:cki",
      "path" : "Observation.component",
      "sliceName" : "cki",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:cki.code",
      "path" : "Observation.component.code",
      "short" : "CKI (Center Keratoconus Index) - central corneal curvature index, topometric index"
    },
    {
      "id" : "Observation.component:cki.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:iha",
      "path" : "Observation.component",
      "sliceName" : "iha",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:iha.code",
      "path" : "Observation.component.code",
      "short" : "IHA (Index Height Asymmetry) - height decentration index, topometric index"
    },
    {
      "id" : "Observation.component:iha.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:ihd",
      "path" : "Observation.component",
      "sliceName" : "ihd",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:ihd.code",
      "path" : "Observation.component.code",
      "short" : "IHD (Index Height Decentration) - degree of vertical decentration, topometric index"
    },
    {
      "id" : "Observation.component:ihd.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:rminSag",
      "path" : "Observation.component",
      "sliceName" : "rminSag",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:rminSag.code",
      "path" : "Observation.component.code",
      "short" : "Rmin (minimum sagittal curvature) - steepest point radius"
    },
    {
      "id" : "Observation.component:rminSag.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:tkc",
      "path" : "Observation.component",
      "sliceName" : "tkc",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:tkc.code",
      "path" : "Observation.component.code",
      "short" : "TKC (topographic KC classification) - Pentacam KC auto classification"
    },
    {
      "id" : "Observation.component:tkc.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    }]
  }
}

```
