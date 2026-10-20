# CT anterior surface: right eye - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CT anterior surface: right eye**

## Example Observation: CT anterior surface: right eye

Profile: [Corneal Tomography - Anterior Surface](StructureDefinition-ct-anterior-surface.md)

**status**: Final

**category**: Exam

**code**: Corneal tomography, anterior surface analysis

**subject**: [Patient Example Female, DoB: 1990-01-01 ( Passport number: PA1234567)](Patient-PatientExample.md)

**effective**: 2026-08-18 09:00:00+0000

**performer**: [Practitioner Ophthalmologist Example ](Practitioner-OphthalmologistExample.md)

**note**: 

> 

Example based on typical Pentacam-style anterior surface report


**bodySite**: 

**device**: Pentacam AXL

> **component****code**: K1 (flat axis)**value**: 43.2 [diop] (Details: UCUM code[diop] = '[diop]')

> **component****code**: K1 axis**value**: 12 deg (Details: UCUM codedeg = 'deg')

> **component****code**: K1 radius**value**: 7.81 mm (Details: UCUM codemm = 'mm')

> **component****code**: K2 (steep axis)**value**: 44.6 [diop] (Details: UCUM code[diop] = '[diop]')

> **component****code**: K2 axis**value**: 102 deg (Details: UCUM codedeg = 'deg')

> **component****code**: K2 radius**value**: 7.56 mm (Details: UCUM codemm = 'mm')

> **component****code**: Km (average)**value**: 43.9 [diop] (Details: UCUM code[diop] = '[diop]')

> **component****code**: Corneal astigmatism**value**: 1.4 [diop] (Details: UCUM code[diop] = '[diop]')

> **component****code**: K Max (front)**value**: 45.8 [diop] (Details: UCUM code[diop] = '[diop]')

> **component****code**: SimK steep/flat**value**: 44.1 [diop] (Details: UCUM code[diop] = '[diop]')

> **component****code**: Rh (horizontal radius)**value**: 7.8 mm (Details: UCUM codemm = 'mm')

> **component****code**: Rv (vertical radius)**value**: 7.58 mm (Details: UCUM codemm = 'mm')

> **component****code**: Rmin (minimum radius)**value**: 7.4 mm (Details: UCUM codemm = 'mm')

> **component****code**: Q-value front**value**: -0.24 1 (Details: UCUM code1 = '1')

> **component****code**: Elevation front BFS**value**: 4 um (Details: UCUM codeum = 'um')

> **component****code**: BFS radius front**value**: 7.78 mm (Details: UCUM codemm = 'mm')

> **component****code**: Surface Regularity Index (SRI)**value**: 0.42 1 (Details: UCUM code1 = '1')

> **component****code**: Surface Asymmetry Index (SAI)**value**: 0.38 1 (Details: UCUM code1 = '1')

> **component****code**: I-S value**value**: 0.6 [diop] (Details: UCUM code[diop] = '[diop]')

> **component****code**: KISA% index**value**: 12.4 % (Details: UCUM code% = '%')

> **component****code**: Keratometric index**value**: 1.3375 1 (Details: UCUM code1 = '1')

> **component****code**: Topographic pattern**value**: Regular

> **component****code**: Total Corneal Refractive Power (TCRP)**value**: 43.5 [diop] (Details: UCUM code[diop] = '[diop]')

> **component****code**: True Net Power (TNP)**value**: 43.3 [diop] (Details: UCUM code[diop] = '[diop]')

> **component****code**: EKR 1.0mm zone**value**: 43.7 [diop] (Details: UCUM code[diop] = '[diop]')

> **component****code**: EKR 3.0mm zone**value**: 43.4 [diop] (Details: UCUM code[diop] = '[diop]')

> **component****code**: EKR 4.5mm zone**value**: 43.1 [diop] (Details: UCUM code[diop] = '[diop]')

> **component****code**: 3mm zone Mean Power**value**: 43.8 [diop] (Details: UCUM code[diop] = '[diop]')

> **component****code**: 3mm zone Astig Power**value**: 1.3 [diop] (Details: UCUM code[diop] = '[diop]')

> **component****code**: 3mm zone Steep Axis**value**: 100 deg (Details: UCUM codedeg = 'deg')

> **component****code**: 3mm zone Flat Axis**value**: 10 deg (Details: UCUM codedeg = 'deg')

> **component****code**: 5mm zone Mean Power**value**: 43.6 [diop] (Details: UCUM code[diop] = '[diop]')

> **component****code**: 5mm zone Astig Power**value**: 1.5 [diop] (Details: UCUM code[diop] = '[diop]')

> **component****code**: 5mm zone Steep Axis**value**: 103 deg (Details: UCUM codedeg = 'deg')

> **component****code**: 5mm zone Flat Axis**value**: 13 deg (Details: UCUM codedeg = 'deg')

> **component****code**: Total corneal astigmatism (tWFA)**value**: 1.3 [diop] (Details: UCUM code[diop] = '[diop]')

> **component****code**: Total corneal irregular astigmatism**value**: 0.2 [diop] (Details: UCUM code[diop] = '[diop]')

> **component****code**: Corneal HOA RMS**value**: 0.31 um (Details: UCUM codeum = 'um')

> **component****code**: Kappa angle**value**: 4.2 deg (Details: UCUM codedeg = 'deg')

> **component****code**: Kappa intercept**value**: x: 0.18mm, y: -0.06mm

> **component****code**: SIA (Surgically Induced Astigmatism)**value**: 0.3 [diop] (Details: UCUM code[diop] = '[diop]')

> **component****code**: Predicted post-op corneal astigmatism**value**: 0.4 [diop] (Details: UCUM code[diop] = '[diop]')

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
    "coding" : [{
      "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
      "code" : "corneal-tomography-anterior-surface",
      "display" : "Corneal tomography, anterior surface analysis"
    }],
    "text" : "Corneal tomography, anterior surface analysis"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "effectiveDateTime" : "2026-08-18T09:00:00Z",
  "performer" : [{
    "reference" : "Practitioner/OphthalmologistExample"
  }],
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
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "keratometry-k1",
        "display" : "Keratometry K1 (flat)"
      }],
      "text" : "K1 (flat axis)"
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
      "text" : "K2 (steep axis)"
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
      "text" : "Km (average)"
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
        "code" : "corneal-astigmatism",
        "display" : "Corneal astigmatism (cylinder)"
      }],
      "text" : "Corneal astigmatism"
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
        "code" : "keratometry-kmax",
        "display" : "Maximum keratometry (Kmax)"
      }],
      "text" : "K Max (front)"
    },
    "valueQuantity" : {
      "value" : 45.8,
      "system" : "http://unitsofmeasure.org",
      "code" : "[diop]"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "simulated-keratometry",
        "display" : "Simulated keratometry (SimK)"
      }],
      "text" : "SimK steep/flat"
    },
    "valueQuantity" : {
      "value" : 44.1,
      "system" : "http://unitsofmeasure.org",
      "code" : "[diop]"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "corneal-radius-horizontal",
        "display" : "Horizontal corneal radius of curvature (Rh)"
      }],
      "text" : "Rh (horizontal radius)"
    },
    "valueQuantity" : {
      "value" : 7.8,
      "system" : "http://unitsofmeasure.org",
      "code" : "mm"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "corneal-radius-vertical",
        "display" : "Vertical corneal radius of curvature (Rv)"
      }],
      "text" : "Rv (vertical radius)"
    },
    "valueQuantity" : {
      "value" : 7.58,
      "system" : "http://unitsofmeasure.org",
      "code" : "mm"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "radius-minimum-curvature",
        "display" : "Minimum radius of curvature (Rmin)"
      }],
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
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "corneal-asphericity-q-anterior",
        "display" : "Corneal asphericity (Q-value), anterior surface"
      }],
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
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "elevation-anterior",
        "display" : "Corneal elevation relative to best fit sphere, anterior surface"
      }],
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
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "best-fit-sphere-radius-anterior",
        "display" : "Best fit sphere radius, anterior surface"
      }],
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
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "surface-regularity-index",
        "display" : "Surface Regularity Index (SRI)"
      }],
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
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "surface-asymmetry-index",
        "display" : "Surface Asymmetry Index (SAI)"
      }],
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
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "inferior-superior-asymmetry",
        "display" : "Inferior-superior asymmetry value (I-S)"
      }],
      "text" : "I-S value"
    },
    "valueQuantity" : {
      "value" : 0.6,
      "system" : "http://unitsofmeasure.org",
      "code" : "[diop]"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "kisa-index",
        "display" : "KISA% index"
      }],
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
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "keratometric-index",
        "display" : "Keratometric index"
      }],
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
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "topographic-pattern",
        "display" : "Topographic pattern"
      }],
      "text" : "Topographic pattern"
    },
    "valueCodeableConcept" : {
      "text" : "Regular"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "total-corneal-refractive-power",
        "display" : "Total corneal refractive power (TCRP)"
      }],
      "text" : "Total Corneal Refractive Power (TCRP)"
    },
    "valueQuantity" : {
      "value" : 43.5,
      "system" : "http://unitsofmeasure.org",
      "code" : "[diop]"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "true-net-power",
        "display" : "True net corneal power (TNP)"
      }],
      "text" : "True Net Power (TNP)"
    },
    "valueQuantity" : {
      "value" : 43.3,
      "system" : "http://unitsofmeasure.org",
      "code" : "[diop]"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "equivalent-keratometry-1mm",
        "display" : "Equivalent K reading (EKR), 1.0 mm zone"
      }],
      "text" : "EKR 1.0mm zone"
    },
    "valueQuantity" : {
      "value" : 43.7,
      "system" : "http://unitsofmeasure.org",
      "code" : "[diop]"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "equivalent-keratometry-3mm",
        "display" : "Equivalent K reading (EKR), 3.0 mm zone"
      }],
      "text" : "EKR 3.0mm zone"
    },
    "valueQuantity" : {
      "value" : 43.4,
      "system" : "http://unitsofmeasure.org",
      "code" : "[diop]"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "equivalent-keratometry-4-5mm",
        "display" : "Equivalent K reading (EKR), 4.5 mm zone"
      }],
      "text" : "EKR 4.5mm zone"
    },
    "valueQuantity" : {
      "value" : 43.1,
      "system" : "http://unitsofmeasure.org",
      "code" : "[diop]"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "corneal-mean-power-3mm-zone",
        "display" : "Mean corneal power, 3 mm zone"
      }],
      "text" : "3mm zone Mean Power"
    },
    "valueQuantity" : {
      "value" : 43.8,
      "system" : "http://unitsofmeasure.org",
      "code" : "[diop]"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "corneal-astigmatism-power-3mm-zone",
        "display" : "Corneal astigmatism power, 3 mm zone"
      }],
      "text" : "3mm zone Astig Power"
    },
    "valueQuantity" : {
      "value" : 1.3,
      "system" : "http://unitsofmeasure.org",
      "code" : "[diop]"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "corneal-steep-axis-3mm-zone",
        "display" : "Corneal steep axis, 3 mm zone"
      }],
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
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "corneal-flat-axis-3mm-zone",
        "display" : "Corneal flat axis, 3 mm zone"
      }],
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
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "corneal-mean-power-5mm-zone",
        "display" : "Mean corneal power, 5 mm zone"
      }],
      "text" : "5mm zone Mean Power"
    },
    "valueQuantity" : {
      "value" : 43.6,
      "system" : "http://unitsofmeasure.org",
      "code" : "[diop]"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "corneal-astigmatism-power-5mm-zone",
        "display" : "Corneal astigmatism power, 5 mm zone"
      }],
      "text" : "5mm zone Astig Power"
    },
    "valueQuantity" : {
      "value" : 1.5,
      "system" : "http://unitsofmeasure.org",
      "code" : "[diop]"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "corneal-steep-axis-5mm-zone",
        "display" : "Corneal steep axis, 5 mm zone"
      }],
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
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "corneal-flat-axis-5mm-zone",
        "display" : "Corneal flat axis, 5 mm zone"
      }],
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
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "total-corneal-astigmatism",
        "display" : "Total corneal astigmatism (tWFA)"
      }],
      "text" : "Total corneal astigmatism (tWFA)"
    },
    "valueQuantity" : {
      "value" : 1.3,
      "system" : "http://unitsofmeasure.org",
      "code" : "[diop]"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "corneal-irregular-astigmatism",
        "display" : "Total corneal irregular astigmatism"
      }],
      "text" : "Total corneal irregular astigmatism"
    },
    "valueQuantity" : {
      "value" : 0.2,
      "system" : "http://unitsofmeasure.org",
      "code" : "[diop]"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "corneal-hoa-rms",
        "display" : "Corneal higher-order aberrations RMS"
      }],
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
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "angle-kappa",
        "display" : "Angle kappa"
      }],
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
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "angle-kappa-intercept",
        "display" : "Angle kappa intercept"
      }],
      "text" : "Kappa intercept"
    },
    "valueString" : "x: 0.18mm, y: -0.06mm"
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "surgically-induced-astigmatism",
        "display" : "Surgically induced astigmatism (SIA)"
      }],
      "text" : "SIA (Surgically Induced Astigmatism)"
    },
    "valueQuantity" : {
      "value" : 0.3,
      "system" : "http://unitsofmeasure.org",
      "code" : "[diop]"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "predicted-postoperative-corneal-astigmatism",
        "display" : "Predicted postoperative corneal astigmatism"
      }],
      "text" : "Predicted post-op corneal astigmatism"
    },
    "valueQuantity" : {
      "value" : 0.4,
      "system" : "http://unitsofmeasure.org",
      "code" : "[diop]"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "toric-iol-optimal-axis",
        "display" : "Optimal toric IOL axis"
      }],
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
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "signal-strength",
        "display" : "Scan signal strength / quality"
      }],
      "text" : "QS (quality score)"
    },
    "valueCodeableConcept" : {
      "text" : "OK"
    }
  }]
}

```
