# Both eyes (laterality) - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Both eyes (laterality)**

## Example BodyStructure: Both eyes (laterality)

Profile: [Ocular Body Structure](StructureDefinition-ocular-body-structure.md)

**location**: Structure of eye proper

**locationQualifier**: Right and left

**patient**: [Patient Example Female, DoB: 1990-01-01 ( Passport number: PA1234567)](Patient-PatientExample.md)



## Resource Content

```json
{
  "resourceType" : "BodyStructure",
  "id" : "BothEyesStructureExample",
  "meta" : {
    "profile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ocular-body-structure"]
  },
  "location" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "81745001",
      "display" : "Structure of eye proper"
    }]
  },
  "locationQualifier" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "51440002",
      "display" : "Right and left"
    }]
  }],
  "patient" : {
    "reference" : "Patient/PatientExample"
  }
}

```
