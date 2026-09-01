# Gaze Position Measurement - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Gaze Position Measurement**

## Resource Profile: Gaze Position Measurement 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/StructureDefinition/gaze-position-measurement | *Version*:0.3.0 |
| Draft as of 2026-09-01 | *Computable Name*:GazePositionMeasurement |

 
A reusable pattern for a single measurement or finding taken at one gaze position (e.g. primary position, right gaze, up-and-right gaze). Used by PrismCoverTest and KrimskyTest for quantitative prism diopter deviation, and by HirschbergTest, RedFilterLightTest, and Worth4DotTest for a qualitative finding at each position. Each test uses only the components relevant to it; all components are optional. Not intended to be used standalone; always referenced via hasMember from one of those panels. 

**Usages:**

* Refer to this Profile: [Hirschberg Test](StructureDefinition-hirschberg-test.md), [Krimsky Test](StructureDefinition-krimsky-test.md), [Prism Cover Test](StructureDefinition-prism-cover-test.md), [Red Filter Light Test](StructureDefinition-red-filter-light-test.md) and [Worth 4 Dot Test](StructureDefinition-worth-4-dot-test.md)
* Examples for this Profile: [Observation/PrismCoverTestPrimaryPositionExample](Observation-PrismCoverTestPrimaryPositionExample.md)
* CapabilityStatements using this Profile: [FHIR4Eyes Server Capability Statement](CapabilityStatement-FHIR4EyesCapabilityStatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir4eyes.core|current/StructureDefinition/StructureDefinition-gaze-position-measurement.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-gaze-position-measurement.csv), [Excel](StructureDefinition-gaze-position-measurement.xlsx), [Schematron](StructureDefinition-gaze-position-measurement.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "gaze-position-measurement",
  "url" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/gaze-position-measurement",
  "version" : "0.3.0",
  "name" : "GazePositionMeasurement",
  "title" : "Gaze Position Measurement",
  "status" : "draft",
  "date" : "2026-09-01T17:43:23+00:00",
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
  "description" : "A reusable pattern for a single measurement or finding taken at one gaze\r\nposition (e.g. primary position, right gaze, up-and-right gaze). Used by PrismCoverTest and\r\nKrimskyTest for quantitative prism diopter deviation, and by HirschbergTest,\r\nRedFilterLightTest, and Worth4DotTest for a qualitative finding at each position. Each test\r\nuses only the components relevant to it; all components are optional. Not intended to be\r\nused standalone; always referenced via hasMember from one of those panels.",
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
      "short" : "Identifies the gaze position this measurement was taken at (e.g. primary position, right gaze)",
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
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "max" : "0"
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
      "short" : "The eye being measured (deviating eye)",
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
      "id" : "Observation.component:fixatingEye",
      "path" : "Observation.component",
      "sliceName" : "fixatingEye",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:fixatingEye.code",
      "path" : "Observation.component.code",
      "short" : "The eye that was fixating during this measurement"
    },
    {
      "id" : "Observation.component:fixatingEye.value[x]",
      "path" : "Observation.component.value[x]",
      "short" : "Right or left eye (SNOMED CT 24028007 / 7771000)",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Observation.component:horizontalDeviation",
      "path" : "Observation.component",
      "sliceName" : "horizontalDeviation",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:horizontalDeviation.code",
      "path" : "Observation.component.code",
      "short" : "Horizontal deviation, in prism diopters (used by PrismCoverTest, KrimskyTest)"
    },
    {
      "id" : "Observation.component:horizontalDeviation.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:verticalDeviation",
      "path" : "Observation.component",
      "sliceName" : "verticalDeviation",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:verticalDeviation.code",
      "path" : "Observation.component.code",
      "short" : "Vertical deviation, in prism diopters, when present (used by PrismCoverTest, KrimskyTest)"
    },
    {
      "id" : "Observation.component:verticalDeviation.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:finding",
      "path" : "Observation.component",
      "sliceName" : "finding",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:finding.code",
      "path" : "Observation.component.code",
      "short" : "Qualitative finding at this position (used by HirschbergTest, RedFilterLightTest, Worth4DotTest)"
    },
    {
      "id" : "Observation.component:finding.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    }]
  }
}

```
