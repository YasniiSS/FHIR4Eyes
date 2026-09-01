# CTKeratoconusIndicesRightEyeExample - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CTKeratoconusIndicesRightEyeExample**

## Example Observation: CTKeratoconusIndicesRightEyeExample

Profile: [Corneal Tomography - Keratoconus Indices](StructureDefinition-ct-keratoconus-indices.md)

**status**: Final

**category**: Exam

**code**: Corneal tomography, keratoconus indices

**subject**: [Patient Example Female, DoB: 1990-01-01 ( PA1234567)](Patient-PatientExample.md)

**bodySite**: 

**device**: Pentacam AXL

> **component****code**: BAD-D (final D)**value**: 1.2 1 (Details: UCUM code1 = '1')

> **component****code**: BAD Df (front deviation)**value**: 0.9 1 (Details: UCUM code1 = '1')

> **component****code**: BAD Db (back deviation)**value**: 1 1 (Details: UCUM code1 = '1')

> **component****code**: BAD Dp (pachymetric deviation)**value**: 0.8 1 (Details: UCUM code1 = '1')

> **component****code**: BAD Dt (thinnest deviation)**value**: 0.7 1 (Details: UCUM code1 = '1')

> **component****code**: BAD Dy (vertical asymmetry)**value**: 0.5 1 (Details: UCUM code1 = '1')

> **component****code**: BAD classification**value**: Normal

> **component****code**: Enhanced BFS radius front**value**: 7.8 mm (Details: UCUM codemm = 'mm')

> **component****code**: Enhanced BFS radius back**value**: 6.42 mm (Details: UCUM codemm = 'mm')

> **component****code**: Amsler-Krumeich stage**value**: None

> **component****code**: ABCD grading (Belin)**value**: A0/B0/C0/D0

> **component****code**: ISV (Index Surface Variance)**value**: 18 1 (Details: UCUM code1 = '1')

> **component****code**: IVA (Index Vertical Asymmetry)**value**: 0.15 1 (Details: UCUM code1 = '1')

> **component****code**: KI (Keratoconus Index)**value**: 1.02 1 (Details: UCUM code1 = '1')

> **component****code**: CKI (Center Keratoconus Index)**value**: 1.01 1 (Details: UCUM code1 = '1')

> **component****code**: IHA (Index Height Asymmetry)**value**: 8 um (Details: UCUM codeum = 'um')

> **component****code**: IHD (Index Height Decentration)**value**: 0.008 1 (Details: UCUM code1 = '1')

> **component****code**: Rmin (minimum sagittal curvature)**value**: 7.4 mm (Details: UCUM codemm = 'mm')

> **component****code**: TKC (topographic KC classification)**value**: Normal



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "CTKeratoconusIndicesRightEyeExample",
  "meta" : {
    "profile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ct-keratoconus-indices"]
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
    "text" : "Corneal tomography, keratoconus indices"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
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
      "text" : "BAD-D (final D)"
    },
    "valueQuantity" : {
      "value" : 1.2,
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  },
  {
    "code" : {
      "text" : "BAD Df (front deviation)"
    },
    "valueQuantity" : {
      "value" : 0.9,
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  },
  {
    "code" : {
      "text" : "BAD Db (back deviation)"
    },
    "valueQuantity" : {
      "value" : 1,
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  },
  {
    "code" : {
      "text" : "BAD Dp (pachymetric deviation)"
    },
    "valueQuantity" : {
      "value" : 0.8,
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  },
  {
    "code" : {
      "text" : "BAD Dt (thinnest deviation)"
    },
    "valueQuantity" : {
      "value" : 0.7,
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  },
  {
    "code" : {
      "text" : "BAD Dy (vertical asymmetry)"
    },
    "valueQuantity" : {
      "value" : 0.5,
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  },
  {
    "code" : {
      "text" : "BAD classification"
    },
    "valueCodeableConcept" : {
      "text" : "Normal"
    }
  },
  {
    "code" : {
      "text" : "Enhanced BFS radius front"
    },
    "valueQuantity" : {
      "value" : 7.8,
      "system" : "http://unitsofmeasure.org",
      "code" : "mm"
    }
  },
  {
    "code" : {
      "text" : "Enhanced BFS radius back"
    },
    "valueQuantity" : {
      "value" : 6.42,
      "system" : "http://unitsofmeasure.org",
      "code" : "mm"
    }
  },
  {
    "code" : {
      "text" : "Amsler-Krumeich stage"
    },
    "valueCodeableConcept" : {
      "text" : "None"
    }
  },
  {
    "code" : {
      "text" : "ABCD grading (Belin)"
    },
    "valueString" : "A0/B0/C0/D0"
  },
  {
    "code" : {
      "text" : "ISV (Index Surface Variance)"
    },
    "valueQuantity" : {
      "value" : 18,
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  },
  {
    "code" : {
      "text" : "IVA (Index Vertical Asymmetry)"
    },
    "valueQuantity" : {
      "value" : 0.15,
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  },
  {
    "code" : {
      "text" : "KI (Keratoconus Index)"
    },
    "valueQuantity" : {
      "value" : 1.02,
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  },
  {
    "code" : {
      "text" : "CKI (Center Keratoconus Index)"
    },
    "valueQuantity" : {
      "value" : 1.01,
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  },
  {
    "code" : {
      "text" : "IHA (Index Height Asymmetry)"
    },
    "valueQuantity" : {
      "value" : 8,
      "system" : "http://unitsofmeasure.org",
      "code" : "um"
    }
  },
  {
    "code" : {
      "text" : "IHD (Index Height Decentration)"
    },
    "valueQuantity" : {
      "value" : 0.008,
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  },
  {
    "code" : {
      "text" : "Rmin (minimum sagittal curvature)"
    },
    "valueQuantity" : {
      "value" : 7.4,
      "system" : "http://unitsofmeasure.org",
      "code" : "mm"
    }
  },
  {
    "code" : {
      "text" : "TKC (topographic KC classification)"
    },
    "valueCodeableConcept" : {
      "text" : "Normal"
    }
  }]
}

```
