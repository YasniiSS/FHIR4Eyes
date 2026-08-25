# HumphreyVFRightEyeExample - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HumphreyVFRightEyeExample**

## Example Observation: HumphreyVFRightEyeExample

Profile: [Ophthalmic Humphrey Visual Field](StructureDefinition-ophthalmic-humphrey-visual-field.md)

**status**: Final

**category**: Exam

**code**: Automated static perimetry, right eye

**subject**: [Patient Example Female, DoB: 1990-01-01](Patient-PatientExample.md)

**note**: 

> 

Example based on typical Humphrey Field Analyzer 24-2 SITA Standard report. Right eye borderline unreliable fixation losses within normal limits.


**bodySite**: 

**method**: SITA Standard

> **component****code**: Test pattern**value**: 24-2

> **component****code**: Mean Deviation (MD)**value**: -3.42 dB (Details: UCUM codedB = 'dB')

> **component****code**: Pattern Standard Deviation (PSD)**value**: 4.15 dB (Details: UCUM codedB = 'dB')

> **component****code**: Visual Field Index (VFI)**value**: 91 % (Details: UCUM code% = '%')

> **component****code**: Fixation strategy**value**: Gaze tracking

> **component****code**: Stimulus size**value**: Goldmann III

> **component****code**: Stimulus color**value**: White

> **component****code**: Background luminance**value**: 31.5 asb (Details: UCUM codeasb = 'asb')

> **component****code**: Stimulus duration**value**: 200 ms (Details: UCUM codems = 'ms')

> **component****code**: Foveal sensitivity**value**: 34 dB (Details: UCUM codedB = 'dB')

> **component****code**: Test duration**value**: 6 min (Details: UCUM codemin = 'min')

> **component****code**: Number of test points**value**: 54 1 (Details: UCUM code1 = '1')

> **component****code**: Correction lens used**value**: Yes, near correction trial lens

> **component****code**: Correction lens power**value**: 2.5 D (Details: UCUM codeD = 'D')



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
    "text" : "Automated static perimetry, right eye"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
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
      "text" : "Test pattern"
    },
    "valueString" : "24-2"
  },
  {
    "code" : {
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
      "text" : "Fixation strategy"
    },
    "valueCodeableConcept" : {
      "text" : "Gaze tracking"
    }
  },
  {
    "code" : {
      "text" : "Stimulus size"
    },
    "valueCodeableConcept" : {
      "text" : "Goldmann III"
    }
  },
  {
    "code" : {
      "text" : "Stimulus color"
    },
    "valueCodeableConcept" : {
      "text" : "White"
    }
  },
  {
    "code" : {
      "text" : "Background luminance"
    },
    "valueQuantity" : {
      "value" : 31.5,
      "system" : "http://unitsofmeasure.org",
      "code" : "asb"
    }
  },
  {
    "code" : {
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
      "text" : "Correction lens used"
    },
    "valueCodeableConcept" : {
      "text" : "Yes, near correction trial lens"
    }
  },
  {
    "code" : {
      "text" : "Correction lens power"
    },
    "valueQuantity" : {
      "value" : 2.5,
      "system" : "http://unitsofmeasure.org",
      "code" : "D"
    }
  }]
}

```
