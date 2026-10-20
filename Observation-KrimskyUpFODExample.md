# Krimsky test: up gaze, FOD - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Krimsky test: up gaze, FOD**

## Example Observation: Krimsky test: up gaze, FOD

Profile: [Gaze Position Measurement](StructureDefinition-gaze-position-measurement.md)

**status**: Final

**category**: Exam

**code**: Gaze position measurement

**subject**: [Patient Example Female, DoB: 1990-01-01 ( Passport number: PA1234567)](Patient-PatientExample.md)

**effective**: 2026-08-18 09:00:00+0000

**performer**: [Practitioner Ophthalmologist Example ](Practitioner-OphthalmologistExample.md)

**bodySite**: 

> **component****code**: Gaze position**value**: Up gaze (supraversion)

> **component****code**: Fixating eye**value**: Right

> **component****code**: Horizontal deviation**value**: 30 prism diopter (Details: UCUM code[p'diop] = '[p'diop]')

> **component****code**: Horizontal deviation direction**value**: Exodeviation



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "KrimskyUpFODExample",
  "meta" : {
    "profile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/gaze-position-measurement"]
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
      "code" : "gaze-position-measurement",
      "display" : "Gaze position measurement"
    }],
    "text" : "Gaze position measurement"
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
        "reference" : "BodyStructure/LeftEyeStructureExample"
      }
    }]
  },
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "gaze-position",
        "display" : "Gaze position"
      }],
      "text" : "Gaze position"
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "255533007",
        "display" : "Upward gaze"
      }],
      "text" : "Up gaze (supraversion)"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "fixating-eye",
        "display" : "Fixating eye"
      }],
      "text" : "Fixating eye"
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "24028007",
        "display" : "Right"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "horizontal-deviation",
        "display" : "Horizontal ocular deviation"
      }],
      "text" : "Horizontal deviation"
    },
    "valueQuantity" : {
      "value" : 30,
      "unit" : "prism diopter",
      "system" : "http://unitsofmeasure.org",
      "code" : "[p'diop]"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "horizontal-deviation-direction",
        "display" : "Horizontal deviation direction"
      }],
      "text" : "Horizontal deviation direction"
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "exodeviation",
        "display" : "Exodeviation"
      }]
    }
  }]
}

```
