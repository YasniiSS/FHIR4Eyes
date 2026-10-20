# Cover test: near - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Cover test: near**

## Example Observation: Cover test: near

Profile: [Cover Test](StructureDefinition-cover-test.md)

**status**: Final

**category**: Exam

**code**: Cover test

**subject**: [Patient Example Female, DoB: 1990-01-01 ( Passport number: PA1234567)](Patient-PatientExample.md)

**effective**: 2026-08-18 09:00:00+0000

**performer**: [Practitioner Ophthalmologist Example ](Practitioner-OphthalmologistExample.md)

**value**: Orthophoria

> **component****code**: Test distance**value**: Near

> **component****code**: Correction status**value**: With correction



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
    "coding" : [{
      "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
      "code" : "cover-test",
      "display" : "Cover test"
    }],
    "text" : "Cover test"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "effectiveDateTime" : "2026-08-18T09:00:00Z",
  "performer" : [{
    "reference" : "Practitioner/OphthalmologistExample"
  }],
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
      "code" : "orthophoria",
      "display" : "Orthophoria"
    }],
    "text" : "Orthophoria"
  },
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
