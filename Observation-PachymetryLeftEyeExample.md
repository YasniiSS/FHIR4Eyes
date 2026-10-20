# Pachymetry: left eye - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Pachymetry: left eye**

## Example Observation: Pachymetry: left eye

Profile: [Pachymetry](StructureDefinition-pachymetry.md)

**status**: Final

**category**: Exam

**code**: Central corneal thickness

**subject**: [Patient Example Female, DoB: 1990-01-01 ( Passport number: PA1234567)](Patient-PatientExample.md)

**effective**: 2026-08-18 09:00:00+0000

**performer**: [Practitioner Ophthalmologist Example ](Practitioner-OphthalmologistExample.md)

**value**: 545 um (Details: UCUM codeum = 'um')

**bodySite**: 



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "PachymetryLeftEyeExample",
  "meta" : {
    "profile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/pachymetry"]
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
      "code" : "central-corneal-thickness",
      "display" : "Central corneal thickness"
    },
    {
      "system" : "http://loinc.org",
      "code" : "79826-4",
      "display" : "Left cornea Central corneal thickness Pachymetry"
    }],
    "text" : "Central corneal thickness"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "effectiveDateTime" : "2026-08-18T09:00:00Z",
  "performer" : [{
    "reference" : "Practitioner/OphthalmologistExample"
  }],
  "valueQuantity" : {
    "value" : 545,
    "system" : "http://unitsofmeasure.org",
    "code" : "um"
  },
  "bodySite" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/bodySite",
      "valueReference" : {
        "reference" : "BodyStructure/LeftEyeStructureExample"
      }
    }]
  }
}

```
