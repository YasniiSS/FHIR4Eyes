# OCTMaculaLeftEyeExample2 - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OCTMaculaLeftEyeExample2**

## Example Observation: OCTMaculaLeftEyeExample2

Profile: [Ophthalmic OCT Macula](StructureDefinition-ophthalmic-oct-macula.md)

**status**: Final

**category**: Exam

**code**: OCT macula analysis

**subject**: [Patient Example Female, DoB: 1990-01-01](Patient-PatientExample.md)

**note**: 

> 

Device: Heidelberg Spectralis SPIRIT tracking laser tomography


**bodySite**: 

> **component****code**: Central macular thickness (CMT)**value**: 271 um (Details: UCUM codeum = 'um')

> **component****code**: Center thickness**value**: 191 um (Details: UCUM codeum = 'um')

> **component****code**: Central Min**value**: 189 um (Details: UCUM codeum = 'um')

> **component****code**: Central Max**value**: 244 um (Details: UCUM codeum = 'um')

> **component****code**: Inner Superior thickness**value**: 315 um (Details: UCUM codeum = 'um')

> **component****code**: Inner Nasal thickness**value**: 317 um (Details: UCUM codeum = 'um')

> **component****code**: Inner Inferior thickness**value**: 315 um (Details: UCUM codeum = 'um')

> **component****code**: Inner Temporal thickness**value**: 284 um (Details: UCUM codeum = 'um')

> **component****code**: Outer Superior thickness**value**: 269 um (Details: UCUM codeum = 'um')

> **component****code**: Outer Nasal thickness**value**: 284 um (Details: UCUM codeum = 'um')

> **component****code**: Outer Inferior thickness**value**: 268 um (Details: UCUM codeum = 'um')

> **component****code**: Outer Temporal thickness**value**: 242 um (Details: UCUM codeum = 'um')

> **component****code**: Central subfield volume**value**: 0.27 mm3 (Details: UCUM codemm3 = 'mm3')

> **component****code**: ETDRS circle diameters**value**: 1, 3, 6 mm ETDRS

> **component****code**: Retinal thickness definition**value**: ILM to RPE

> **component****code**: Pupil dilated**value**: No

> **component****code**: Signal strength**value**: 9 1 (Details: UCUM code1 = '1')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "OCTMaculaLeftEyeExample2",
  "meta" : {
    "profile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-oct-macula"]
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
    "text" : "OCT macula analysis"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "note" : [{
    "text" : "Device: Heidelberg Spectralis SPIRIT tracking laser tomography"
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
      "text" : "Central macular thickness (CMT)"
    },
    "valueQuantity" : {
      "value" : 271,
      "system" : "http://unitsofmeasure.org",
      "code" : "um"
    }
  },
  {
    "code" : {
      "text" : "Center thickness"
    },
    "valueQuantity" : {
      "value" : 191,
      "system" : "http://unitsofmeasure.org",
      "code" : "um"
    }
  },
  {
    "code" : {
      "text" : "Central Min"
    },
    "valueQuantity" : {
      "value" : 189,
      "system" : "http://unitsofmeasure.org",
      "code" : "um"
    }
  },
  {
    "code" : {
      "text" : "Central Max"
    },
    "valueQuantity" : {
      "value" : 244,
      "system" : "http://unitsofmeasure.org",
      "code" : "um"
    }
  },
  {
    "code" : {
      "text" : "Inner Superior thickness"
    },
    "valueQuantity" : {
      "value" : 315,
      "system" : "http://unitsofmeasure.org",
      "code" : "um"
    }
  },
  {
    "code" : {
      "text" : "Inner Nasal thickness"
    },
    "valueQuantity" : {
      "value" : 317,
      "system" : "http://unitsofmeasure.org",
      "code" : "um"
    }
  },
  {
    "code" : {
      "text" : "Inner Inferior thickness"
    },
    "valueQuantity" : {
      "value" : 315,
      "system" : "http://unitsofmeasure.org",
      "code" : "um"
    }
  },
  {
    "code" : {
      "text" : "Inner Temporal thickness"
    },
    "valueQuantity" : {
      "value" : 284,
      "system" : "http://unitsofmeasure.org",
      "code" : "um"
    }
  },
  {
    "code" : {
      "text" : "Outer Superior thickness"
    },
    "valueQuantity" : {
      "value" : 269,
      "system" : "http://unitsofmeasure.org",
      "code" : "um"
    }
  },
  {
    "code" : {
      "text" : "Outer Nasal thickness"
    },
    "valueQuantity" : {
      "value" : 284,
      "system" : "http://unitsofmeasure.org",
      "code" : "um"
    }
  },
  {
    "code" : {
      "text" : "Outer Inferior thickness"
    },
    "valueQuantity" : {
      "value" : 268,
      "system" : "http://unitsofmeasure.org",
      "code" : "um"
    }
  },
  {
    "code" : {
      "text" : "Outer Temporal thickness"
    },
    "valueQuantity" : {
      "value" : 242,
      "system" : "http://unitsofmeasure.org",
      "code" : "um"
    }
  },
  {
    "code" : {
      "text" : "Central subfield volume"
    },
    "valueQuantity" : {
      "value" : 0.27,
      "system" : "http://unitsofmeasure.org",
      "code" : "mm3"
    }
  },
  {
    "code" : {
      "text" : "ETDRS circle diameters"
    },
    "valueString" : "1, 3, 6 mm ETDRS"
  },
  {
    "code" : {
      "text" : "Retinal thickness definition"
    },
    "valueCodeableConcept" : {
      "text" : "ILM to RPE"
    }
  },
  {
    "code" : {
      "text" : "Pupil dilated"
    },
    "valueCodeableConcept" : {
      "text" : "No"
    }
  },
  {
    "code" : {
      "text" : "Signal strength"
    },
    "valueQuantity" : {
      "value" : 9,
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  }]
}

```
