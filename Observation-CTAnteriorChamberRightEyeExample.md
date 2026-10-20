# CT anterior chamber: right eye - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CT anterior chamber: right eye**

## Example Observation: CT anterior chamber: right eye

Profile: [Corneal Tomography - Anterior Chamber](StructureDefinition-ct-anterior-chamber.md)

**status**: Final

**category**: Exam

**code**: Corneal tomography, anterior chamber analysis

**subject**: [Patient Example Female, DoB: 1990-01-01 ( Passport number: PA1234567)](Patient-PatientExample.md)

**effective**: 2026-08-18 09:00:00+0000

**performer**: [Practitioner Ophthalmologist Example ](Practitioner-OphthalmologistExample.md)

**bodySite**: 

**device**: Pentacam AXL

> **component****code**: Anterior chamber depth (ACD)**value**: 3.12 mm (Details: UCUM codemm = 'mm')

> **component****code**: Anterior chamber volume**value**: 178 mm3 (Details: UCUM codemm3 = 'mm3')

> **component****code**: Anterior chamber angle**value**: 38 deg (Details: UCUM codedeg = 'deg')

> **component****code**: Pupil diameter**value**: 3.4 mm (Details: UCUM codemm = 'mm')

> **component****code**: Lens thickness**value**: 4.1 mm (Details: UCUM codemm = 'mm')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "CTAnteriorChamberRightEyeExample",
  "meta" : {
    "profile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ct-anterior-chamber"]
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
      "code" : "corneal-tomography-anterior-chamber",
      "display" : "Corneal tomography, anterior chamber analysis"
    }],
    "text" : "Corneal tomography, anterior chamber analysis"
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
        "code" : "anterior-chamber-depth",
        "display" : "Anterior chamber depth"
      }],
      "text" : "Anterior chamber depth (ACD)"
    },
    "valueQuantity" : {
      "value" : 3.12,
      "system" : "http://unitsofmeasure.org",
      "code" : "mm"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "anterior-chamber-volume",
        "display" : "Anterior chamber volume"
      }],
      "text" : "Anterior chamber volume"
    },
    "valueQuantity" : {
      "value" : 178,
      "system" : "http://unitsofmeasure.org",
      "code" : "mm3"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "anterior-chamber-angle",
        "display" : "Anterior chamber angle"
      }],
      "text" : "Anterior chamber angle"
    },
    "valueQuantity" : {
      "value" : 38,
      "system" : "http://unitsofmeasure.org",
      "code" : "deg"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "pupil-diameter",
        "display" : "Pupil diameter"
      }],
      "text" : "Pupil diameter"
    },
    "valueQuantity" : {
      "value" : 3.4,
      "system" : "http://unitsofmeasure.org",
      "code" : "mm"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "lens-thickness",
        "display" : "Lens thickness"
      }],
      "text" : "Lens thickness"
    },
    "valueQuantity" : {
      "value" : 4.1,
      "system" : "http://unitsofmeasure.org",
      "code" : "mm"
    }
  }]
}

```
