# Red filter light test panel - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Red filter light test panel**

## Example Observation: Red filter light test panel

Profile: [Red Filter Light Test](StructureDefinition-red-filter-light-test.md)

**status**: Final

**category**: Exam

**code**: Red filter plus light test

**subject**: [Patient Example Female, DoB: 1990-01-01 ( Passport number: PA1234567)](Patient-PatientExample.md)

**effective**: 2026-08-18 09:00:00+0000

**performer**: [Practitioner Ophthalmologist Example ](Practitioner-OphthalmologistExample.md)

**hasMember**: [Primary position - fusion](Observation-RedFilterPrimaryPositionExample.md)

> **component****code**: Test distance**value**: Near

> **component****code**: Correction status**value**: With correction



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "RedFilterLightTestExample",
  "meta" : {
    "profile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/red-filter-light-test"]
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
      "code" : "red-filter-light-test",
      "display" : "Red filter plus light test"
    }],
    "text" : "Red filter plus light test"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "effectiveDateTime" : "2026-08-18T09:00:00Z",
  "performer" : [{
    "reference" : "Practitioner/OphthalmologistExample"
  }],
  "hasMember" : [{
    "reference" : "Observation/RedFilterPrimaryPositionExample",
    "display" : "Primary position - fusion"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "test-distance-category",
        "display" : "Testing distance category (near/far)"
      }],
      "text" : "Test distance"
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "near",
        "display" : "Near"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "correction-status",
        "display" : "Refractive correction status during test"
      }],
      "text" : "Correction status"
    },
    "valueCodeableConcept" : {
      "text" : "With correction"
    }
  }]
}

```
