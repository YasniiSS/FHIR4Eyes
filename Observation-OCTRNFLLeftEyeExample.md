# OCTRNFLLeftEyeExample - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OCTRNFLLeftEyeExample**

## Example Observation: OCTRNFLLeftEyeExample

Profile: [Ophthalmic OCT RNFL](StructureDefinition-ophthalmic-oct-rnfl.md)

**status**: Final

**category**: Exam

**code**: OCT optic disc / RNFL analysis

**subject**: [Patient Example Female, DoB: 1990-01-01](Patient-PatientExample.md)

**interpretation**: Outside Normal Limits

**note**: 

> 

Device: Heidelberg Spectralis SPIRIT tracking laser tomography


**bodySite**: 

> **component****code**: Cup area**value**: 0.58 mm2 (Details: UCUM codemm2 = 'mm2')

> **component****code**: Cup volume**value**: 0.16 mm3 (Details: UCUM codemm3 = 'mm3')

> **component****code**: Rim volume**value**: 0.21 mm3 (Details: UCUM codemm3 = 'mm3')

> **component****code**: C/D horizontal**value**: 0.61 1 (Details: UCUM code1 = '1')

> **component****code**: C/D vertical**value**: 0.64 1 (Details: UCUM code1 = '1')

> **component****code**: Disc diameter horizontal**value**: 1.8 mm (Details: UCUM codemm = 'mm')

> **component****code**: Disc diameter vertical**value**: 1.9 mm (Details: UCUM codemm = 'mm')

> **component****code**: Disc diameter mean**value**: 1.85 mm (Details: UCUM codemm = 'mm')

> **component****code**: Cup diameter horizontal**value**: 1.1 mm (Details: UCUM codemm = 'mm')

> **component****code**: Cup diameter vertical**value**: 1.16 mm (Details: UCUM codemm = 'mm')

> **component****code**: Cup diameter mean**value**: 1.13 mm (Details: UCUM codemm = 'mm')

> **component****code**: Mean cup depth**value**: 0.29 mm (Details: UCUM codemm = 'mm')

> **component****code**: Max cup depth**value**: 0.52 mm (Details: UCUM codemm = 'mm')

> **component****code**: Disc vert/horiz ratio**value**: 1.06 1 (Details: UCUM code1 = '1')

> **component****code**: Cup vert/horiz ratio**value**: 1.05 1 (Details: UCUM code1 = '1')

> **component****code**: Rim/Disc ratio**value**: 0.39 1 (Details: UCUM code1 = '1')

> **component****code**: Rim absence**value**: 15 deg (Details: UCUM codedeg = 'deg')

> **component****code**: DDLS**value**: 5

> **component****code**: RNFL Symmetry**value**: 88 % (Details: UCUM code% = '%')

> **component****code**: Mean TSNIT**value**: 76 um (Details: UCUM codeum = 'um')

> **component****code**: TSNIT std deviation**value**: 18 um (Details: UCUM codeum = 'um')

> **component****code**: Signal strength**value**: 8 1 (Details: UCUM code1 = '1')

> **component****code**: Retinal thickness definition**value**: ILM to RNFL boundary

> **component****code**: Pupil dilated**value**: No



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
    "text" : "OCT optic disc / RNFL analysis"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "interpretation" : [{
    "text" : "Outside Normal Limits"
  }],
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
      "text" : "Cup area"
    },
    "valueQuantity" : {
      "value" : 0.58,
      "system" : "http://unitsofmeasure.org",
      "code" : "mm2"
    }
  },
  {
    "code" : {
      "text" : "Cup volume"
    },
    "valueQuantity" : {
      "value" : 0.16,
      "system" : "http://unitsofmeasure.org",
      "code" : "mm3"
    }
  },
  {
    "code" : {
      "text" : "Rim volume"
    },
    "valueQuantity" : {
      "value" : 0.21,
      "system" : "http://unitsofmeasure.org",
      "code" : "mm3"
    }
  },
  {
    "code" : {
      "text" : "C/D horizontal"
    },
    "valueQuantity" : {
      "value" : 0.61,
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  },
  {
    "code" : {
      "text" : "C/D vertical"
    },
    "valueQuantity" : {
      "value" : 0.64,
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  },
  {
    "code" : {
      "text" : "Disc diameter horizontal"
    },
    "valueQuantity" : {
      "value" : 1.8,
      "system" : "http://unitsofmeasure.org",
      "code" : "mm"
    }
  },
  {
    "code" : {
      "text" : "Disc diameter vertical"
    },
    "valueQuantity" : {
      "value" : 1.9,
      "system" : "http://unitsofmeasure.org",
      "code" : "mm"
    }
  },
  {
    "code" : {
      "text" : "Disc diameter mean"
    },
    "valueQuantity" : {
      "value" : 1.85,
      "system" : "http://unitsofmeasure.org",
      "code" : "mm"
    }
  },
  {
    "code" : {
      "text" : "Cup diameter horizontal"
    },
    "valueQuantity" : {
      "value" : 1.1,
      "system" : "http://unitsofmeasure.org",
      "code" : "mm"
    }
  },
  {
    "code" : {
      "text" : "Cup diameter vertical"
    },
    "valueQuantity" : {
      "value" : 1.16,
      "system" : "http://unitsofmeasure.org",
      "code" : "mm"
    }
  },
  {
    "code" : {
      "text" : "Cup diameter mean"
    },
    "valueQuantity" : {
      "value" : 1.13,
      "system" : "http://unitsofmeasure.org",
      "code" : "mm"
    }
  },
  {
    "code" : {
      "text" : "Mean cup depth"
    },
    "valueQuantity" : {
      "value" : 0.29,
      "system" : "http://unitsofmeasure.org",
      "code" : "mm"
    }
  },
  {
    "code" : {
      "text" : "Max cup depth"
    },
    "valueQuantity" : {
      "value" : 0.52,
      "system" : "http://unitsofmeasure.org",
      "code" : "mm"
    }
  },
  {
    "code" : {
      "text" : "Disc vert/horiz ratio"
    },
    "valueQuantity" : {
      "value" : 1.06,
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  },
  {
    "code" : {
      "text" : "Cup vert/horiz ratio"
    },
    "valueQuantity" : {
      "value" : 1.05,
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  },
  {
    "code" : {
      "text" : "Rim/Disc ratio"
    },
    "valueQuantity" : {
      "value" : 0.39,
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  },
  {
    "code" : {
      "text" : "Rim absence"
    },
    "valueQuantity" : {
      "value" : 15,
      "system" : "http://unitsofmeasure.org",
      "code" : "deg"
    }
  },
  {
    "code" : {
      "text" : "DDLS"
    },
    "valueInteger" : 5
  },
  {
    "code" : {
      "text" : "RNFL Symmetry"
    },
    "valueQuantity" : {
      "value" : 88,
      "system" : "http://unitsofmeasure.org",
      "code" : "%"
    }
  },
  {
    "code" : {
      "text" : "Mean TSNIT"
    },
    "valueQuantity" : {
      "value" : 76,
      "system" : "http://unitsofmeasure.org",
      "code" : "um"
    }
  },
  {
    "code" : {
      "text" : "TSNIT std deviation"
    },
    "valueQuantity" : {
      "value" : 18,
      "system" : "http://unitsofmeasure.org",
      "code" : "um"
    }
  },
  {
    "code" : {
      "text" : "Signal strength"
    },
    "valueQuantity" : {
      "value" : 8,
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  },
  {
    "code" : {
      "text" : "Retinal thickness definition"
    },
    "valueCodeableConcept" : {
      "text" : "ILM to RNFL boundary"
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
