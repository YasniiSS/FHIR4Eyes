# Strabismus exam panel - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Strabismus exam panel**

## Example Observation: Strabismus exam panel

Profile: [Strabismus Exam](StructureDefinition-strabismus-exam.md)

**status**: Final

**category**: Exam

**code**: Strabismus exam

**subject**: [Patient Example Female, DoB: 1990-01-01 ( Passport number: PA1234567)](Patient-PatientExample.md)

**effective**: 2026-08-18 09:00:00+0000

**performer**: [Practitioner Ophthalmologist Example ](Practitioner-OphthalmologistExample.md)

**hasMember**: 

* [Cover test, near - orthophoria](Observation-CoverTestExample.md)
* [Cover test, far - alternating exotropia](Observation-CoverTestFarExample.md)
* [Ocular motility, left inferior oblique - hypofunction](Observation-OcularMotilityLeftEyeExample.md)
* [Ocular motility, right superior oblique - hyperfunction](Observation-OcularMotilityRightEyeExample.md)
* [Near point of convergence - near nasal](Observation-NearPointOfConvergenceExample.md)
* [Convergence assessment - good](Observation-ConvergenceAssessmentExample.md)
* [Stereopsis (Titmus) - absent](Observation-StereopsisTestExample.md)
* [Prism cover test - far, with correction](Observation-PrismCoverTestExample.md)
* [Krimsky test - far, exo 30 PD FOD / 25 PD FOI](Observation-KrimskyTestExample.md)
* [Hirschberg test - exo about 15 degrees FODI](Observation-HirschbergTestExample.md)
* [Red filter plus light test - near, fusion](Observation-RedFilterLightTestExample.md)
* [Worth 4 dot test - far, right eye suppression](Observation-Worth4DotTestExample.md)



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
    "coding" : [{
      "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
      "code" : "strabismus-exam",
      "display" : "Strabismus examination"
    }],
    "text" : "Strabismus exam"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "effectiveDateTime" : "2026-08-18T09:00:00Z",
  "performer" : [{
    "reference" : "Practitioner/OphthalmologistExample"
  }],
  "hasMember" : [{
    "reference" : "Observation/CoverTestExample",
    "display" : "Cover test, near - orthophoria"
  },
  {
    "reference" : "Observation/CoverTestFarExample",
    "display" : "Cover test, far - alternating exotropia"
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
    "display" : "Prism cover test - far, with correction"
  },
  {
    "reference" : "Observation/KrimskyTestExample",
    "display" : "Krimsky test - far, exo 30 PD FOD / 25 PD FOI"
  },
  {
    "reference" : "Observation/HirschbergTestExample",
    "display" : "Hirschberg test - exo about 15 degrees FODI"
  },
  {
    "reference" : "Observation/RedFilterLightTestExample",
    "display" : "Red filter plus light test - near, fusion"
  },
  {
    "reference" : "Observation/Worth4DotTestExample",
    "display" : "Worth 4 dot test - far, right eye suppression"
  }]
}

```
