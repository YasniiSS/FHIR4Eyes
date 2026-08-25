# CTDensitometryRightEyeExample - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CTDensitometryRightEyeExample**

## Example Observation: CTDensitometryRightEyeExample

Profile: [Corneal Tomography - Densitometry](StructureDefinition-ct-densitometry.md)

**status**: Final

**category**: Exam

**code**: Corneal tomography, densitometry analysis

**subject**: [Patient Example Female, DoB: 1990-01-01](Patient-PatientExample.md)

**bodySite**: 

**device**: Pentacam AXL

> **component****code**: Densitometry 0-2mm zone**value**: 16.8 1 (Details: UCUM code1 = '1')

> **component****code**: Densitometry 2-6mm zone**value**: 14.2 1 (Details: UCUM code1 = '1')

> **component****code**: Densitometry 6-10mm zone**value**: 17.5 1 (Details: UCUM code1 = '1')

> **component****code**: Densitometry total**value**: 15.9 1 (Details: UCUM code1 = '1')

> **component****code**: Densitometry anterior layer**value**: 19.1 1 (Details: UCUM code1 = '1')

> **component****code**: Densitometry central layer**value**: 13.4 1 (Details: UCUM code1 = '1')

> **component****code**: Densitometry posterior layer**value**: 15 1 (Details: UCUM code1 = '1')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "CTDensitometryRightEyeExample",
  "meta" : {
    "profile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ct-densitometry"]
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
    "text" : "Corneal tomography, densitometry analysis"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "bodySite" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/bodySite",
      "valueReference" : {
        "reference" : "BodyStructure/RightEyeStructureExample"
      }
    }]
  },
  "device" : {
    "display" : "Pentacam AXL"
  },
  "component" : [{
    "code" : {
      "text" : "Densitometry 0-2mm zone"
    },
    "valueQuantity" : {
      "value" : 16.8,
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  },
  {
    "code" : {
      "text" : "Densitometry 2-6mm zone"
    },
    "valueQuantity" : {
      "value" : 14.2,
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  },
  {
    "code" : {
      "text" : "Densitometry 6-10mm zone"
    },
    "valueQuantity" : {
      "value" : 17.5,
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  },
  {
    "code" : {
      "text" : "Densitometry total"
    },
    "valueQuantity" : {
      "value" : 15.9,
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  },
  {
    "code" : {
      "text" : "Densitometry anterior layer"
    },
    "valueQuantity" : {
      "value" : 19.1,
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  },
  {
    "code" : {
      "text" : "Densitometry central layer"
    },
    "valueQuantity" : {
      "value" : 13.4,
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  },
  {
    "code" : {
      "text" : "Densitometry posterior layer"
    },
    "valueQuantity" : {
      "value" : 15,
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  }]
}

```
