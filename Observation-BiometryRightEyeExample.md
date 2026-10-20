# Ocular biometry: right eye - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ocular biometry: right eye**

## Example Observation: Ocular biometry: right eye

Profile: [Ophthalmic Ocular Biometry](StructureDefinition-ophthalmic-ocular-biometry.md)

**status**: Final

**category**: Exam

**code**: Ocular biometry for IOL power calculation

**subject**: [Patient Example Female, DoB: 1990-01-01 ( Passport number: PA1234567)](Patient-PatientExample.md)

**effective**: 2026-08-18 09:00:00+0000

**performer**: [Practitioner Ophthalmologist Example ](Practitioner-OphthalmologistExample.md)

**note**: 

> 

Example based on typical IOLMaster 700 biometry report, comparing two formulas


**bodySite**: 

**method**: Optical biometry (IOLMaster)

**hasMember**: 

* [Barrett Universal II - AcrySof IQ SN60WF 21.0D](Observation-IOLFormulaBarrettExample.md)
* [SRK/T - AcrySof IQ SN60WF 21.5D](Observation-IOLFormulaSRKTExample.md)

> **component****code**: Axial length (AL)**value**: 23.45 mm (Details: UCUM codemm = 'mm')

> **component****code**: AL measurement type**value**: Optical

> **component****code**: AL signal-to-noise ratio (SNR)**value**: 3.2 1 (Details: UCUM code1 = '1')

> **component****code**: Anterior chamber depth (ACD)**value**: 3.1 mm (Details: UCUM codemm = 'mm')

> **component****code**: ACD definition**value**: Epithelium to lens

> **component****code**: Lens thickness (LT)**value**: 4.35 mm (Details: UCUM codemm = 'mm')

> **component****code**: Lens status**value**: Phakic

> **component****code**: K1 (flat keratometry)**value**: 43.2 [diop] (Details: UCUM code[diop] = '[diop]')

> **component****code**: K1 axis**value**: 12 deg (Details: UCUM codedeg = 'deg')

> **component****code**: K1 radius**value**: 7.81 mm (Details: UCUM codemm = 'mm')

> **component****code**: K2 (steep keratometry)**value**: 44.6 [diop] (Details: UCUM code[diop] = '[diop]')

> **component****code**: K2 axis**value**: 102 deg (Details: UCUM codedeg = 'deg')

> **component****code**: K2 radius**value**: 7.56 mm (Details: UCUM codemm = 'mm')

> **component****code**: Km (mean keratometry)**value**: 43.9 [diop] (Details: UCUM code[diop] = '[diop]')

> **component****code**: R/SE mean radius**value**: 7.69 mm (Details: UCUM codemm = 'mm')

> **component****code**: Corneal cylinder**value**: 1.4 [diop] (Details: UCUM code[diop] = '[diop]')

> **component****code**: Keratometric index (n)**value**: 1.3375 1 (Details: UCUM code1 = '1')

> **component****code**: White-to-white (WTW)**value**: 11.8 mm (Details: UCUM codemm = 'mm')

> **component****code**: Pupil diameter**value**: 3.4 mm (Details: UCUM codemm = 'mm')

> **component****code**: Pupil dilated**value**: No

> **component****code**: Refractive surgery history**value**: None

> **component****code**: Target refraction**value**: -0.25 [diop] (Details: UCUM code[diop] = '[diop]')

> **component****code**: Vertex distance**value**: 12 mm (Details: UCUM codemm = 'mm')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "BiometryRightEyeExample",
  "meta" : {
    "profile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-ocular-biometry"]
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
      "code" : "ocular-biometry",
      "display" : "Ocular biometry"
    }],
    "text" : "Ocular biometry for IOL power calculation"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "effectiveDateTime" : "2026-08-18T09:00:00Z",
  "performer" : [{
    "reference" : "Practitioner/OphthalmologistExample"
  }],
  "note" : [{
    "text" : "Example based on typical IOLMaster 700 biometry report, comparing two formulas"
  }],
  "bodySite" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/bodySite",
      "valueReference" : {
        "reference" : "BodyStructure/RightEyeStructureExample"
      }
    }]
  },
  "method" : {
    "text" : "Optical biometry (IOLMaster)"
  },
  "hasMember" : [{
    "reference" : "Observation/IOLFormulaBarrettExample",
    "display" : "Barrett Universal II - AcrySof IQ SN60WF 21.0D"
  },
  {
    "reference" : "Observation/IOLFormulaSRKTExample",
    "display" : "SRK/T - AcrySof IQ SN60WF 21.5D"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "axial-length",
        "display" : "Axial length"
      }],
      "text" : "Axial length (AL)"
    },
    "valueQuantity" : {
      "value" : 23.45,
      "system" : "http://unitsofmeasure.org",
      "code" : "mm"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "axial-length-measurement-type",
        "display" : "Axial length measurement type"
      }],
      "text" : "AL measurement type"
    },
    "valueCodeableConcept" : {
      "text" : "Optical"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "axial-length-snr",
        "display" : "Axial length signal-to-noise ratio"
      }],
      "text" : "AL signal-to-noise ratio (SNR)"
    },
    "valueQuantity" : {
      "value" : 3.2,
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "anterior-chamber-depth",
        "display" : "Anterior chamber depth"
      }],
      "text" : "Anterior chamber depth (ACD)"
    },
    "valueQuantity" : {
      "value" : 3.1,
      "system" : "http://unitsofmeasure.org",
      "code" : "mm"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "anterior-chamber-depth-definition",
        "display" : "Anterior chamber depth definition"
      }],
      "text" : "ACD definition"
    },
    "valueCodeableConcept" : {
      "text" : "Epithelium to lens"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "lens-thickness",
        "display" : "Lens thickness"
      }],
      "text" : "Lens thickness (LT)"
    },
    "valueQuantity" : {
      "value" : 4.35,
      "system" : "http://unitsofmeasure.org",
      "code" : "mm"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "lens-status",
        "display" : "Lens status"
      }],
      "text" : "Lens status"
    },
    "valueCodeableConcept" : {
      "text" : "Phakic"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "keratometry-k1",
        "display" : "Keratometry K1 (flat)"
      }],
      "text" : "K1 (flat keratometry)"
    },
    "valueQuantity" : {
      "value" : 43.2,
      "system" : "http://unitsofmeasure.org",
      "code" : "[diop]"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "keratometry-k1-axis",
        "display" : "Keratometry K1 axis"
      }],
      "text" : "K1 axis"
    },
    "valueQuantity" : {
      "value" : 12,
      "system" : "http://unitsofmeasure.org",
      "code" : "deg"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "keratometry-k1-radius",
        "display" : "Keratometry K1 radius of curvature"
      }],
      "text" : "K1 radius"
    },
    "valueQuantity" : {
      "value" : 7.81,
      "system" : "http://unitsofmeasure.org",
      "code" : "mm"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "keratometry-k2",
        "display" : "Keratometry K2 (steep)"
      }],
      "text" : "K2 (steep keratometry)"
    },
    "valueQuantity" : {
      "value" : 44.6,
      "system" : "http://unitsofmeasure.org",
      "code" : "[diop]"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "keratometry-k2-axis",
        "display" : "Keratometry K2 axis"
      }],
      "text" : "K2 axis"
    },
    "valueQuantity" : {
      "value" : 102,
      "system" : "http://unitsofmeasure.org",
      "code" : "deg"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "keratometry-k2-radius",
        "display" : "Keratometry K2 radius of curvature"
      }],
      "text" : "K2 radius"
    },
    "valueQuantity" : {
      "value" : 7.56,
      "system" : "http://unitsofmeasure.org",
      "code" : "mm"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "keratometry-km",
        "display" : "Keratometry Km (mean)"
      }],
      "text" : "Km (mean keratometry)"
    },
    "valueQuantity" : {
      "value" : 43.9,
      "system" : "http://unitsofmeasure.org",
      "code" : "[diop]"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "keratometry-mean-radius",
        "display" : "Keratometry mean radius of curvature (R/SE)"
      }],
      "text" : "R/SE mean radius"
    },
    "valueQuantity" : {
      "value" : 7.69,
      "system" : "http://unitsofmeasure.org",
      "code" : "mm"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "corneal-astigmatism",
        "display" : "Corneal astigmatism (cylinder)"
      }],
      "text" : "Corneal cylinder"
    },
    "valueQuantity" : {
      "value" : 1.4,
      "system" : "http://unitsofmeasure.org",
      "code" : "[diop]"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "keratometric-index",
        "display" : "Keratometric index"
      }],
      "text" : "Keratometric index (n)"
    },
    "valueQuantity" : {
      "value" : 1.3375,
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "white-to-white",
        "display" : "White-to-white corneal diameter"
      }],
      "text" : "White-to-white (WTW)"
    },
    "valueQuantity" : {
      "value" : 11.8,
      "system" : "http://unitsofmeasure.org",
      "code" : "mm"
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
        "code" : "refractive-surgery-history",
        "display" : "Refractive surgery history"
      }],
      "text" : "Refractive surgery history"
    },
    "valueCodeableConcept" : {
      "text" : "None"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "target-refraction",
        "display" : "Target refraction"
      }],
      "text" : "Target refraction"
    },
    "valueQuantity" : {
      "value" : -0.25,
      "system" : "http://unitsofmeasure.org",
      "code" : "[diop]"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "vertex-distance",
        "display" : "Vertex distance"
      }],
      "text" : "Vertex distance"
    },
    "valueQuantity" : {
      "value" : 12,
      "system" : "http://unitsofmeasure.org",
      "code" : "mm"
    }
  }]
}

```
