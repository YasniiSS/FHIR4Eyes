# IOLFormulaBarrettExample - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IOLFormulaBarrettExample**

## Example Observation: IOLFormulaBarrettExample

Profile: [IOL Formula Result](StructureDefinition-iol-formula-result.md)

**status**: Final

**category**: Exam

**code**: IOL formula result: Barrett Universal II

**subject**: [Patient Example Female, DoB: 1990-01-01 ( PA1234567)](Patient-PatientExample.md)

> **component****code**: IOL formula name**value**: Barrett Universal II

> **component****code**: Lens constant type**value**: A-constant

> **component****code**: Lens constant value**value**: 119 1 (Details: UCUM code1 = '1')

> **component****code**: Suggested IOL model**value**: Alcon AcrySof IQ SN60WF

> **component****code**: Recommended IOL power**value**: 21 [diop] (Details: UCUM code[diop] = '[diop]')

> **component****code**: Expected refraction**value**: -0.18 [diop] (Details: UCUM code[diop] = '[diop]')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "IOLFormulaBarrettExample",
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
    "text" : "IOL formula result: Barrett Universal II"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "component" : [{
    "code" : {
      "text" : "IOL formula name"
    },
    "valueCodeableConcept" : {
      "text" : "Barrett Universal II"
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
      "value" : 119,
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
      "value" : 21,
      "system" : "http://unitsofmeasure.org",
      "code" : "[diop]"
    }
  },
  {
    "code" : {
      "text" : "Expected refraction"
    },
    "valueQuantity" : {
      "value" : -0.18,
      "system" : "http://unitsofmeasure.org",
      "code" : "[diop]"
    }
  }]
}

```
