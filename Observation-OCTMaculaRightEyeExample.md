# OCT macula: right eye - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OCT macula: right eye**

## Example Observation: OCT macula: right eye

Profile: [Ophthalmic OCT Macula](StructureDefinition-ophthalmic-oct-macula.md)

**status**: Final

**category**: Exam

**code**: OCT macula analysis

**subject**: [Patient Example Female, DoB: 1990-01-01 ( Passport number: PA1234567)](Patient-PatientExample.md)

**effective**: 2026-08-18 09:00:00+0000

**performer**: [Practitioner Ophthalmologist Example ](Practitioner-OphthalmologistExample.md)

**interpretation**: Within normal limits

**note**: 

> 

Device: Heidelberg Spectralis SPIRIT tracking laser tomography


**bodySite**: 

> **component****code**: Central macular thickness (CMT)**value**: 285 um (Details: UCUM codeum = 'um')

> **component****code**: Center thickness**value**: 250 um (Details: UCUM codeum = 'um')

> **component****code**: Central Min**value**: 245 um (Details: UCUM codeum = 'um')

> **component****code**: Central Max**value**: 318 um (Details: UCUM codeum = 'um')

> **component****code**: Inner Superior thickness**value**: 328 um (Details: UCUM codeum = 'um')

> **component****code**: Inner Nasal thickness**value**: 339 um (Details: UCUM codeum = 'um')

> **component****code**: Inner Inferior thickness**value**: 327 um (Details: UCUM codeum = 'um')

> **component****code**: Inner Temporal thickness**value**: 299 um (Details: UCUM codeum = 'um')

> **component****code**: Outer Superior thickness**value**: 276 um (Details: UCUM codeum = 'um')

> **component****code**: Outer Nasal thickness**value**: 299 um (Details: UCUM codeum = 'um')

> **component****code**: Outer Inferior thickness**value**: 264 um (Details: UCUM codeum = 'um')

> **component****code**: Outer Temporal thickness**value**: 249 um (Details: UCUM codeum = 'um')

> **component****code**: Total macular grid volume**value**: 8.6 mm3 (Details: UCUM codemm3 = 'mm3')

> **component****code**: ETDRS circle diameters**value**: 1, 3, 6 mm ETDRS

> **component****code**: Retinal thickness definition**value**: ILM to RPE

> **component****code**: Pupil dilated**value**: No

> **component****code**: Signal strength**value**: 9 1 (Details: UCUM code1 = '1')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "OCTMaculaRightEyeExample",
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
  "effectiveDateTime" : "2026-08-18T09:00:00Z",
  "performer" : [{
    "reference" : "Practitioner/OphthalmologistExample"
  }],
  "interpretation" : [{
    "coding" : [{
      "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
      "code" : "within-normal-limits",
      "display" : "Within normal limits"
    }],
    "text" : "Within normal limits"
  }],
  "note" : [{
    "text" : "Device: Heidelberg Spectralis SPIRIT tracking laser tomography"
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
        "system" : "http://loinc.org",
        "code" : "57109-1",
        "display" : "Macular grid.center subfield thickness by OCT"
      }],
      "text" : "Central macular thickness (CMT)"
    },
    "valueQuantity" : {
      "value" : 285,
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
      "value" : 250,
      "system" : "http://unitsofmeasure.org",
      "code" : "um"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "central-subfield-thickness-min",
        "display" : "Central subfield thickness, minimum"
      }],
      "text" : "Central Min"
    },
    "valueQuantity" : {
      "value" : 245,
      "system" : "http://unitsofmeasure.org",
      "code" : "um"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "central-subfield-thickness-max",
        "display" : "Central subfield thickness, maximum"
      }],
      "text" : "Central Max"
    },
    "valueQuantity" : {
      "value" : 318,
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
      "value" : 328,
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
      "value" : 339,
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
      "value" : 327,
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
      "value" : 299,
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
      "value" : 276,
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
      "value" : 299,
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
      "value" : 264,
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
      "value" : 249,
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
      "text" : "Total macular grid volume"
    },
    "valueQuantity" : {
      "value" : 8.6,
      "system" : "http://unitsofmeasure.org",
      "code" : "mm3"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "etdrs-grid-diameters",
        "display" : "ETDRS grid circle diameters"
      }],
      "text" : "ETDRS circle diameters"
    },
    "valueString" : "1, 3, 6 mm ETDRS"
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "retinal-thickness-definition",
        "display" : "Retinal thickness definition"
      }],
      "text" : "Retinal thickness definition"
    },
    "valueCodeableConcept" : {
      "text" : "ILM to RPE"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "pupil-dilated",
        "display" : "Pupil dilated"
      }],
      "text" : "Pupil dilated"
    },
    "valueCodeableConcept" : {
      "text" : "No"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "signal-strength",
        "display" : "Scan signal strength / quality"
      }],
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
