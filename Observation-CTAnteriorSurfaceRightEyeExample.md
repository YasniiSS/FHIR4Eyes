# CTAnteriorSurfaceRightEyeExample - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CTAnteriorSurfaceRightEyeExample**

## Example Observation: CTAnteriorSurfaceRightEyeExample

Profile: [Corneal Tomography - Anterior Surface](StructureDefinition-ct-anterior-surface.md)

**status**: Final

**category**: Exam

**code**: Corneal tomography, anterior surface analysis

**subject**: [Patient Example Female, DoB: 1990-01-01](Patient-PatientExample.md)

**note**: 

> 

Example based on typical Pentacam-style anterior surface report


**bodySite**: 

**device**: Pentacam AXL

> **component****code**: K1 (flat axis)**value**: 43.2 D (Details: UCUM codeD = 'D')

> **component****code**: K1 axis**value**: 12 deg (Details: UCUM codedeg = 'deg')

> **component****code**: K1 radius**value**: 7.81 mm (Details: UCUM codemm = 'mm')

> **component****code**: K2 (steep axis)**value**: 44.6 D (Details: UCUM codeD = 'D')

> **component****code**: K2 axis**value**: 102 deg (Details: UCUM codedeg = 'deg')

> **component****code**: K2 radius**value**: 7.56 mm (Details: UCUM codemm = 'mm')

> **component****code**: Km (average)**value**: 43.9 D (Details: UCUM codeD = 'D')

> **component****code**: Corneal astigmatism**value**: 1.4 D (Details: UCUM codeD = 'D')

> **component****code**: Corneal cylinder**value**: -1.4 D (Details: UCUM codeD = 'D')

> **component****code**: K Max (front)**value**: 45.8 D (Details: UCUM codeD = 'D')

> **component****code**: SimK steep/flat**value**: 44.1 D (Details: UCUM codeD = 'D')

> **component****code**: Rh (horizontal radius)**value**: 7.81 mm (Details: UCUM codemm = 'mm')

> **component****code**: Rv (vertical radius)**value**: 7.56 mm (Details: UCUM codemm = 'mm')

> **component****code**: Rmin (minimum radius)**value**: 7.4 mm (Details: UCUM codemm = 'mm')

> **component****code**: Q-value front**value**: -0.24 1 (Details: UCUM code1 = '1')

> **component****code**: Elevation front BFS**value**: 4 um (Details: UCUM codeum = 'um')

> **component****code**: BFS radius front**value**: 7.78 mm (Details: UCUM codemm = 'mm')

> **component****code**: Surface Regularity Index (SRI)**value**: 0.42 1 (Details: UCUM code1 = '1')

> **component****code**: Surface Asymmetry Index (SAI)**value**: 0.38 1 (Details: UCUM code1 = '1')

> **component****code**: I-S value**value**: 0.6 D (Details: UCUM codeD = 'D')

> **component****code**: KISA% index**value**: 12.4 % (Details: UCUM code% = '%')

> **component****code**: Keratometric index**value**: 1.3375 1 (Details: UCUM code1 = '1')

> **component****code**: Topographic pattern**value**: Regular

> **component****code**: Total Corneal Refractive Power (TCRP)**value**: 43.5 D (Details: UCUM codeD = 'D')

> **component****code**: True Net Power (TNP)**value**: 43.3 D (Details: UCUM codeD = 'D')

> **component****code**: EKR 1.0mm zone**value**: 43.7 D (Details: UCUM codeD = 'D')

> **component****code**: EKR 3.0mm zone**value**: 43.4 D (Details: UCUM codeD = 'D')

> **component****code**: EKR 4.5mm zone**value**: 43.1 D (Details: UCUM codeD = 'D')

> **component****code**: 3mm zone Mean Power**value**: 43.8 D (Details: UCUM codeD = 'D')

> **component****code**: 3mm zone Astig Power**value**: 1.3 D (Details: UCUM codeD = 'D')

> **component****code**: 3mm zone Steep Axis**value**: 100 deg (Details: UCUM codedeg = 'deg')

> **component****code**: 3mm zone Flat Axis**value**: 10 deg (Details: UCUM codedeg = 'deg')

> **component****code**: 5mm zone Mean Power**value**: 43.6 D (Details: UCUM codeD = 'D')

> **component****code**: 5mm zone Astig Power**value**: 1.5 D (Details: UCUM codeD = 'D')

> **component****code**: 5mm zone Steep Axis**value**: 103 deg (Details: UCUM codedeg = 'deg')

> **component****code**: 5mm zone Flat Axis**value**: 13 deg (Details: UCUM codedeg = 'deg')

> **component****code**: Total corneal astigmatism (tWFA)**value**: 1.3 D (Details: UCUM codeD = 'D')

> **component****code**: Total corneal irregular astigmatism**value**: 0.2 D (Details: UCUM codeD = 'D')

> **component****code**: Corneal HOA RMS**value**: 0.31 um (Details: UCUM codeum = 'um')

> **component****code**: Kappa angle**value**: 4.2 deg (Details: UCUM codedeg = 'deg')

> **component****code**: Kappa intercept**value**: x: 0.18mm, y: -0.06mm

> **component****code**: SIA (Surgically Induced Astigmatism)**value**: 0.3 D (Details: UCUM codeD = 'D')

> **component****code**: Predicted post-op corneal astigmatism**value**: 0.4 D (Details: UCUM codeD = 'D')

> **component****code**: Optimal toric IOL axis**value**: 102 deg (Details: UCUM codedeg = 'deg')

> **component****code**: QS (quality score)**value**: OK



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "CTAnteriorSurfaceRightEyeExample",
  "meta" : {
    "profile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ct-anterior-surface"]
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
    "text" : "Corneal tomography, anterior surface analysis"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "note" : [{
    "text" : "Example based on typical Pentacam-style anterior surface report"
  }],
  "bodySite" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/bodySite",
      "valueReference" : {
        "reference" : "BodyStructure/RightEyeStructureExample"
      }
    }]
  },
  "device" : {
    "display" : "Pentacam AXL"
  },
  "component" : [{
    "code" : {
      "text" : "K1 (flat axis)"
    },
    "valueQuantity" : {
      "value" : 43.2,
      "system" : "http://unitsofmeasure.org",
      "code" : "D"
    }
  },
  {
    "code" : {
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
      "text" : "K2 (steep axis)"
    },
    "valueQuantity" : {
      "value" : 44.6,
      "system" : "http://unitsofmeasure.org",
      "code" : "D"
    }
  },
  {
    "code" : {
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
      "text" : "Km (average)"
    },
    "valueQuantity" : {
      "value" : 43.9,
      "system" : "http://unitsofmeasure.org",
      "code" : "D"
    }
  },
  {
    "code" : {
      "text" : "Corneal astigmatism"
    },
    "valueQuantity" : {
      "value" : 1.4,
      "system" : "http://unitsofmeasure.org",
      "code" : "D"
    }
  },
  {
    "code" : {
      "text" : "Corneal cylinder"
    },
    "valueQuantity" : {
      "value" : -1.4,
      "system" : "http://unitsofmeasure.org",
      "code" : "D"
    }
  },
  {
    "code" : {
      "text" : "K Max (front)"
    },
    "valueQuantity" : {
      "value" : 45.8,
      "system" : "http://unitsofmeasure.org",
      "code" : "D"
    }
  },
  {
    "code" : {
      "text" : "SimK steep/flat"
    },
    "valueQuantity" : {
      "value" : 44.1,
      "system" : "http://unitsofmeasure.org",
      "code" : "D"
    }
  },
  {
    "code" : {
      "text" : "Rh (horizontal radius)"
    },
    "valueQuantity" : {
      "value" : 7.81,
      "system" : "http://unitsofmeasure.org",
      "code" : "mm"
    }
  },
  {
    "code" : {
      "text" : "Rv (vertical radius)"
    },
    "valueQuantity" : {
      "value" : 7.56,
      "system" : "http://unitsofmeasure.org",
      "code" : "mm"
    }
  },
  {
    "code" : {
      "text" : "Rmin (minimum radius)"
    },
    "valueQuantity" : {
      "value" : 7.4,
      "system" : "http://unitsofmeasure.org",
      "code" : "mm"
    }
  },
  {
    "code" : {
      "text" : "Q-value front"
    },
    "valueQuantity" : {
      "value" : -0.24,
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  },
  {
    "code" : {
      "text" : "Elevation front BFS"
    },
    "valueQuantity" : {
      "value" : 4,
      "system" : "http://unitsofmeasure.org",
      "code" : "um"
    }
  },
  {
    "code" : {
      "text" : "BFS radius front"
    },
    "valueQuantity" : {
      "value" : 7.78,
      "system" : "http://unitsofmeasure.org",
      "code" : "mm"
    }
  },
  {
    "code" : {
      "text" : "Surface Regularity Index (SRI)"
    },
    "valueQuantity" : {
      "value" : 0.42,
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  },
  {
    "code" : {
      "text" : "Surface Asymmetry Index (SAI)"
    },
    "valueQuantity" : {
      "value" : 0.38,
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  },
  {
    "code" : {
      "text" : "I-S value"
    },
    "valueQuantity" : {
      "value" : 0.6,
      "system" : "http://unitsofmeasure.org",
      "code" : "D"
    }
  },
  {
    "code" : {
      "text" : "KISA% index"
    },
    "valueQuantity" : {
      "value" : 12.4,
      "system" : "http://unitsofmeasure.org",
      "code" : "%"
    }
  },
  {
    "code" : {
      "text" : "Keratometric index"
    },
    "valueQuantity" : {
      "value" : 1.3375,
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  },
  {
    "code" : {
      "text" : "Topographic pattern"
    },
    "valueCodeableConcept" : {
      "text" : "Regular"
    }
  },
  {
    "code" : {
      "text" : "Total Corneal Refractive Power (TCRP)"
    },
    "valueQuantity" : {
      "value" : 43.5,
      "system" : "http://unitsofmeasure.org",
      "code" : "D"
    }
  },
  {
    "code" : {
      "text" : "True Net Power (TNP)"
    },
    "valueQuantity" : {
      "value" : 43.3,
      "system" : "http://unitsofmeasure.org",
      "code" : "D"
    }
  },
  {
    "code" : {
      "text" : "EKR 1.0mm zone"
    },
    "valueQuantity" : {
      "value" : 43.7,
      "system" : "http://unitsofmeasure.org",
      "code" : "D"
    }
  },
  {
    "code" : {
      "text" : "EKR 3.0mm zone"
    },
    "valueQuantity" : {
      "value" : 43.4,
      "system" : "http://unitsofmeasure.org",
      "code" : "D"
    }
  },
  {
    "code" : {
      "text" : "EKR 4.5mm zone"
    },
    "valueQuantity" : {
      "value" : 43.1,
      "system" : "http://unitsofmeasure.org",
      "code" : "D"
    }
  },
  {
    "code" : {
      "text" : "3mm zone Mean Power"
    },
    "valueQuantity" : {
      "value" : 43.8,
      "system" : "http://unitsofmeasure.org",
      "code" : "D"
    }
  },
  {
    "code" : {
      "text" : "3mm zone Astig Power"
    },
    "valueQuantity" : {
      "value" : 1.3,
      "system" : "http://unitsofmeasure.org",
      "code" : "D"
    }
  },
  {
    "code" : {
      "text" : "3mm zone Steep Axis"
    },
    "valueQuantity" : {
      "value" : 100,
      "system" : "http://unitsofmeasure.org",
      "code" : "deg"
    }
  },
  {
    "code" : {
      "text" : "3mm zone Flat Axis"
    },
    "valueQuantity" : {
      "value" : 10,
      "system" : "http://unitsofmeasure.org",
      "code" : "deg"
    }
  },
  {
    "code" : {
      "text" : "5mm zone Mean Power"
    },
    "valueQuantity" : {
      "value" : 43.6,
      "system" : "http://unitsofmeasure.org",
      "code" : "D"
    }
  },
  {
    "code" : {
      "text" : "5mm zone Astig Power"
    },
    "valueQuantity" : {
      "value" : 1.5,
      "system" : "http://unitsofmeasure.org",
      "code" : "D"
    }
  },
  {
    "code" : {
      "text" : "5mm zone Steep Axis"
    },
    "valueQuantity" : {
      "value" : 103,
      "system" : "http://unitsofmeasure.org",
      "code" : "deg"
    }
  },
  {
    "code" : {
      "text" : "5mm zone Flat Axis"
    },
    "valueQuantity" : {
      "value" : 13,
      "system" : "http://unitsofmeasure.org",
      "code" : "deg"
    }
  },
  {
    "code" : {
      "text" : "Total corneal astigmatism (tWFA)"
    },
    "valueQuantity" : {
      "value" : 1.3,
      "system" : "http://unitsofmeasure.org",
      "code" : "D"
    }
  },
  {
    "code" : {
      "text" : "Total corneal irregular astigmatism"
    },
    "valueQuantity" : {
      "value" : 0.2,
      "system" : "http://unitsofmeasure.org",
      "code" : "D"
    }
  },
  {
    "code" : {
      "text" : "Corneal HOA RMS"
    },
    "valueQuantity" : {
      "value" : 0.31,
      "system" : "http://unitsofmeasure.org",
      "code" : "um"
    }
  },
  {
    "code" : {
      "text" : "Kappa angle"
    },
    "valueQuantity" : {
      "value" : 4.2,
      "system" : "http://unitsofmeasure.org",
      "code" : "deg"
    }
  },
  {
    "code" : {
      "text" : "Kappa intercept"
    },
    "valueString" : "x: 0.18mm, y: -0.06mm"
  },
  {
    "code" : {
      "text" : "SIA (Surgically Induced Astigmatism)"
    },
    "valueQuantity" : {
      "value" : 0.3,
      "system" : "http://unitsofmeasure.org",
      "code" : "D"
    }
  },
  {
    "code" : {
      "text" : "Predicted post-op corneal astigmatism"
    },
    "valueQuantity" : {
      "value" : 0.4,
      "system" : "http://unitsofmeasure.org",
      "code" : "D"
    }
  },
  {
    "code" : {
      "text" : "Optimal toric IOL axis"
    },
    "valueQuantity" : {
      "value" : 102,
      "system" : "http://unitsofmeasure.org",
      "code" : "deg"
    }
  },
  {
    "code" : {
      "text" : "QS (quality score)"
    },
    "valueCodeableConcept" : {
      "text" : "OK"
    }
  }]
}

```
