# CTPachymetryRightEyeExample - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CTPachymetryRightEyeExample**

## Example Observation: CTPachymetryRightEyeExample

Profile: [Corneal Tomography - Pachymetry](StructureDefinition-ct-pachymetry.md)

**status**: Final

**category**: Exam

**code**: Corneal tomography, pachymetry analysis

**subject**: [Patient Example Female, DoB: 1990-01-01](Patient-PatientExample.md)

**bodySite**: 

**device**: Pentacam AXL

> **component****code**: CCT at apex**value**: 545 um (Details: UCUM codeum = 'um')

> **component****code**: CCT at pupil center**value**: 548 um (Details: UCUM codeum = 'um')

> **component****code**: Thinnest point value**value**: 538 um (Details: UCUM codeum = 'um')

> **component****code**: Thinnest point location**value**: x: -0.4mm, y: 0.2mm

> **component****code**: Corneal volume**value**: 61.2 mm3 (Details: UCUM codemm3 = 'mm3')

> **component****code**: Pachymetry progression index**value**: 1.05 1 (Details: UCUM code1 = '1')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "CTPachymetryRightEyeExample",
  "meta" : {
    "profile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ct-pachymetry"]
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
    "text" : "Corneal tomography, pachymetry analysis"
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
      "text" : "CCT at apex"
    },
    "valueQuantity" : {
      "value" : 545,
      "system" : "http://unitsofmeasure.org",
      "code" : "um"
    }
  },
  {
    "code" : {
      "text" : "CCT at pupil center"
    },
    "valueQuantity" : {
      "value" : 548,
      "system" : "http://unitsofmeasure.org",
      "code" : "um"
    }
  },
  {
    "code" : {
      "text" : "Thinnest point value"
    },
    "valueQuantity" : {
      "value" : 538,
      "system" : "http://unitsofmeasure.org",
      "code" : "um"
    }
  },
  {
    "code" : {
      "text" : "Thinnest point location"
    },
    "valueString" : "x: -0.4mm, y: 0.2mm"
  },
  {
    "code" : {
      "text" : "Corneal volume"
    },
    "valueQuantity" : {
      "value" : 61.2,
      "system" : "http://unitsofmeasure.org",
      "code" : "mm3"
    }
  },
  {
    "code" : {
      "text" : "Pachymetry progression index"
    },
    "valueQuantity" : {
      "value" : 1.05,
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  }]
}

```
