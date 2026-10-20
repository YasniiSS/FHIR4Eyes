# Near point of convergence - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Near point of convergence**

## Example Observation: Near point of convergence

Profile: [Near Point of Convergence](StructureDefinition-near-point-of-convergence.md)

**status**: Final

**category**: Exam

**code**: Near point of convergence

**subject**: [Patient Example Female, DoB: 1990-01-01 ( Passport number: PA1234567)](Patient-PatientExample.md)

**effective**: 2026-08-18 09:00:00+0000

**performer**: [Practitioner Ophthalmologist Example ](Practitioner-OphthalmologistExample.md)

**value**: Near nasal



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "NearPointOfConvergenceExample",
  "meta" : {
    "profile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/near-point-of-convergence"]
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
      "code" : "near-point-of-convergence",
      "display" : "Near point of convergence"
    }],
    "text" : "Near point of convergence"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "effectiveDateTime" : "2026-08-18T09:00:00Z",
  "performer" : [{
    "reference" : "Practitioner/OphthalmologistExample"
  }],
  "valueCodeableConcept" : {
    "text" : "Near nasal"
  }
}

```
