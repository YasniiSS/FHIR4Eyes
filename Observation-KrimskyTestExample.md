# Krimsky test panel - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Krimsky test panel**

## Example Observation: Krimsky test panel

Profile: [Krimsky Test](StructureDefinition-krimsky-test.md)

**status**: Final

**category**: Exam

**code**: Krimsky test

**subject**: [Patient Example Female, DoB: 1990-01-01 ( Passport number: PA1234567)](Patient-PatientExample.md)

**effective**: 2026-08-18 09:00:00+0000

**performer**: [Practitioner Ophthalmologist Example ](Practitioner-OphthalmologistExample.md)

**note**: 

> 

Exotropia 30 PD FOD / 25 PD FOI, comitant in the five principal gaze positions.


**hasMember**: 

* [Primary position - FOD, 30 PD exodeviation](Observation-KrimskyPrimaryFODExample.md)
* [Primary position - FOI, 25 PD exodeviation](Observation-KrimskyPrimaryFOIExample.md)
* [Up gaze (supraversion) - FOD, 30 PD exodeviation](Observation-KrimskyUpFODExample.md)
* [Up gaze (supraversion) - FOI, 25 PD exodeviation](Observation-KrimskyUpFOIExample.md)
* [Down gaze (infraversion) - FOD, 30 PD exodeviation](Observation-KrimskyDownFODExample.md)
* [Down gaze (infraversion) - FOI, 25 PD exodeviation](Observation-KrimskyDownFOIExample.md)
* [Right gaze (dextroversion) - FOD, 30 PD exodeviation](Observation-KrimskyRightFODExample.md)
* [Right gaze (dextroversion) - FOI, 25 PD exodeviation](Observation-KrimskyRightFOIExample.md)
* [Left gaze (levoversion) - FOD, 30 PD exodeviation](Observation-KrimskyLeftFODExample.md)
* [Left gaze (levoversion) - FOI, 25 PD exodeviation](Observation-KrimskyLeftFOIExample.md)

> **component****code**: Test distance**value**: Far

> **component****code**: Correction status**value**: With correction



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "KrimskyTestExample",
  "meta" : {
    "profile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/krimsky-test"]
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
      "code" : "krimsky-test",
      "display" : "Krimsky test"
    }],
    "text" : "Krimsky test"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "effectiveDateTime" : "2026-08-18T09:00:00Z",
  "performer" : [{
    "reference" : "Practitioner/OphthalmologistExample"
  }],
  "note" : [{
    "text" : "Exotropia 30 PD FOD / 25 PD FOI, comitant in the five principal gaze positions."
  }],
  "hasMember" : [{
    "reference" : "Observation/KrimskyPrimaryFODExample",
    "display" : "Primary position - FOD, 30 PD exodeviation"
  },
  {
    "reference" : "Observation/KrimskyPrimaryFOIExample",
    "display" : "Primary position - FOI, 25 PD exodeviation"
  },
  {
    "reference" : "Observation/KrimskyUpFODExample",
    "display" : "Up gaze (supraversion) - FOD, 30 PD exodeviation"
  },
  {
    "reference" : "Observation/KrimskyUpFOIExample",
    "display" : "Up gaze (supraversion) - FOI, 25 PD exodeviation"
  },
  {
    "reference" : "Observation/KrimskyDownFODExample",
    "display" : "Down gaze (infraversion) - FOD, 30 PD exodeviation"
  },
  {
    "reference" : "Observation/KrimskyDownFOIExample",
    "display" : "Down gaze (infraversion) - FOI, 25 PD exodeviation"
  },
  {
    "reference" : "Observation/KrimskyRightFODExample",
    "display" : "Right gaze (dextroversion) - FOD, 30 PD exodeviation"
  },
  {
    "reference" : "Observation/KrimskyRightFOIExample",
    "display" : "Right gaze (dextroversion) - FOI, 25 PD exodeviation"
  },
  {
    "reference" : "Observation/KrimskyLeftFODExample",
    "display" : "Left gaze (levoversion) - FOD, 30 PD exodeviation"
  },
  {
    "reference" : "Observation/KrimskyLeftFOIExample",
    "display" : "Left gaze (levoversion) - FOI, 25 PD exodeviation"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "test-distance-category",
        "display" : "Testing distance category (near/far)"
      }],
      "text" : "Test distance"
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "far",
        "display" : "Far"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "correction-status",
        "display" : "Refractive correction status during test"
      }],
      "text" : "Correction status"
    },
    "valueCodeableConcept" : {
      "text" : "With correction"
    }
  }]
}

```
