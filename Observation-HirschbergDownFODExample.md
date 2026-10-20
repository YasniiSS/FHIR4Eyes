# Hirschberg test: down gaze, FOD - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Hirschberg test: down gaze, FOD**

## Example Observation: Hirschberg test: down gaze, FOD

Profile: [Gaze Position Measurement](StructureDefinition-gaze-position-measurement.md)

**status**: Final

**category**: Exam

**code**: Gaze position measurement

**subject**: [Patient Example Female, DoB: 1990-01-01 ( Passport number: PA1234567)](Patient-PatientExample.md)

**effective**: 2026-08-18 09:00:00+0000

**performer**: [Practitioner Ophthalmologist Example ](Practitioner-OphthalmologistExample.md)

**bodySite**: 

> **component****code**: Gaze position**value**: Down gaze (infraversion)

> **component****code**: Fixating eye**value**: Right

> **component****code**: Estimated horizontal deviation**value**: 15 degree (Details: UCUM codedeg = 'deg')

> **component****code**: Horizontal deviation direction**value**: Exodeviation

> **component****code**: Corneal light reflex**value**: Reflex displaced nasally in the left eye (about 15 degrees)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "HirschbergDownFODExample",
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
        "code" : "255521002",
        "display" : "Downward gaze"
      }],
      "text" : "Down gaze (infraversion)"
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
      "text" : "Estimated horizontal deviation"
    },
    "valueQuantity" : {
      "value" : 15,
      "unit" : "degree",
      "system" : "http://unitsofmeasure.org",
      "code" : "deg"
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
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "gaze-position-finding",
        "display" : "Finding at gaze position"
      }],
      "text" : "Corneal light reflex"
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "corneal-reflex-displaced-nasal",
        "display" : "Corneal light reflex displaced nasally"
      }],
      "text" : "Reflex displaced nasally in the left eye (about 15 degrees)"
    }
  }]
}

```
