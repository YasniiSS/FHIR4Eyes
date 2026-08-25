# CTPosteriorSurfaceRightEyeExample - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CTPosteriorSurfaceRightEyeExample**

## Example Observation: CTPosteriorSurfaceRightEyeExample

Profile: [Corneal Tomography - Posterior Surface](StructureDefinition-ct-posterior-surface.md)

**status**: Final

**category**: Exam

**code**: Corneal tomography, posterior surface analysis

**subject**: [Patient Example Female, DoB: 1990-01-01](Patient-PatientExample.md)

**bodySite**: 

**device**: Pentacam AXL

> **component****code**: Posterior K1 (flat)**value**: 6.32 D (Details: UCUM codeD = 'D')

> **component****code**: Posterior K2 (steep)**value**: 6.58 D (Details: UCUM codeD = 'D')

> **component****code**: Posterior Km**value**: 6.45 D (Details: UCUM codeD = 'D')

> **component****code**: Back astigmatism**value**: 0.26 D (Details: UCUM codeD = 'D')

> **component****code**: Posterior Q-value**value**: -0.32 1 (Details: UCUM code1 = '1')

> **component****code**: Elevation back BFS**value**: 8 um (Details: UCUM codeum = 'um')

> **component****code**: BFS radius back**value**: 6.4 mm (Details: UCUM codemm = 'mm')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "CTPosteriorSurfaceRightEyeExample",
  "meta" : {
    "profile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ct-posterior-surface"]
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
    "text" : "Corneal tomography, posterior surface analysis"
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
      "text" : "Posterior K1 (flat)"
    },
    "valueQuantity" : {
      "value" : 6.32,
      "system" : "http://unitsofmeasure.org",
      "code" : "D"
    }
  },
  {
    "code" : {
      "text" : "Posterior K2 (steep)"
    },
    "valueQuantity" : {
      "value" : 6.58,
      "system" : "http://unitsofmeasure.org",
      "code" : "D"
    }
  },
  {
    "code" : {
      "text" : "Posterior Km"
    },
    "valueQuantity" : {
      "value" : 6.45,
      "system" : "http://unitsofmeasure.org",
      "code" : "D"
    }
  },
  {
    "code" : {
      "text" : "Back astigmatism"
    },
    "valueQuantity" : {
      "value" : 0.26,
      "system" : "http://unitsofmeasure.org",
      "code" : "D"
    }
  },
  {
    "code" : {
      "text" : "Posterior Q-value"
    },
    "valueQuantity" : {
      "value" : -0.32,
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  },
  {
    "code" : {
      "text" : "Elevation back BFS"
    },
    "valueQuantity" : {
      "value" : 8,
      "system" : "http://unitsofmeasure.org",
      "code" : "um"
    }
  },
  {
    "code" : {
      "text" : "BFS radius back"
    },
    "valueQuantity" : {
      "value" : 6.4,
      "system" : "http://unitsofmeasure.org",
      "code" : "mm"
    }
  }]
}

```
