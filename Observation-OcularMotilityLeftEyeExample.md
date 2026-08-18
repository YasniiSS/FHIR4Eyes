# OcularMotilityLeftEyeExample - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OcularMotilityLeftEyeExample**

## Example Observation: OcularMotilityLeftEyeExample

Profile: [Ocular Motility](StructureDefinition-ocular-motility.md)

**status**: Final

**category**: Exam

**code**: Ocular motility

**subject**: [Patient Example Female, DoB: 1990-01-01](Patient-PatientExample.md)

**bodySite**: 

> **component****code**: Inferior oblique

> **component****code**: Function**value**: Hypofunction



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "OcularMotilityLeftEyeExample",
  "meta" : {
    "profile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ocular-motility"]
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
    "text" : "Ocular motility"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "bodySite" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/bodySite",
      "valueReference" : {
        "reference" : "BodyStructure/LeftEyeStructureExample"
      }
    }]
  },
  "component" : [{
    "code" : {
      "text" : "Inferior oblique"
    }
  },
  {
    "code" : {
      "text" : "Function"
    },
    "valueCodeableConcept" : {
      "text" : "Hypofunction"
    }
  }]
}

```
