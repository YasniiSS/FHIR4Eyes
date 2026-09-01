# StereopsisTestExample - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **StereopsisTestExample**

## Example Observation: StereopsisTestExample

Profile: [Stereopsis Test](StructureDefinition-stereopsis-test.md)

**status**: Final

**category**: Exam

**code**: Stereopsis test

**subject**: [Patient Example Female, DoB: 1990-01-01 ( PA1234567)](Patient-PatientExample.md)

**value**: Absent

**note**: 

> 

Uncertain whether the patient fully understood the test


### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | Test used | Titmus |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "StereopsisTestExample",
  "meta" : {
    "profile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/stereopsis-test"]
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
    "text" : "Stereopsis test"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "valueCodeableConcept" : {
    "text" : "Absent"
  },
  "note" : [{
    "text" : "Uncertain whether the patient fully understood the test"
  }],
  "component" : [{
    "code" : {
      "text" : "Test used"
    },
    "valueCodeableConcept" : {
      "text" : "Titmus"
    }
  }]
}

```
