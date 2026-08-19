# Prism Cover Test - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Prism Cover Test**

## Resource Profile: Prism Cover Test 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/StructureDefinition/prism-cover-test | *Version*:0.1.0 |
| Draft as of 2026-08-19 | *Computable Name*:PrismCoverTest |

 
Represents a prism cover test, measuring ocular deviation in prism diopters across multiple gaze positions. Each gaze position is recorded as a separate GazePositionMeasurement, referenced here via hasMember. Distance and correction status are recorded as components on this panel, following the same granular pattern used for OphthalmicVisualAcuity, rather than being folded into a single pre-coordinated code. 

**Usages:**

* Examples for this Profile: [Observation/PrismCoverTestExample](Observation-PrismCoverTestExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir4eyes.core|current/StructureDefinition/StructureDefinition-prism-cover-test.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-prism-cover-test.csv), [Excel](StructureDefinition-prism-cover-test.xlsx), [Schematron](StructureDefinition-prism-cover-test.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "prism-cover-test",
  "url" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/prism-cover-test",
  "version" : "0.1.0",
  "name" : "PrismCoverTest",
  "title" : "Prism Cover Test",
  "status" : "draft",
  "date" : "2026-08-19T17:13:42+00:00",
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
  "description" : "Represents a prism cover test, measuring ocular deviation in prism diopters\r\nacross multiple gaze positions. Each gaze position is recorded as a separate\r\nGazePositionMeasurement, referenced here via hasMember. Distance and correction status are\r\nrecorded as components on this panel, following the same granular pattern used for\r\nOphthalmicVisualAcuity, rather than being folded into a single pre-coordinated code.",
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
      "short" : "Identifies this as a prism cover test",
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
      "id" : "Observation.note",
      "path" : "Observation.note",
      "mustSupport" : true
    },
    {
      "id" : "Observation.hasMember",
      "path" : "Observation.hasMember",
      "short" : "Each gaze position measured (e.g. primary position, right gaze, up-and-right gaze)",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/gaze-position-measurement"]
      }],
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
      "id" : "Observation.component:testDistance",
      "path" : "Observation.component",
      "sliceName" : "testDistance",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:testDistance.code",
      "path" : "Observation.component.code",
      "short" : "Near or far"
    },
    {
      "id" : "Observation.component:testDistance.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Observation.component:correctionStatus",
      "path" : "Observation.component",
      "sliceName" : "correctionStatus",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:correctionStatus.code",
      "path" : "Observation.component.code",
      "short" : "With or without correction"
    },
    {
      "id" : "Observation.component:correctionStatus.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    }]
  }
}

```
