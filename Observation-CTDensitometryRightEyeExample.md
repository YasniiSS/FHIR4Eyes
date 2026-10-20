# CT densitometry: right eye - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CT densitometry: right eye**

## Example Observation: CT densitometry: right eye

Profile: [Corneal Tomography - Densitometry](StructureDefinition-ct-densitometry.md)

**status**: Final

**category**: Exam

**code**: Corneal tomography, densitometry analysis

**subject**: [Patient Example Female, DoB: 1990-01-01 ( Passport number: PA1234567)](Patient-PatientExample.md)

**effective**: 2026-08-18 09:00:00+0000

**performer**: [Practitioner Ophthalmologist Example ](Practitioner-OphthalmologistExample.md)

**bodySite**: 

**device**: Pentacam AXL

> **component****code**: Densitometry 0-2mm zone**value**: 16.8 {GSU} (Details: UCUM code{GSU} = '{GSU}')

> **component****code**: Densitometry 2-6mm zone**value**: 14.2 {GSU} (Details: UCUM code{GSU} = '{GSU}')

> **component****code**: Densitometry 6-10mm zone**value**: 17.5 {GSU} (Details: UCUM code{GSU} = '{GSU}')

> **component****code**: Densitometry total**value**: 15.9 {GSU} (Details: UCUM code{GSU} = '{GSU}')

> **component****code**: Densitometry anterior layer**value**: 19.1 {GSU} (Details: UCUM code{GSU} = '{GSU}')

> **component****code**: Densitometry central layer**value**: 13.4 {GSU} (Details: UCUM code{GSU} = '{GSU}')

> **component****code**: Densitometry posterior layer**value**: 15 {GSU} (Details: UCUM code{GSU} = '{GSU}')



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
    "coding" : [{
      "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
      "code" : "corneal-densitometry",
      "display" : "Corneal densitometry"
    }],
    "text" : "Corneal tomography, densitometry analysis"
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
        "code" : "corneal-densitometry-zone-0-2mm",
        "display" : "Corneal densitometry, 0-2 mm zone"
      }],
      "text" : "Densitometry 0-2mm zone"
    },
    "valueQuantity" : {
      "value" : 16.8,
      "system" : "http://unitsofmeasure.org",
      "code" : "{GSU}"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "corneal-densitometry-zone-2-6mm",
        "display" : "Corneal densitometry, 2-6 mm zone"
      }],
      "text" : "Densitometry 2-6mm zone"
    },
    "valueQuantity" : {
      "value" : 14.2,
      "system" : "http://unitsofmeasure.org",
      "code" : "{GSU}"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "corneal-densitometry-zone-6-10mm",
        "display" : "Corneal densitometry, 6-10 mm zone"
      }],
      "text" : "Densitometry 6-10mm zone"
    },
    "valueQuantity" : {
      "value" : 17.5,
      "system" : "http://unitsofmeasure.org",
      "code" : "{GSU}"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "corneal-densitometry-total",
        "display" : "Corneal densitometry, total"
      }],
      "text" : "Densitometry total"
    },
    "valueQuantity" : {
      "value" : 15.9,
      "system" : "http://unitsofmeasure.org",
      "code" : "{GSU}"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "corneal-densitometry-anterior-layer",
        "display" : "Corneal densitometry, anterior layer"
      }],
      "text" : "Densitometry anterior layer"
    },
    "valueQuantity" : {
      "value" : 19.1,
      "system" : "http://unitsofmeasure.org",
      "code" : "{GSU}"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "corneal-densitometry-central-layer",
        "display" : "Corneal densitometry, central layer"
      }],
      "text" : "Densitometry central layer"
    },
    "valueQuantity" : {
      "value" : 13.4,
      "system" : "http://unitsofmeasure.org",
      "code" : "{GSU}"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "corneal-densitometry-posterior-layer",
        "display" : "Corneal densitometry, posterior layer"
      }],
      "text" : "Densitometry posterior layer"
    },
    "valueQuantity" : {
      "value" : 15,
      "system" : "http://unitsofmeasure.org",
      "code" : "{GSU}"
    }
  }]
}

```
