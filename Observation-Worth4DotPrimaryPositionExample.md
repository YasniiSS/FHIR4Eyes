# Worth 4 dot test: primary position - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Worth 4 dot test: primary position**

## Example Observation: Worth 4 dot test: primary position

Profile: [Gaze Position Measurement](StructureDefinition-gaze-position-measurement.md)

**status**: Final

**category**: Exam

**code**: Gaze position measurement

**subject**: [Patient Example Female, DoB: 1990-01-01 ( Passport number: PA1234567)](Patient-PatientExample.md)

**effective**: 2026-08-18 09:00:00+0000

**performer**: [Practitioner Ophthalmologist Example ](Practitioner-OphthalmologistExample.md)

**bodySite**: 

> **component****code**: Gaze position**value**: Primary position

> **component****code**: Response**value**: Suppression of the right eye: 3 green lights (red glass over right eye)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "Worth4DotPrimaryPositionExample",
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
        "reference" : "BodyStructure/RightEyeStructureExample"
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
        "code" : "408744005",
        "display" : "Primary gaze"
      }],
      "text" : "Primary position"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "gaze-position-finding",
        "display" : "Finding at gaze position"
      }],
      "text" : "Response"
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "1052232003",
        "display" : "Suppression of visual signal of right eye"
      }],
      "text" : "Suppression of the right eye: 3 green lights (red glass over right eye)"
    }
  }]
}

```
