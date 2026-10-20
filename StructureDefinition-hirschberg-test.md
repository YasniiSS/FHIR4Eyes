# Hirschberg Test - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Hirschberg Test**

## Resource Profile: Hirschberg Test 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/StructureDefinition/hirschberg-test | *Version*:0.4.0 |
| Draft as of 2026-10-20 | *Computable Name*:HirschbergTest |

 
Represents a Hirschberg corneal light reflex test, used to estimate the angle of deviation when other tests aren't feasible (e.g. young children). Performed across multiple gaze positions; each position is recorded as a separate GazePositionMeasurement, referenced here via hasMember, using its qualitative finding component. When a quantitative estimate is made, the per-position horizontalDeviation component (positive magnitude, in degrees or prism diopters, with its direction in horizontalDirection) may be used for the estimated deviation, in addition to the finding. 

Represents a Hirschberg corneal light reflex test, used to estimate the angle of deviation when other tests aren't feasible (for example, in young children). It is a **position-based** sub-test of a [StrabismusExam](StructureDefinition-strabismus-exam.md): a small panel (`value[x]` is `0..0`) that groups one [GazePositionMeasurement](StructureDefinition-gaze-position-measurement.md) per gaze position via `hasMember` (`1..*`), each using the qualitative `finding` component. See [StrabismusExam](StructureDefinition-strabismus-exam.md) for the overall architecture.

**Examples:** [Hirschberg test panel](Observation-HirschbergTestExample.md)

**Usages:**

* Examples for this Profile: [Observation/HirschbergTestExample](Observation-HirschbergTestExample.md)
* CapabilityStatements using this Profile: [FHIR4Eyes Server Capability Statement](CapabilityStatement-FHIR4EyesCapabilityStatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir4eyes.core|current/StructureDefinition/StructureDefinition-hirschberg-test.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-hirschberg-test.csv), [Excel](StructureDefinition-hirschberg-test.xlsx), [Schematron](StructureDefinition-hirschberg-test.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hirschberg-test",
  "url" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/hirschberg-test",
  "version" : "0.4.0",
  "name" : "HirschbergTest",
  "title" : "Hirschberg Test",
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
  "description" : "Represents a Hirschberg corneal light reflex test, used to estimate the\r\nangle of deviation when other tests aren't feasible (e.g. young children). Performed across\r\nmultiple gaze positions; each position is recorded as a separate GazePositionMeasurement,\r\nreferenced here via hasMember, using its qualitative finding component. When a\r\nquantitative estimate is made, the per-position horizontalDeviation component (positive\r\nmagnitude, in degrees or prism diopters, with its direction in horizontalDirection) may be\r\nused for the estimated deviation, in addition to the finding.",
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
      "short" : "Identifies this as a Hirschberg test",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "hirschberg-test",
          "display" : "Hirschberg test"
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
      "short" : "Each gaze position assessed (qualitative finding; optionally the estimated deviation in horizontalDeviation, in degrees or prism diopters)",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/gaze-position-measurement"]
      }],
      "mustSupport" : true
    }]
  }
}

```
