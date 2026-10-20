# Visual acuity: counting fingers, right eye - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Visual acuity: counting fingers, right eye**

## Example Observation: Visual acuity: counting fingers, right eye

Profile: [Ophthalmic Visual Acuity](StructureDefinition-ophthalmic-visual-acuity.md)

**status**: Final

**category**: Exam

**code**: Distance visual acuity

**subject**: [Patient Example Female, DoB: 1990-01-01 ( Passport number: PA1234567)](Patient-PatientExample.md)

**effective**: 2026-08-18 09:00:00+0000

**performer**: [Practitioner Ophthalmologist Example ](Practitioner-OphthalmologistExample.md)

**value**: Counts fingers - 1 meter

**bodySite**: 

### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | Testing distance | 1 m (Details: UCUM codem = 'm') |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "VisualAcuityCountingFingersRightEyeExample",
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
    "text" : "Distance visual acuity"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "effectiveDateTime" : "2026-08-18T09:00:00Z",
  "performer" : [{
    "reference" : "Practitioner/OphthalmologistExample"
  }],
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "260292001",
      "display" : "Counts fingers - 1 meter"
    }]
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
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "test-distance",
        "display" : "Testing distance"
      }],
      "text" : "Testing distance"
    },
    "valueQuantity" : {
      "value" : 1,
      "system" : "http://unitsofmeasure.org",
      "code" : "m"
    }
  }]
}

```
