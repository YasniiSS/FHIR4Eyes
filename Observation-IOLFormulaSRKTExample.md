# IOL formula: SRK/T - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IOL formula: SRK/T**

## Example Observation: IOL formula: SRK/T

Profile: [IOL Formula Result](StructureDefinition-iol-formula-result.md)

**status**: Final

**category**: Exam

**code**: IOL formula result: SRK/T

**subject**: [Patient Example Female, DoB: 1990-01-01 ( Passport number: PA1234567)](Patient-PatientExample.md)

**effective**: 2026-08-18 09:00:00+0000

**performer**: [Practitioner Ophthalmologist Example ](Practitioner-OphthalmologistExample.md)

> **component****code**: IOL formula name**value**: SRK/T

> **component****code**: Lens constant type**value**: A-constant

> **component****code**: Lens constant value**value**: 118.7 1 (Details: UCUM code1 = '1')

> **component****code**: Suggested IOL model**value**: Alcon AcrySof IQ SN60WF

> **component****code**: Recommended IOL power**value**: 21.5 [diop] (Details: UCUM code[diop] = '[diop]')

> **component****code**: Expected refraction**value**: -0.31 [diop] (Details: UCUM code[diop] = '[diop]')



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
    "coding" : [{
      "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
      "code" : "iol-formula-result",
      "display" : "IOL power calculation formula result"
    }],
    "text" : "IOL formula result: SRK/T"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "effectiveDateTime" : "2026-08-18T09:00:00Z",
  "performer" : [{
    "reference" : "Practitioner/OphthalmologistExample"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "iol-formula",
        "display" : "IOL power calculation formula"
      }],
      "text" : "IOL formula name"
    },
    "valueCodeableConcept" : {
      "text" : "SRK/T"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "iol-lens-constant-type",
        "display" : "IOL lens constant type"
      }],
      "text" : "Lens constant type"
    },
    "valueCodeableConcept" : {
      "text" : "A-constant"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "iol-lens-constant-value",
        "display" : "IOL lens constant value"
      }],
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
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "iol-model",
        "display" : "Suggested IOL model"
      }],
      "text" : "Suggested IOL model"
    },
    "valueString" : "Alcon AcrySof IQ SN60WF"
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "iol-power",
        "display" : "Recommended IOL power"
      }],
      "text" : "Recommended IOL power"
    },
    "valueQuantity" : {
      "value" : 21.5,
      "system" : "http://unitsofmeasure.org",
      "code" : "[diop]"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "iol-expected-refraction",
        "display" : "Predicted postoperative refraction"
      }],
      "text" : "Expected refraction"
    },
    "valueQuantity" : {
      "value" : -0.31,
      "system" : "http://unitsofmeasure.org",
      "code" : "[diop]"
    }
  }]
}

```
