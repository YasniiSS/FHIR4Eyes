# Pachymetry: right eye - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Pachymetry: right eye**

## Example Observation: Pachymetry: right eye

Profile: [Pachymetry](StructureDefinition-pachymetry.md)

**status**: Final

**category**: Exam

**code**: Central corneal thickness

**subject**: [Patient Example Female, DoB: 1990-01-01 ( PA1234567)](Patient-PatientExample.md)

**value**: 540 um (Details: UCUM codeum = 'um')

**bodySite**: 



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "PachymetryRightEyeExample",
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
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "79825-6",
      "display" : "Right cornea Central corneal thickness Pachymetry"
    }],
    "text" : "Central corneal thickness"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "valueQuantity" : {
    "value" : 540,
    "system" : "http://unitsofmeasure.org",
    "code" : "um"
  },
  "bodySite" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/bodySite",
      "valueReference" : {
        "reference" : "BodyStructure/RightEyeStructureExample"
      }
    }]
  }
}

```
