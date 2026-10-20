# Stereopsis test - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Stereopsis test**

## Example Observation: Stereopsis test

Profile: [Stereopsis Test](StructureDefinition-stereopsis-test.md)

**status**: Final

**category**: Exam

**code**: Stereopsis test

**subject**: [Patient Example Female, DoB: 1990-01-01 ( Passport number: PA1234567)](Patient-PatientExample.md)

**effective**: 2026-08-18 09:00:00+0000

**performer**: [Practitioner Ophthalmologist Example ](Practitioner-OphthalmologistExample.md)

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
    "coding" : [{
      "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
      "code" : "stereopsis-test",
      "display" : "Stereopsis test"
    }],
    "text" : "Stereopsis test"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "effectiveDateTime" : "2026-08-18T09:00:00Z",
  "performer" : [{
    "reference" : "Practitioner/OphthalmologistExample"
  }],
  "valueCodeableConcept" : {
    "text" : "Absent"
  },
  "note" : [{
    "text" : "Uncertain whether the patient fully understood the test"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "stereopsis-test-type",
        "display" : "Stereopsis test type"
      }],
      "text" : "Test used"
    },
    "valueCodeableConcept" : {
      "text" : "Titmus"
    }
  }]
}

```
