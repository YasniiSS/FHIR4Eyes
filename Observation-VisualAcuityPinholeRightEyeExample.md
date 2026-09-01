# VisualAcuityPinholeRightEyeExample - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **VisualAcuityPinholeRightEyeExample**

## Example Observation: VisualAcuityPinholeRightEyeExample

Profile: [Ophthalmic Visual Acuity](StructureDefinition-ophthalmic-visual-acuity.md)

**status**: Final

**category**: Exam

**code**: Distance visual acuity

**subject**: [Patient Example Female, DoB: 1990-01-01 ( PA1234567)](Patient-PatientExample.md)

**value**: 20 [ft_i] (Details: UCUM code[ft_i] = '[ft_i]')/25 [ft_i] (Details: UCUM code[ft_i] = '[ft_i]')

**bodySite**: 

**derivedFrom**: [Observation ](Observation-VisualAcuityUncorrectedRightEyeExample.md)

> **component****code**: Correction status**value**: Without correction

> **component****code**: Pinhole**value**: true

> **component****code**: Chart**value**: Snellen



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "VisualAcuityPinholeRightEyeExample",
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
    "text" : "Distance visual acuity"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "valueRatio" : {
    "numerator" : {
      "value" : 20,
      "system" : "http://unitsofmeasure.org",
      "code" : "[ft_i]"
    },
    "denominator" : {
      "value" : 25,
      "system" : "http://unitsofmeasure.org",
      "code" : "[ft_i]"
    }
  },
  "bodySite" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/bodySite",
      "valueReference" : {
        "reference" : "BodyStructure/RightEyeStructureExample"
      }
    }]
  },
  "derivedFrom" : [{
    "reference" : "Observation/VisualAcuityUncorrectedRightEyeExample"
  }],
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
      "text" : "Pinhole"
    },
    "valueBoolean" : true
  },
  {
    "code" : {
      "text" : "Chart"
    },
    "valueCodeableConcept" : {
      "text" : "Snellen"
    }
  }]
}

```
