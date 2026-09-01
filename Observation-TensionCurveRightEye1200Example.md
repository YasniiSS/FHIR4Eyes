# TensionCurveRightEye1200Example - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TensionCurveRightEye1200Example**

## Example Observation: TensionCurveRightEye1200Example

Profile: [Intraocular Pressure](StructureDefinition-intraocular-pressure.md)

**status**: Final

**category**: Exam

**code**: Intraocular pressure

**subject**: [Patient Example Female, DoB: 1990-01-01 ( PA1234567)](Patient-PatientExample.md)

**effective**: 2026-08-18 12:00:00+0000

**value**: 20 mm[Hg] (Details: UCUM codemm[Hg] = 'mm[Hg]')

**bodySite**: 

**method**: Applanation tonometry



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "TensionCurveRightEye1200Example",
  "meta" : {
    "profile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/intraocular-pressure"]
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
      "code" : "41633001",
      "display" : "Intraocular pressure"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "effectiveDateTime" : "2026-08-18T12:00:00Z",
  "valueQuantity" : {
    "value" : 20,
    "system" : "http://unitsofmeasure.org",
    "code" : "mm[Hg]"
  },
  "bodySite" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/bodySite",
      "valueReference" : {
        "reference" : "BodyStructure/RightEyeStructureExample"
      }
    }]
  },
  "method" : {
    "text" : "Applanation tonometry"
  }
}

```
