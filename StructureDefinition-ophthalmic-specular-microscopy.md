# Ophthalmic Specular Microscopy - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ophthalmic Specular Microscopy**

## Resource Profile: Ophthalmic Specular Microscopy 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-specular-microscopy | *Version*:0.2.0 |
| Draft as of 2026-08-25 | *Computable Name*:OphthalmicSpecularMicroscopy |

 
Represents a corneal endothelial specular microscopy exam. Sourced directly from the FHIR4Eyes Observations catalog (Specular Microscopy section). 

**Usages:**

* Examples for this Profile: [Observation/SpecularMicroscopyRightEyeExample](Observation-SpecularMicroscopyRightEyeExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir4eyes.core|current/StructureDefinition/StructureDefinition-ophthalmic-specular-microscopy.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ophthalmic-specular-microscopy.csv), [Excel](StructureDefinition-ophthalmic-specular-microscopy.xlsx), [Schematron](StructureDefinition-ophthalmic-specular-microscopy.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ophthalmic-specular-microscopy",
  "url" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-specular-microscopy",
  "version" : "0.2.0",
  "name" : "OphthalmicSpecularMicroscopy",
  "title" : "Ophthalmic Specular Microscopy",
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
  "description" : "Represents a corneal endothelial specular microscopy exam. Sourced directly\nfrom the FHIR4Eyes Observations catalog (Specular Microscopy section).",
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
      "short" : "Identifies this as a specular microscopy exam",
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
      "id" : "Observation.method",
      "path" : "Observation.method",
      "short" : "Analysis method: automated, manual, or semi-automated cell counting",
      "mustSupport" : true
    },
    {
      "id" : "Observation.device",
      "path" : "Observation.device",
      "short" : "Specular microscope model (e.g. Topcon SP-1P, Konan, Nidek)",
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
      "id" : "Observation.component:capturePos",
      "path" : "Observation.component",
      "sliceName" : "capturePos",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:capturePos.code",
      "path" : "Observation.component.code",
      "short" : "Capture position - location of corneal capture (center, paracentral, peripheral)"
    },
    {
      "id" : "Observation.component:capturePos.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Observation.component:density",
      "path" : "Observation.component",
      "sliceName" : "density",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:density.code",
      "path" : "Observation.component.code",
      "short" : "Endothelial cell density (CD) - endothelial cell count"
    },
    {
      "id" : "Observation.component:density.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:cellCount",
      "path" : "Observation.component",
      "sliceName" : "cellCount",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:cellCount.code",
      "path" : "Observation.component.code",
      "short" : "Number of cells analyzed (N) - total cells counted in analysis area"
    },
    {
      "id" : "Observation.component:cellCount.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:cv",
      "path" : "Observation.component",
      "sliceName" : "cv",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:cv.code",
      "path" : "Observation.component.code",
      "short" : "Coefficient of variation (CV) - cell size variability (polymegathism), normal <40%"
    },
    {
      "id" : "Observation.component:cv.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:hexagonality",
      "path" : "Observation.component",
      "sliceName" : "hexagonality",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:hexagonality.code",
      "path" : "Observation.component.code",
      "short" : "Hexagonality (HEX) - percentage of hexagonal cells (pleomorphism), normal >50%"
    },
    {
      "id" : "Observation.component:hexagonality.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:cct",
      "path" : "Observation.component",
      "sliceName" : "cct",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:cct.code",
      "path" : "Observation.component.code",
      "short" : "Central corneal thickness (CCT) - CCT measured by specular"
    },
    {
      "id" : "Observation.component:cct.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:minArea",
      "path" : "Observation.component",
      "sliceName" : "minArea",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:minArea.code",
      "path" : "Observation.component.code",
      "short" : "Minimum cell area (MIN) - smallest cell area measured"
    },
    {
      "id" : "Observation.component:minArea.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:maxArea",
      "path" : "Observation.component",
      "sliceName" : "maxArea",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:maxArea.code",
      "path" : "Observation.component.code",
      "short" : "Maximum cell area (MAX) - largest cell area measured"
    },
    {
      "id" : "Observation.component:maxArea.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:avgArea",
      "path" : "Observation.component",
      "sliceName" : "avgArea",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:avgArea.code",
      "path" : "Observation.component.code",
      "short" : "Average cell area (AVG) - mean cell area"
    },
    {
      "id" : "Observation.component:avgArea.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:sdArea",
      "path" : "Observation.component",
      "sliceName" : "sdArea",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:sdArea.code",
      "path" : "Observation.component.code",
      "short" : "Cell area SD - standard deviation of cell area"
    },
    {
      "id" : "Observation.component:sdArea.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    }]
  }
}

```
