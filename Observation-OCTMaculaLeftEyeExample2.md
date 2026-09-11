# OCTMaculaLeftEyeExample2 - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OCTMaculaLeftEyeExample2**

## Example Observation: OCTMaculaLeftEyeExample2

Profile: [Ophthalmic OCT Macula](StructureDefinition-ophthalmic-oct-macula.md)

**status**: Final

**category**: Exam

**code**: OCT macula analysis

**subject**: [Patient Example Female, DoB: 1990-01-01 ( PA1234567)](Patient-PatientExample.md)

**note**: 

> 

Device: Heidelberg Spectralis SPIRIT tracking laser tomography


**bodySite**: 

> **component****code**: Central macular thickness (CMT)**value**: 271 um (Details: UCUM codeum = 'um')

> **component****code**: Center thickness**value**: 191 um (Details: UCUM codeum = 'um')

> **component****code**: Inner Superior thickness**value**: 315 um (Details: UCUM codeum = 'um')

> **component****code**: Inner Nasal thickness**value**: 317 um (Details: UCUM codeum = 'um')

> **component****code**: Inner Inferior thickness**value**: 315 um (Details: UCUM codeum = 'um')

> **component****code**: Inner Temporal thickness**value**: 284 um (Details: UCUM codeum = 'um')

> **component****code**: Outer Superior thickness**value**: 269 um (Details: UCUM codeum = 'um')

> **component****code**: Outer Nasal thickness**value**: 284 um (Details: UCUM codeum = 'um')

> **component****code**: Outer Inferior thickness**value**: 268 um (Details: UCUM codeum = 'um')

> **component****code**: Outer Temporal thickness**value**: 242 um (Details: UCUM codeum = 'um')

> **component****code**: Central subfield volume**value**: 0.27 mm3 (Details: UCUM codemm3 = 'mm3')

> **component****code**: Signal strength**value**: 9 1 (Details: UCUM code1 = '1')

> **component****code**: Central Min**value**: 189 um (Details: UCUM codeum = 'um')

> **component****code**: Central Max**value**: 244 um (Details: UCUM codeum = 'um')

> **component****code**: ETDRS circle diameters**value**: 1, 3, 6 mm ETDRS

> **component****code**: Retinal thickness definition**value**: ILM to RPE

> **component****code**: Pupil dilated**value**: No



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
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "57119-0",
      "display" : "Optical coherence tomography panel"
    }],
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
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "57109-1",
        "display" : "Macular grid.center subfield thickness by OCT"
      }],
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
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "57108-3",
        "display" : "Macular grid.center point thickness by OCT"
      }],
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
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "57110-9",
        "display" : "Macular grid.inner superior subfield thickness by OCT"
      }],
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
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "57111-7",
        "display" : "Macular grid.inner nasal subfield thickness by OCT"
      }],
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
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "57112-5",
        "display" : "Macular grid.inner inferior subfield thickness by OCT"
      }],
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
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "57113-3",
        "display" : "Macular grid.inner temporal subfield thickness by OCT"
      }],
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
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "57114-1",
        "display" : "Macular grid.outer superior subfield thickness by OCT"
      }],
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
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "57115-8",
        "display" : "Macular grid.outer nasal subfield thickness by OCT"
      }],
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
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "57116-6",
        "display" : "Macular grid.outer inferior subfield thickness by OCT"
      }],
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
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "57117-4",
        "display" : "Macular grid.outer temporal subfield thickness by OCT"
      }],
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
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "57118-2",
        "display" : "Macular grid.total volume by OCT"
      }],
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
      "text" : "Signal strength"
    },
    "valueQuantity" : {
      "value" : 9,
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
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
  }]
}

```
