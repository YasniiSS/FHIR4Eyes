# PrismCoverTestPrimaryPositionExample - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PrismCoverTestPrimaryPositionExample**

## Example Observation: PrismCoverTestPrimaryPositionExample

Profile: [Gaze Position Measurement](StructureDefinition-gaze-position-measurement.md)

**status**: Final

**category**: Exam

**code**: Primary position

**subject**: [Patient Example Female, DoB: 1990-01-01](Patient-PatientExample.md)

**bodySite**: 

> **component****code**: Fixating eye**value**: Left

> **component****code**: Horizontal deviation**value**: -30 prism diopter (Details: UCUM codeprism diopter = 'prism diopter')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "PrismCoverTestPrimaryPositionExample",
  "meta" : {
    "profile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/gaze-position-measurement"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "exam",
      "display" : "Exam"
    }]
  }],
  "code" : {
    "text" : "Primary position"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "bodySite" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/bodySite",
      "valueReference" : {
        "reference" : "BodyStructure/RightEyeStructureExample"
      }
    }]
  },
  "component" : [{
    "code" : {
      "text" : "Fixating eye"
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "7771000",
        "display" : "Left"
      }]
    }
  },
  {
    "code" : {
      "text" : "Horizontal deviation"
    },
    "valueQuantity" : {
      "value" : -30,
      "system" : "http://unitsofmeasure.org",
      "code" : "prism diopter"
    }
  }]
}

```
