# CorrectedIntraocularPressureRightEyeExample - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CorrectedIntraocularPressureRightEyeExample**

## Example Observation: CorrectedIntraocularPressureRightEyeExample

Profile: [Corrected Intraocular Pressure](StructureDefinition-corrected-intraocular-pressure.md)

**status**: Final

**category**: Exam

**code**: Corrected intraocular pressure

**subject**: [Patient Example Female, DoB: 1990-01-01](Patient-PatientExample.md)

**value**: 15 mm[Hg] (Details: UCUM codemm[Hg] = 'mm[Hg]')

**bodySite**: 

**derivedFrom**: 

* [Observation Intraocular pressure](Observation-IntraocularPressureRightEyeExample.md)
* [Observation ](Observation-PachymetryRightEyeExample.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "CorrectedIntraocularPressureRightEyeExample",
  "meta" : {
    "profile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/corrected-intraocular-pressure"]
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
    "text" : "Corrected intraocular pressure"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "valueQuantity" : {
    "value" : 15,
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
  "derivedFrom" : [{
    "reference" : "Observation/IntraocularPressureRightEyeExample"
  },
  {
    "reference" : "Observation/PachymetryRightEyeExample"
  }]
}

```
