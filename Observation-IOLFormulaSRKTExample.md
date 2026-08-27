# IOLFormulaSRKTExample - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IOLFormulaSRKTExample**

## Example Observation: IOLFormulaSRKTExample

Profile: [IOL Formula Result](StructureDefinition-iol-formula-result.md)

**status**: Final

**category**: Exam

**code**: IOL formula result: SRK/T

**subject**: [Patient Example Female, DoB: 1990-01-01](Patient-PatientExample.md)

> **component****code**: IOL formula name**value**: SRK/T

> **component****code**: Lens constant type**value**: A-constant

> **component****code**: Lens constant value**value**: 118.7 1 (Details: UCUM code1 = '1')

> **component****code**: Suggested IOL model**value**: Alcon AcrySof IQ SN60WF

> **component****code**: Recommended IOL power**value**: 21.5 D (Details: UCUM codeD = 'D')

> **component****code**: Expected refraction**value**: -0.31 D (Details: UCUM codeD = 'D')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "IOLFormulaSRKTExample",
  "meta" : {
    "profile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/iol-formula-result"]
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
    "text" : "IOL formula result: SRK/T"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "component" : [{
    "code" : {
      "text" : "IOL formula name"
    },
    "valueCodeableConcept" : {
      "text" : "SRK/T"
    }
  },
  {
    "code" : {
      "text" : "Lens constant type"
    },
    "valueCodeableConcept" : {
      "text" : "A-constant"
    }
  },
  {
    "code" : {
      "text" : "Lens constant value"
    },
    "valueQuantity" : {
      "value" : 118.7,
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  },
  {
    "code" : {
      "text" : "Suggested IOL model"
    },
    "valueString" : "Alcon AcrySof IQ SN60WF"
  },
  {
    "code" : {
      "text" : "Recommended IOL power"
    },
    "valueQuantity" : {
      "value" : 21.5,
      "system" : "http://unitsofmeasure.org",
      "code" : "D"
    }
  },
  {
    "code" : {
      "text" : "Expected refraction"
    },
    "valueQuantity" : {
      "value" : -0.31,
      "system" : "http://unitsofmeasure.org",
      "code" : "D"
    }
  }]
}

```
