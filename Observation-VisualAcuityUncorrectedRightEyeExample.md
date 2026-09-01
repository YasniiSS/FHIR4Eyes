# VisualAcuityUncorrectedRightEyeExample - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **VisualAcuityUncorrectedRightEyeExample**

## Example Observation: VisualAcuityUncorrectedRightEyeExample

Profile: [Ophthalmic Visual Acuity](StructureDefinition-ophthalmic-visual-acuity.md)

**status**: Final

**category**: Exam

**code**: Distance visual acuity

**subject**: [Patient Example Female, DoB: 1990-01-01 ( PA1234567)](Patient-PatientExample.md)

**value**: 20 [ft_i] (Details: UCUM code[ft_i] = '[ft_i]')/40 [ft_i] (Details: UCUM code[ft_i] = '[ft_i]')

**bodySite**: 

> **component****code**: Correction status**value**: Without correction

> **component****code**: Testing distance**value**: 6 m (Details: UCUM codem = 'm')

> **component****code**: Chart**value**: Snellen

> **component****code**: Scale**value**: Snellen fraction



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "VisualAcuityUncorrectedRightEyeExample",
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
      "value" : 40,
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
      "text" : "Testing distance"
    },
    "valueQuantity" : {
      "value" : 6,
      "system" : "http://unitsofmeasure.org",
      "code" : "m"
    }
  },
  {
    "code" : {
      "text" : "Chart"
    },
    "valueCodeableConcept" : {
      "text" : "Snellen"
    }
  },
  {
    "code" : {
      "text" : "Scale"
    },
    "valueCodeableConcept" : {
      "text" : "Snellen fraction"
    }
  }]
}

```
