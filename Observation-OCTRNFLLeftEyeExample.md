# OCTRNFLLeftEyeExample - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OCTRNFLLeftEyeExample**

## Example Observation: OCTRNFLLeftEyeExample

Profile: [Ophthalmic OCT RNFL](StructureDefinition-ophthalmic-oct-rnfl.md)

**status**: Final

**category**: Exam

**code**: OCT RNFL analysis

**subject**: [Patient Example Female, DoB: 1990-01-01](Patient-PatientExample.md)

**note**: 

> 

Reference database: European Descent (2009). Valid for Caucasian eyes only.


**bodySite**: 

> **component****code**: RNFL superior thickness**value**: 98 um (Details: UCUM codeum = 'um')

> **component****code**: RNFL inferior thickness**value**: 89 um (Details: UCUM codeum = 'um')

> **component****code**: RNFL nasal thickness**value**: 51 um (Details: UCUM codeum = 'um')

> **component****code**: RNFL temporal thickness**value**: 51 um (Details: UCUM codeum = 'um')

> **component****code**: RNFL average thickness**value**: 78 um (Details: UCUM codeum = 'um')

> **component****code**: Overall classification**value**: Outside Normal Limits



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "OCTRNFLLeftEyeExample",
  "meta" : {
    "profile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-oct-rnfl"]
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
    "text" : "OCT RNFL analysis"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "note" : [{
    "text" : "Reference database: European Descent (2009). Valid for Caucasian eyes only."
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
      "text" : "RNFL superior thickness"
    },
    "valueQuantity" : {
      "value" : 98,
      "system" : "http://unitsofmeasure.org",
      "code" : "um"
    }
  },
  {
    "code" : {
      "text" : "RNFL inferior thickness"
    },
    "valueQuantity" : {
      "value" : 89,
      "system" : "http://unitsofmeasure.org",
      "code" : "um"
    }
  },
  {
    "code" : {
      "text" : "RNFL nasal thickness"
    },
    "valueQuantity" : {
      "value" : 51,
      "system" : "http://unitsofmeasure.org",
      "code" : "um"
    }
  },
  {
    "code" : {
      "text" : "RNFL temporal thickness"
    },
    "valueQuantity" : {
      "value" : 51,
      "system" : "http://unitsofmeasure.org",
      "code" : "um"
    }
  },
  {
    "code" : {
      "text" : "RNFL average thickness"
    },
    "valueQuantity" : {
      "value" : 78,
      "system" : "http://unitsofmeasure.org",
      "code" : "um"
    }
  },
  {
    "code" : {
      "text" : "Overall classification"
    },
    "valueCodeableConcept" : {
      "text" : "Outside Normal Limits"
    }
  }]
}

```
