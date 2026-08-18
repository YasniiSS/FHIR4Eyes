# IntraocularPressureLeftEyeExample - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IntraocularPressureLeftEyeExample**

## Example Observation: IntraocularPressureLeftEyeExample

Profile: [Intraocular Pressure](StructureDefinition-intraocular-pressure.md)

**status**: Final

**category**: Exam

**code**: Intraocular pressure

**subject**: [Patient Example Female, DoB: 1990-01-01](Patient-PatientExample.md)

**value**: 17 mm[Hg] (Details: UCUM codemm[Hg] = 'mm[Hg]')

**bodySite**: 

**method**: Goldmann applanation tonometry



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "IntraocularPressureLeftEyeExample",
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
  "valueQuantity" : {
    "value" : 17,
    "system" : "http://unitsofmeasure.org",
    "code" : "mm[Hg]"
  },
  "bodySite" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/bodySite",
      "valueReference" : {
        "reference" : "BodyStructure/LeftEyeStructureExample"
      }
    }]
  },
  "method" : {
    "text" : "Goldmann applanation tonometry"
  }
}

```
