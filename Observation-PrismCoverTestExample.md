# PrismCoverTestExample - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PrismCoverTestExample**

## Example Observation: PrismCoverTestExample

Profile: [Prism Cover Test](StructureDefinition-prism-cover-test.md)

**status**: Final

**category**: Exam

**code**: Prism cover test

**subject**: [Patient Example Female, DoB: 1990-01-01 ( PA1234567)](Patient-PatientExample.md)

**hasMember**: [Primary position - fixating left eye, -30 PD](Observation-PrismCoverTestPrimaryPositionExample.md)

> **component****code**: Test distance**value**: Near

> **component****code**: Correction status**value**: With correction



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "PrismCoverTestExample",
  "meta" : {
    "profile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/prism-cover-test"]
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
    "text" : "Prism cover test"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "hasMember" : [{
    "reference" : "Observation/PrismCoverTestPrimaryPositionExample",
    "display" : "Primary position - fixating left eye, -30 PD"
  }],
  "component" : [{
    "code" : {
      "text" : "Test distance"
    },
    "valueCodeableConcept" : {
      "text" : "Near"
    }
  },
  {
    "code" : {
      "text" : "Correction status"
    },
    "valueCodeableConcept" : {
      "text" : "With correction"
    }
  }]
}

```
