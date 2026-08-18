# NearPointOfConvergenceExample - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NearPointOfConvergenceExample**

## Example Observation: NearPointOfConvergenceExample

Profile: [Near Point of Convergence](StructureDefinition-near-point-of-convergence.md)

**status**: Final

**category**: Exam

**code**: Near point of convergence

**subject**: [Patient Example Female, DoB: 1990-01-01](Patient-PatientExample.md)

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
    "text" : "Near point of convergence"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "valueCodeableConcept" : {
    "text" : "Near nasal"
  }
}

```
