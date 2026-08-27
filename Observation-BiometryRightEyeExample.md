# BiometryRightEyeExample - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BiometryRightEyeExample**

## Example Observation: BiometryRightEyeExample

Profile: [Ophthalmic Ocular Biometry](StructureDefinition-ophthalmic-ocular-biometry.md)

**status**: Final

**category**: Exam

**code**: Ocular biometry for IOL power calculation

**subject**: [Patient Example Female, DoB: 1990-01-01](Patient-PatientExample.md)

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

> **component****code**: K1 (flat keratometry)**value**: 43.2 D (Details: UCUM codeD = 'D')

> **component****code**: K1 radius**value**: 7.81 mm (Details: UCUM codemm = 'mm')

> **component****code**: K2 (steep keratometry)**value**: 44.6 D (Details: UCUM codeD = 'D')

> **component****code**: K2 radius**value**: 7.56 mm (Details: UCUM codemm = 'mm')

> **component****code**: Corneal cylinder**value**: 1.4 D (Details: UCUM codeD = 'D')

> **component****code**: Keratometric index (n)**value**: 1.3375 1 (Details: UCUM code1 = '1')

> **component****code**: White-to-white (WTW)**value**: 11.8 mm (Details: UCUM codemm = 'mm')

> **component****code**: Pupil diameter**value**: 3.4 mm (Details: UCUM codemm = 'mm')

> **component****code**: Pupil dilated**value**: No

> **component****code**: Refractive surgery history**value**: None

> **component****code**: Target refraction**value**: -0.25 D (Details: UCUM codeD = 'D')

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
    "text" : "Ocular biometry for IOL power calculation"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
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
      "text" : "AL measurement type"
    },
    "valueCodeableConcept" : {
      "text" : "Optical"
    }
  },
  {
    "code" : {
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
      "text" : "ACD definition"
    },
    "valueCodeableConcept" : {
      "text" : "Epithelium to lens"
    }
  },
  {
    "code" : {
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
      "text" : "Lens status"
    },
    "valueCodeableConcept" : {
      "text" : "Phakic"
    }
  },
  {
    "code" : {
      "text" : "K1 (flat keratometry)"
    },
    "valueQuantity" : {
      "value" : 43.2,
      "system" : "http://unitsofmeasure.org",
      "code" : "D"
    }
  },
  {
    "code" : {
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
      "text" : "K2 (steep keratometry)"
    },
    "valueQuantity" : {
      "value" : 44.6,
      "system" : "http://unitsofmeasure.org",
      "code" : "D"
    }
  },
  {
    "code" : {
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
      "text" : "Corneal cylinder"
    },
    "valueQuantity" : {
      "value" : 1.4,
      "system" : "http://unitsofmeasure.org",
      "code" : "D"
    }
  },
  {
    "code" : {
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
      "text" : "Pupil dilated"
    },
    "valueCodeableConcept" : {
      "text" : "No"
    }
  },
  {
    "code" : {
      "text" : "Refractive surgery history"
    },
    "valueCodeableConcept" : {
      "text" : "None"
    }
  },
  {
    "code" : {
      "text" : "Target refraction"
    },
    "valueQuantity" : {
      "value" : -0.25,
      "system" : "http://unitsofmeasure.org",
      "code" : "D"
    }
  },
  {
    "code" : {
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
