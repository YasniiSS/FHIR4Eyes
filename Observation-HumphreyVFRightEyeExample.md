# Humphrey visual field: right eye - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Humphrey visual field: right eye**

## Example Observation: Humphrey visual field: right eye

Profile: [Ophthalmic Humphrey Visual Field](StructureDefinition-ophthalmic-humphrey-visual-field.md)

**status**: Final

**category**: Exam

**code**: Automated static perimetry, right eye

**subject**: [Patient Example Female, DoB: 1990-01-01 ( Passport number: PA1234567)](Patient-PatientExample.md)

**effective**: 2026-08-18 09:00:00+0000

**performer**: [Practitioner Ophthalmologist Example ](Practitioner-OphthalmologistExample.md)

**note**: 

> 

Example based on typical Humphrey Field Analyzer 24-2 SITA Standard report. Right eye borderline unreliable fixation losses within normal limits.


**bodySite**: 

**method**: SITA Standard

> **component****code**: Test pattern**value**: 24-2

> **component****code**: Mean Deviation (MD)**value**: -3.42 dB (Details: UCUM codedB = 'dB')

> **component****code**: Pattern Standard Deviation (PSD)**value**: 4.15 dB (Details: UCUM codedB = 'dB')

> **component****code**: Visual Field Index (VFI)**value**: 91 % (Details: UCUM code% = '%')

> **component****code**: Glaucoma Hemifield Test (GHT)**value**: Borderline

> **component****code**: Fixation losses**value**: 1 1 (Details: UCUM code1 = '1')/15 1 (Details: UCUM code1 = '1')

> **component****code**: False positive errors**value**: 3 % (Details: UCUM code% = '%')

> **component****code**: False negative errors**value**: 4 % (Details: UCUM code% = '%')

> **component****code**: Fixation strategy**value**: Gaze tracking

> **component****code**: Stimulus size**value**: Goldmann III

> **component****code**: Stimulus color**value**: White

> **component****code**: Background luminance (31.5 asb)**value**: 10 cd/m2 (Details: UCUM codecd/m2 = 'cd/m2')

> **component****code**: Stimulus duration**value**: 200 ms (Details: UCUM codems = 'ms')

> **component****code**: Foveal sensitivity**value**: 34 dB (Details: UCUM codedB = 'dB')

> **component****code**: Test duration**value**: 6 min (Details: UCUM codemin = 'min')

> **component****code**: Number of test points**value**: 54 1 (Details: UCUM code1 = '1')

> **component****code**: Correction lens used**value**: Yes, near correction trial lens

> **component****code**: Correction lens power**value**: 2.5 [diop] (Details: UCUM code[diop] = '[diop]')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "HumphreyVFRightEyeExample",
  "meta" : {
    "profile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-humphrey-visual-field"]
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
      "code" : "visual-field-static-perimetry",
      "display" : "Automated static perimetry (visual field)"
    }],
    "text" : "Automated static perimetry, right eye"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "effectiveDateTime" : "2026-08-18T09:00:00Z",
  "performer" : [{
    "reference" : "Practitioner/OphthalmologistExample"
  }],
  "note" : [{
    "text" : "Example based on typical Humphrey Field Analyzer 24-2 SITA Standard report. Right eye borderline unreliable fixation losses within normal limits."
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
    "text" : "SITA Standard"
  },
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "visual-field-test-pattern",
        "display" : "Visual field test pattern"
      }],
      "text" : "Test pattern"
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://dicom.nema.org/resources/ontology/DCM",
        "code" : "111800",
        "display" : "Visual Field 24-2 Test Pattern"
      }],
      "text" : "24-2"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "visual-field-mean-deviation",
        "display" : "Visual field mean deviation (MD)"
      }],
      "text" : "Mean Deviation (MD)"
    },
    "valueQuantity" : {
      "value" : -3.42,
      "system" : "http://unitsofmeasure.org",
      "code" : "dB"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "visual-field-pattern-standard-deviation",
        "display" : "Visual field pattern standard deviation (PSD)"
      }],
      "text" : "Pattern Standard Deviation (PSD)"
    },
    "valueQuantity" : {
      "value" : 4.15,
      "system" : "http://unitsofmeasure.org",
      "code" : "dB"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "visual-field-index",
        "display" : "Visual field index (VFI)"
      }],
      "text" : "Visual Field Index (VFI)"
    },
    "valueQuantity" : {
      "value" : 91,
      "system" : "http://unitsofmeasure.org",
      "code" : "%"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "glaucoma-hemifield-test",
        "display" : "Glaucoma Hemifield Test result"
      }],
      "text" : "Glaucoma Hemifield Test (GHT)"
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://dicom.nema.org/resources/ontology/DCM",
        "code" : "111848",
        "display" : "Borderline"
      }],
      "text" : "Borderline"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "fixation-losses",
        "display" : "Fixation losses"
      }],
      "text" : "Fixation losses"
    },
    "valueRatio" : {
      "numerator" : {
        "value" : 1,
        "system" : "http://unitsofmeasure.org",
        "code" : "1"
      },
      "denominator" : {
        "value" : 15,
        "system" : "http://unitsofmeasure.org",
        "code" : "1"
      }
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "false-positive-errors",
        "display" : "False positive errors"
      }],
      "text" : "False positive errors"
    },
    "valueQuantity" : {
      "value" : 3,
      "system" : "http://unitsofmeasure.org",
      "code" : "%"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "false-negative-errors",
        "display" : "False negative errors"
      }],
      "text" : "False negative errors"
    },
    "valueQuantity" : {
      "value" : 4,
      "system" : "http://unitsofmeasure.org",
      "code" : "%"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "visual-field-fixation-strategy",
        "display" : "Visual field fixation strategy"
      }],
      "text" : "Fixation strategy"
    },
    "valueCodeableConcept" : {
      "text" : "Gaze tracking"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "perimetry-stimulus-size",
        "display" : "Perimetry stimulus size"
      }],
      "text" : "Stimulus size"
    },
    "valueCodeableConcept" : {
      "text" : "Goldmann III"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "perimetry-stimulus-color",
        "display" : "Perimetry stimulus color"
      }],
      "text" : "Stimulus color"
    },
    "valueCodeableConcept" : {
      "text" : "White"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "perimetry-background-luminance",
        "display" : "Perimetry background luminance"
      }],
      "text" : "Background luminance (31.5 asb)"
    },
    "valueQuantity" : {
      "value" : 10,
      "unit" : "cd/m2",
      "system" : "http://unitsofmeasure.org",
      "code" : "cd/m2"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "perimetry-stimulus-duration",
        "display" : "Perimetry stimulus presentation time"
      }],
      "text" : "Stimulus duration"
    },
    "valueQuantity" : {
      "value" : 200,
      "system" : "http://unitsofmeasure.org",
      "code" : "ms"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "foveal-sensitivity",
        "display" : "Foveal threshold sensitivity"
      }],
      "text" : "Foveal sensitivity"
    },
    "valueQuantity" : {
      "value" : 34,
      "system" : "http://unitsofmeasure.org",
      "code" : "dB"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "visual-field-test-duration",
        "display" : "Visual field test duration"
      }],
      "text" : "Test duration"
    },
    "valueQuantity" : {
      "value" : 6,
      "system" : "http://unitsofmeasure.org",
      "code" : "min"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "visual-field-test-point-count",
        "display" : "Number of visual field test points"
      }],
      "text" : "Number of test points"
    },
    "valueQuantity" : {
      "value" : 54,
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "correction-status",
        "display" : "Refractive correction status during test"
      }],
      "text" : "Correction lens used"
    },
    "valueCodeableConcept" : {
      "text" : "Yes, near correction trial lens"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "correction-lens-power",
        "display" : "Correction lens power"
      }],
      "text" : "Correction lens power"
    },
    "valueQuantity" : {
      "value" : 2.5,
      "system" : "http://unitsofmeasure.org",
      "code" : "[diop]"
    }
  }]
}

```
