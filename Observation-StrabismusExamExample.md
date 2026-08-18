# StrabismusExamExample - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **StrabismusExamExample**

## Example Observation: StrabismusExamExample

Profile: [Strabismus Exam](StructureDefinition-strabismus-exam.md)

**status**: Final

**category**: Exam

**code**: Strabismus exam

**subject**: [Patient Example Female, DoB: 1990-01-01](Patient-PatientExample.md)

**hasMember**: 

* [Cover test - alternating exotropia](Observation-CoverTestExample.md)
* [Ocular motility, left inferior oblique - hypofunction](Observation-OcularMotilityLeftEyeExample.md)
* [Ocular motility, right superior oblique - hyperfunction](Observation-OcularMotilityRightEyeExample.md)
* [Near point of convergence - near nasal](Observation-NearPointOfConvergenceExample.md)
* [Convergence assessment - good](Observation-ConvergenceAssessmentExample.md)
* [Stereopsis (Titmus) - absent](Observation-StereopsisTestExample.md)
* [Prism cover test - near, with correction](Observation-PrismCoverTestExample.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "StrabismusExamExample",
  "meta" : {
    "profile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/strabismus-exam"]
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
    "text" : "Strabismus exam"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "hasMember" : [{
    "reference" : "Observation/CoverTestExample",
    "display" : "Cover test - alternating exotropia"
  },
  {
    "reference" : "Observation/OcularMotilityLeftEyeExample",
    "display" : "Ocular motility, left inferior oblique - hypofunction"
  },
  {
    "reference" : "Observation/OcularMotilityRightEyeExample",
    "display" : "Ocular motility, right superior oblique - hyperfunction"
  },
  {
    "reference" : "Observation/NearPointOfConvergenceExample",
    "display" : "Near point of convergence - near nasal"
  },
  {
    "reference" : "Observation/ConvergenceAssessmentExample",
    "display" : "Convergence assessment - good"
  },
  {
    "reference" : "Observation/StereopsisTestExample",
    "display" : "Stereopsis (Titmus) - absent"
  },
  {
    "reference" : "Observation/PrismCoverTestExample",
    "display" : "Prism cover test - near, with correction"
  }]
}

```
