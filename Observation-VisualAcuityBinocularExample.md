# Visual acuity: binocular - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Visual acuity: binocular**

## Example Observation: Visual acuity: binocular

Profile: [Ophthalmic Visual Acuity](StructureDefinition-ophthalmic-visual-acuity.md)

**status**: Final

**category**: Exam

**code**: Binocular visual acuity

**subject**: [Patient Example Female, DoB: 1990-01-01 ( Passport number: PA1234567)](Patient-PatientExample.md)

**effective**: 2026-08-18 09:00:00+0000

**performer**: [Practitioner Ophthalmologist Example ](Practitioner-OphthalmologistExample.md)

**value**: 0.5 1 (Details: UCUM code1 = '1')

**bodySite**: 

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
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "363983007",
      "display" : "Visual acuity"
    }],
    "text" : "Binocular visual acuity"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "effectiveDateTime" : "2026-08-18T09:00:00Z",
  "performer" : [{
    "reference" : "Practitioner/OphthalmologistExample"
  }],
  "valueQuantity" : {
    "value" : 0.5,
    "system" : "http://unitsofmeasure.org",
    "code" : "1"
  },
  "bodySite" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/bodySite",
      "valueReference" : {
        "reference" : "BodyStructure/BothEyesStructureExample"
      }
    }]
  },
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "correction-status",
        "display" : "Refractive correction status during test"
      }],
      "text" : "Correction status"
    },
    "valueCodeableConcept" : {
      "text" : "Without correction"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "visual-acuity-scale",
        "display" : "Visual acuity notation scale"
      }],
      "text" : "Scale"
    },
    "valueCodeableConcept" : {
      "text" : "Decimal"
    }
  }]
}

```
