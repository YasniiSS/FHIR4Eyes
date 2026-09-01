# VisualAcuityCountingFingersRightEyeExample - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **VisualAcuityCountingFingersRightEyeExample**

## Example Observation: VisualAcuityCountingFingersRightEyeExample

Profile: [Ophthalmic Visual Acuity](StructureDefinition-ophthalmic-visual-acuity.md)

**status**: Final

**category**: Exam

**code**: Distance visual acuity

**subject**: [Patient Example Female, DoB: 1990-01-01 ( PA1234567)](Patient-PatientExample.md)

**value**: Distance vision - counts fingers - 1 metre (finding)

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
    "text" : "Distance visual acuity"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "260292001",
      "display" : "Distance vision - counts fingers - 1 metre (finding)"
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
