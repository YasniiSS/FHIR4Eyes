# ConvergenceAssessmentExample - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ConvergenceAssessmentExample**

## Example Observation: ConvergenceAssessmentExample

Profile: [Convergence Assessment](StructureDefinition-convergence-assessment.md)

**status**: Final

**category**: Exam

**code**: Convergence assessment

**subject**: [Patient Example Female, DoB: 1990-01-01](Patient-PatientExample.md)

**value**: Good



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ConvergenceAssessmentExample",
  "meta" : {
    "profile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/convergence-assessment"]
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
    "text" : "Convergence assessment"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "valueCodeableConcept" : {
    "text" : "Good"
  }
}

```
