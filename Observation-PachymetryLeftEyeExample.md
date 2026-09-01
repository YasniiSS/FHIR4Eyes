# PachymetryLeftEyeExample - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PachymetryLeftEyeExample**

## Example Observation: PachymetryLeftEyeExample

Profile: [Pachymetry](StructureDefinition-pachymetry.md)

**status**: Final

**category**: Exam

**code**: Central corneal thickness

**subject**: [Patient Example Female, DoB: 1990-01-01 ( PA1234567)](Patient-PatientExample.md)

**value**: 545 um (Details: UCUM codeum = 'um')

**bodySite**: 



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "PachymetryLeftEyeExample",
  "meta" : {
    "profile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/pachymetry"]
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
    "text" : "Central corneal thickness"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "valueQuantity" : {
    "value" : 545,
    "system" : "http://unitsofmeasure.org",
    "code" : "um"
  },
  "bodySite" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/bodySite",
      "valueReference" : {
        "reference" : "BodyStructure/LeftEyeStructureExample"
      }
    }]
  }
}

```
