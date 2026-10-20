# Prism cover test panel - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Prism cover test panel**

## Example Observation: Prism cover test panel

Profile: [Prism Cover Test](StructureDefinition-prism-cover-test.md)

**status**: Final

**category**: Exam

**code**: Prism cover test

**subject**: [Patient Example Female, DoB: 1990-01-01 ( Passport number: PA1234567)](Patient-PatientExample.md)

**effective**: 2026-08-18 09:00:00+0000

**performer**: [Practitioner Ophthalmologist Example ](Practitioner-OphthalmologistExample.md)

**hasMember**: [Primary position - fixating left eye, 30 PD exodeviation](Observation-PrismCoverTestPrimaryPositionExample.md)

> **component****code**: Test distance**value**: Far

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
    "coding" : [{
      "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
      "code" : "prism-cover-test",
      "display" : "Prism cover test"
    }],
    "text" : "Prism cover test"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "effectiveDateTime" : "2026-08-18T09:00:00Z",
  "performer" : [{
    "reference" : "Practitioner/OphthalmologistExample"
  }],
  "hasMember" : [{
    "reference" : "Observation/PrismCoverTestPrimaryPositionExample",
    "display" : "Primary position - fixating left eye, 30 PD exodeviation"
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
        "code" : "far",
        "display" : "Far"
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
