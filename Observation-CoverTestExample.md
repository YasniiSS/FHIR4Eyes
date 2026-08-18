# CoverTestExample - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CoverTestExample**

## Example Observation: CoverTestExample

Profile: [Cover Test](StructureDefinition-cover-test.md)

**status**: Final

**category**: Exam

**code**: Cover test

**subject**: [Patient Example Female, DoB: 1990-01-01](Patient-PatientExample.md)

**value**: PC: orthophoria; PL: alternating exotropia switching with intermittent exotropia

### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | Correction status | With correction |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "CoverTestExample",
  "meta" : {
    "profile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/cover-test"]
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
    "text" : "Cover test"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "valueString" : "PC: orthophoria; PL: alternating exotropia switching with intermittent exotropia",
  "component" : [{
    "code" : {
      "text" : "Correction status"
    },
    "valueCodeableConcept" : {
      "text" : "With correction"
    }
  }]
}

```
