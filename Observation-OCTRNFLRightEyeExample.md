# OCT RNFL: right eye - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OCT RNFL: right eye**

## Example Observation: OCT RNFL: right eye

Profile: [Ophthalmic OCT RNFL](StructureDefinition-ophthalmic-oct-rnfl.md)

**status**: Final

**category**: Exam

**code**: OCT optic disc / RNFL analysis

**subject**: [Patient Example Female, DoB: 1990-01-01 ( Passport number: PA1234567)](Patient-PatientExample.md)

**effective**: 2026-08-18 09:00:00+0000

**performer**: [Practitioner Ophthalmologist Example ](Practitioner-OphthalmologistExample.md)

**interpretation**: Borderline (inferior quadrant borderline)

**note**: 

> 

Device: Heidelberg Spectralis SPIRIT tracking laser tomography


**bodySite**: 

> **component****code**: Cup area**value**: 0.43 mm2 (Details: UCUM codemm2 = 'mm2')

> **component****code**: Cup volume**value**: 0.08 mm3 (Details: UCUM codemm3 = 'mm3')

> **component****code**: Rim volume**value**: 0.35 mm3 (Details: UCUM codemm3 = 'mm3')

> **component****code**: C/D horizontal**value**: 0.42 1 (Details: UCUM code1 = '1')

> **component****code**: C/D vertical**value**: 0.38 1 (Details: UCUM code1 = '1')

> **component****code**: Disc diameter horizontal**value**: 1.78 mm (Details: UCUM codemm = 'mm')

> **component****code**: Disc diameter vertical**value**: 1.92 mm (Details: UCUM codemm = 'mm')

> **component****code**: Disc diameter mean**value**: 1.85 mm (Details: UCUM codemm = 'mm')

> **component****code**: Cup diameter horizontal**value**: 0.75 mm (Details: UCUM codemm = 'mm')

> **component****code**: Cup diameter vertical**value**: 0.73 mm (Details: UCUM codemm = 'mm')

> **component****code**: Cup diameter mean**value**: 0.74 mm (Details: UCUM codemm = 'mm')

> **component****code**: Mean cup depth**value**: 0.18 mm (Details: UCUM codemm = 'mm')

> **component****code**: Max cup depth**value**: 0.35 mm (Details: UCUM codemm = 'mm')

> **component****code**: Disc vert/horiz ratio**value**: 1.08 1 (Details: UCUM code1 = '1')

> **component****code**: Cup vert/horiz ratio**value**: 0.97 1 (Details: UCUM code1 = '1')

> **component****code**: Rim/Disc ratio**value**: 0.84 1 (Details: UCUM code1 = '1')

> **component****code**: Rim absence**value**: 0 deg (Details: UCUM codedeg = 'deg')

> **component****code**: DDLS**value**: 2

> **component****code**: RNFL Symmetry**value**: 0.88 1 (Details: UCUM code1 = '1')

> **component****code**: Mean TSNIT**value**: 92 um (Details: UCUM codeum = 'um')

> **component****code**: TSNIT std deviation**value**: 12 um (Details: UCUM codeum = 'um')

> **component****code**: RNFL Superior quadrant average**value**: 118 um (Details: UCUM codeum = 'um')

> **component****code**: RNFL Inferior quadrant average**value**: 104 um (Details: UCUM codeum = 'um')

> **component****code**: RNFL Nasal quadrant average**value**: 74 um (Details: UCUM codeum = 'um')

> **component****code**: RNFL Temporal quadrant average**value**: 72 um (Details: UCUM codeum = 'um')

> **component****code**: Signal strength**value**: 8 1 (Details: UCUM code1 = '1')

> **component****code**: Retinal thickness definition**value**: ILM to RNFL boundary

> **component****code**: Pupil dilated**value**: No



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "OCTRNFLRightEyeExample",
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
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "86291-2",
      "display" : "Retina Retinal nerve fiber layer panel by OCT"
    }],
    "text" : "OCT optic disc / RNFL analysis"
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
      "code" : "borderline",
      "display" : "Borderline"
    }],
    "text" : "Borderline (inferior quadrant borderline)"
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
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "optic-cup-area",
        "display" : "Optic cup area"
      }],
      "text" : "Cup area"
    },
    "valueQuantity" : {
      "value" : 0.43,
      "system" : "http://unitsofmeasure.org",
      "code" : "mm2"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "optic-cup-volume",
        "display" : "Optic cup volume"
      }],
      "text" : "Cup volume"
    },
    "valueQuantity" : {
      "value" : 0.08,
      "system" : "http://unitsofmeasure.org",
      "code" : "mm3"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "neuroretinal-rim-volume",
        "display" : "Neuroretinal rim volume"
      }],
      "text" : "Rim volume"
    },
    "valueQuantity" : {
      "value" : 0.35,
      "system" : "http://unitsofmeasure.org",
      "code" : "mm3"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "cup-disc-ratio-horizontal",
        "display" : "Cup-to-disc ratio, horizontal"
      }],
      "text" : "C/D horizontal"
    },
    "valueQuantity" : {
      "value" : 0.42,
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "cup-disc-ratio-vertical",
        "display" : "Cup-to-disc ratio, vertical"
      }],
      "text" : "C/D vertical"
    },
    "valueQuantity" : {
      "value" : 0.38,
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "optic-disc-diameter-horizontal",
        "display" : "Optic disc diameter, horizontal"
      }],
      "text" : "Disc diameter horizontal"
    },
    "valueQuantity" : {
      "value" : 1.78,
      "system" : "http://unitsofmeasure.org",
      "code" : "mm"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "optic-disc-diameter-vertical",
        "display" : "Optic disc diameter, vertical"
      }],
      "text" : "Disc diameter vertical"
    },
    "valueQuantity" : {
      "value" : 1.92,
      "system" : "http://unitsofmeasure.org",
      "code" : "mm"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "optic-disc-diameter-mean",
        "display" : "Optic disc diameter, mean"
      }],
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
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "optic-cup-diameter-horizontal",
        "display" : "Optic cup diameter, horizontal"
      }],
      "text" : "Cup diameter horizontal"
    },
    "valueQuantity" : {
      "value" : 0.75,
      "system" : "http://unitsofmeasure.org",
      "code" : "mm"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "optic-cup-diameter-vertical",
        "display" : "Optic cup diameter, vertical"
      }],
      "text" : "Cup diameter vertical"
    },
    "valueQuantity" : {
      "value" : 0.73,
      "system" : "http://unitsofmeasure.org",
      "code" : "mm"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "optic-cup-diameter-mean",
        "display" : "Optic cup diameter, mean"
      }],
      "text" : "Cup diameter mean"
    },
    "valueQuantity" : {
      "value" : 0.74,
      "system" : "http://unitsofmeasure.org",
      "code" : "mm"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "optic-cup-depth-mean",
        "display" : "Optic cup depth, mean"
      }],
      "text" : "Mean cup depth"
    },
    "valueQuantity" : {
      "value" : 0.18,
      "system" : "http://unitsofmeasure.org",
      "code" : "mm"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "optic-cup-depth-max",
        "display" : "Optic cup depth, maximum"
      }],
      "text" : "Max cup depth"
    },
    "valueQuantity" : {
      "value" : 0.35,
      "system" : "http://unitsofmeasure.org",
      "code" : "mm"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "optic-disc-vertical-horizontal-ratio",
        "display" : "Optic disc vertical-to-horizontal diameter ratio"
      }],
      "text" : "Disc vert/horiz ratio"
    },
    "valueQuantity" : {
      "value" : 1.08,
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "optic-cup-vertical-horizontal-ratio",
        "display" : "Optic cup vertical-to-horizontal diameter ratio"
      }],
      "text" : "Cup vert/horiz ratio"
    },
    "valueQuantity" : {
      "value" : 0.97,
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "rim-disc-area-ratio",
        "display" : "Neuroretinal rim-to-disc area ratio"
      }],
      "text" : "Rim/Disc ratio"
    },
    "valueQuantity" : {
      "value" : 0.84,
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "neuroretinal-rim-absence-extent",
        "display" : "Angular extent of neuroretinal rim absence"
      }],
      "text" : "Rim absence"
    },
    "valueQuantity" : {
      "value" : 0,
      "system" : "http://unitsofmeasure.org",
      "code" : "deg"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "disc-damage-likelihood-scale",
        "display" : "Disc Damage Likelihood Scale (DDLS) stage"
      }],
      "text" : "DDLS"
    },
    "valueInteger" : 2
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "rnfl-symmetry",
        "display" : "RNFL inter-eye symmetry"
      }],
      "text" : "RNFL Symmetry"
    },
    "valueQuantity" : {
      "value" : 0.88,
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "rnfl-thickness-mean-tsnit",
        "display" : "Mean RNFL thickness (TSNIT average)"
      },
      {
        "system" : "http://loinc.org",
        "code" : "86301-9",
        "display" : "Right retina Retinal nerve fiber layer.mean thickness by OCT"
      }],
      "text" : "Mean TSNIT"
    },
    "valueQuantity" : {
      "value" : 92,
      "system" : "http://unitsofmeasure.org",
      "code" : "um"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "rnfl-thickness-tsnit-sd",
        "display" : "RNFL TSNIT profile standard deviation"
      }],
      "text" : "TSNIT std deviation"
    },
    "valueQuantity" : {
      "value" : 12,
      "system" : "http://unitsofmeasure.org",
      "code" : "um"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "rnfl-thickness-superior",
        "display" : "RNFL average thickness, superior quadrant"
      }],
      "text" : "RNFL Superior quadrant average"
    },
    "valueQuantity" : {
      "value" : 118,
      "system" : "http://unitsofmeasure.org",
      "code" : "um"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "rnfl-thickness-inferior",
        "display" : "RNFL average thickness, inferior quadrant"
      }],
      "text" : "RNFL Inferior quadrant average"
    },
    "valueQuantity" : {
      "value" : 104,
      "system" : "http://unitsofmeasure.org",
      "code" : "um"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "rnfl-thickness-nasal",
        "display" : "RNFL average thickness, nasal quadrant"
      }],
      "text" : "RNFL Nasal quadrant average"
    },
    "valueQuantity" : {
      "value" : 74,
      "system" : "http://unitsofmeasure.org",
      "code" : "um"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "rnfl-thickness-temporal",
        "display" : "RNFL average thickness, temporal quadrant"
      }],
      "text" : "RNFL Temporal quadrant average"
    },
    "valueQuantity" : {
      "value" : 72,
      "system" : "http://unitsofmeasure.org",
      "code" : "um"
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
      "value" : 8,
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
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
      "text" : "ILM to RNFL boundary"
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
  }]
}

```
