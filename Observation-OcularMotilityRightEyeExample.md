# Ocular motility: right eye - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ocular motility: right eye**

## Example Observation: Ocular motility: right eye

Profile: [Ocular Motility](StructureDefinition-ocular-motility.md)

**status**: Final

**category**: Exam

**code**: Ocular motility

**subject**: [Patient Example Female, DoB: 1990-01-01 ( Passport number: PA1234567)](Patient-PatientExample.md)

**effective**: 2026-08-18 09:00:00+0000

**performer**: [Practitioner Ophthalmologist Example ](Practitioner-OphthalmologistExample.md)

**bodySite**: 

> **component****code**: Muscle**value**: Superior oblique

> **component****code**: Function**value**: Hyperfunction



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "OcularMotilityRightEyeExample",
  "meta" : {
    "profile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ocular-motility"]
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
      "code" : "ocular-motility",
      "display" : "Ocular motility assessment"
    }],
    "text" : "Ocular motility"
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
        "code" : "extraocular-muscle",
        "display" : "Extraocular muscle assessed"
      }],
      "text" : "Muscle"
    },
    "valueCodeableConcept" : {
      "text" : "Superior oblique"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "extraocular-muscle-function",
        "display" : "Extraocular muscle function"
      }],
      "text" : "Function"
    },
    "valueCodeableConcept" : {
      "text" : "Hyperfunction"
    }
  }]
}

```
