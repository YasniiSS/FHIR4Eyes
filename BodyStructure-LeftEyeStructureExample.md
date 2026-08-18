# LeftEyeStructureExample - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LeftEyeStructureExample**

## Example BodyStructure: LeftEyeStructureExample

Profile: [Ocular Body Structure](StructureDefinition-ocular-body-structure.md)

**location**: Structure of eye proper

**locationQualifier**: Left

**patient**: [Patient Example Female, DoB: 1990-01-01](Patient-PatientExample.md)



## Resource Content

```json
{
  "resourceType" : "BodyStructure",
  "id" : "LeftEyeStructureExample",
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
      "code" : "7771000",
      "display" : "Left"
    }]
  }],
  "patient" : {
    "reference" : "Patient/PatientExample"
  }
}

```
