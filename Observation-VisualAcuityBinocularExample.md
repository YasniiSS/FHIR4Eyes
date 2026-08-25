# VisualAcuityBinocularExample - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **VisualAcuityBinocularExample**

## Example Observation: VisualAcuityBinocularExample

Profile: [Ophthalmic Visual Acuity](StructureDefinition-ophthalmic-visual-acuity.md)

**status**: Final

**category**: Exam

**code**: Binocular visual acuity

**subject**: [Patient Example Female, DoB: 1990-01-01](Patient-PatientExample.md)

**value**: 0.5

> **component****code**: Correction status**value**: Without correction

> **component****code**: Scale**value**: Decimal



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "VisualAcuityBinocularExample",
  "meta" : {
    "profile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-visual-acuity"]
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
    "text" : "Binocular visual acuity"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "valueQuantity" : {
    "value" : 0.5
  },
  "component" : [{
    "code" : {
      "text" : "Correction status"
    },
    "valueCodeableConcept" : {
      "text" : "Without correction"
    }
  },
  {
    "code" : {
      "text" : "Scale"
    },
    "valueCodeableConcept" : {
      "text" : "Decimal"
    }
  }]
}

```
