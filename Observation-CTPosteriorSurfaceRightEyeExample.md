# CT posterior surface: right eye - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CT posterior surface: right eye**

## Example Observation: CT posterior surface: right eye

Profile: [Corneal Tomography - Posterior Surface](StructureDefinition-ct-posterior-surface.md)

**status**: Final

**category**: Exam

**code**: Corneal tomography, posterior surface analysis

**subject**: [Patient Example Female, DoB: 1990-01-01 ( Passport number: PA1234567)](Patient-PatientExample.md)

**effective**: 2026-08-18 09:00:00+0000

**performer**: [Practitioner Ophthalmologist Example ](Practitioner-OphthalmologistExample.md)

**bodySite**: 

**device**: Pentacam AXL

> **component****code**: Posterior K1 (flat)**value**: -6.32 [diop] (Details: UCUM code[diop] = '[diop]')

> **component****code**: Posterior K2 (steep)**value**: -6.58 [diop] (Details: UCUM code[diop] = '[diop]')

> **component****code**: Posterior Km**value**: -6.45 [diop] (Details: UCUM code[diop] = '[diop]')

> **component****code**: Back astigmatism**value**: 0.26 [diop] (Details: UCUM code[diop] = '[diop]')

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
    "coding" : [{
      "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
      "code" : "corneal-tomography-posterior-surface",
      "display" : "Corneal tomography, posterior surface analysis"
    }],
    "text" : "Corneal tomography, posterior surface analysis"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "effectiveDateTime" : "2026-08-18T09:00:00Z",
  "performer" : [{
    "reference" : "Practitioner/OphthalmologistExample"
  }],
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
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "posterior-keratometry-k1",
        "display" : "Posterior keratometry K1 (flat)"
      }],
      "text" : "Posterior K1 (flat)"
    },
    "valueQuantity" : {
      "value" : -6.32,
      "system" : "http://unitsofmeasure.org",
      "code" : "[diop]"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "posterior-keratometry-k2",
        "display" : "Posterior keratometry K2 (steep)"
      }],
      "text" : "Posterior K2 (steep)"
    },
    "valueQuantity" : {
      "value" : -6.58,
      "system" : "http://unitsofmeasure.org",
      "code" : "[diop]"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "posterior-keratometry-km",
        "display" : "Posterior keratometry Km (mean)"
      }],
      "text" : "Posterior Km"
    },
    "valueQuantity" : {
      "value" : -6.45,
      "system" : "http://unitsofmeasure.org",
      "code" : "[diop]"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "corneal-astigmatism-posterior",
        "display" : "Corneal astigmatism, posterior surface"
      }],
      "text" : "Back astigmatism"
    },
    "valueQuantity" : {
      "value" : 0.26,
      "system" : "http://unitsofmeasure.org",
      "code" : "[diop]"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "corneal-asphericity-q-posterior",
        "display" : "Corneal asphericity (Q-value), posterior surface"
      }],
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
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "elevation-posterior",
        "display" : "Corneal elevation relative to best fit sphere, posterior surface"
      }],
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
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "best-fit-sphere-radius-posterior",
        "display" : "Best fit sphere radius, posterior surface"
      }],
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
