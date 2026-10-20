# Specular microscopy: right eye - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Specular microscopy: right eye**

## Example Observation: Specular microscopy: right eye

Profile: [Ophthalmic Specular Microscopy](StructureDefinition-ophthalmic-specular-microscopy.md)

**status**: Final

**category**: Exam

**code**: Corneal endothelial specular microscopy

**subject**: [Patient Example Female, DoB: 1990-01-01 ( Passport number: PA1234567)](Patient-PatientExample.md)

**effective**: 2026-08-18 09:00:00+0000

**performer**: [Practitioner Ophthalmologist Example ](Practitioner-OphthalmologistExample.md)

**note**: 

> 

Example based on typical Topcon SP-1P specular microscopy report


**bodySite**: 

**method**: Automated

**device**: Topcon SP-1P

> **component****code**: Endothelial cell density (CD)**value**: 2456 /mm2 (Details: UCUM code/mm2 = '/mm2')

> **component****code**: Capture position**value**: Central

> **component****code**: Number of cells analyzed (N)**value**: 98 1 (Details: UCUM code1 = '1')

> **component****code**: Coefficient of variation (CV)**value**: 32 % (Details: UCUM code% = '%')

> **component****code**: Hexagonality (HEX)**value**: 58 % (Details: UCUM code% = '%')

> **component****code**: Central corneal thickness (CCT)**value**: 542 um (Details: UCUM codeum = 'um')

> **component****code**: Minimum cell area (MIN)**value**: 218 um2 (Details: UCUM codeum2 = 'um2')

> **component****code**: Maximum cell area (MAX)**value**: 645 um2 (Details: UCUM codeum2 = 'um2')

> **component****code**: Average cell area (AVG)**value**: 407 um2 (Details: UCUM codeum2 = 'um2')

> **component****code**: Cell area SD**value**: 89 um2 (Details: UCUM codeum2 = 'um2')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "SpecularMicroscopyRightEyeExample",
  "meta" : {
    "profile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-specular-microscopy"]
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
      "code" : "specular-microscopy-panel",
      "display" : "Corneal endothelial specular microscopy"
    }],
    "text" : "Corneal endothelial specular microscopy"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "effectiveDateTime" : "2026-08-18T09:00:00Z",
  "performer" : [{
    "reference" : "Practitioner/OphthalmologistExample"
  }],
  "note" : [{
    "text" : "Example based on typical Topcon SP-1P specular microscopy report"
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
    "text" : "Automated"
  },
  "device" : {
    "display" : "Topcon SP-1P"
  },
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "endothelial-cell-density",
        "display" : "Corneal endothelial cell density"
      },
      {
        "system" : "http://loinc.org",
        "code" : "100070-2",
        "display" : "Right cornea Cell density"
      }],
      "text" : "Endothelial cell density (CD)"
    },
    "valueQuantity" : {
      "value" : 2456,
      "system" : "http://unitsofmeasure.org",
      "code" : "/mm2"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "specular-capture-position",
        "display" : "Specular microscopy capture position"
      }],
      "text" : "Capture position"
    },
    "valueCodeableConcept" : {
      "text" : "Central"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "endothelial-cells-counted",
        "display" : "Corneal endothelial cells counted"
      },
      {
        "system" : "http://loinc.org",
        "code" : "100076-9",
        "display" : "Right cornea Endothelial cells counted"
      }],
      "text" : "Number of cells analyzed (N)"
    },
    "valueQuantity" : {
      "value" : 98,
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "endothelial-cell-area-cv",
        "display" : "Corneal endothelial cell area coefficient of variation"
      },
      {
        "system" : "http://loinc.org",
        "code" : "100072-8",
        "display" : "Right cornea Coefficient of variation"
      }],
      "text" : "Coefficient of variation (CV)"
    },
    "valueQuantity" : {
      "value" : 32,
      "system" : "http://unitsofmeasure.org",
      "code" : "%"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "endothelial-hexagonality",
        "display" : "Corneal endothelial hexagonality"
      },
      {
        "system" : "http://loinc.org",
        "code" : "100074-4",
        "display" : "Right cornea Hexagonality"
      }],
      "text" : "Hexagonality (HEX)"
    },
    "valueQuantity" : {
      "value" : 58,
      "system" : "http://unitsofmeasure.org",
      "code" : "%"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "central-corneal-thickness",
        "display" : "Central corneal thickness"
      },
      {
        "system" : "http://loinc.org",
        "code" : "79825-6",
        "display" : "Right cornea Central corneal thickness Pachymetry"
      }],
      "text" : "Central corneal thickness (CCT)"
    },
    "valueQuantity" : {
      "value" : 542,
      "system" : "http://unitsofmeasure.org",
      "code" : "um"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "endothelial-cell-area-min",
        "display" : "Corneal endothelial cell area, minimum"
      },
      {
        "system" : "http://loinc.org",
        "code" : "100078-5",
        "display" : "Right cornea Endothelial cell area.min"
      }],
      "text" : "Minimum cell area (MIN)"
    },
    "valueQuantity" : {
      "value" : 218,
      "system" : "http://unitsofmeasure.org",
      "code" : "um2"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "endothelial-cell-area-max",
        "display" : "Corneal endothelial cell area, maximum"
      },
      {
        "system" : "http://loinc.org",
        "code" : "100080-1",
        "display" : "Right cornea Endothelial cell area.max"
      }],
      "text" : "Maximum cell area (MAX)"
    },
    "valueQuantity" : {
      "value" : 645,
      "system" : "http://unitsofmeasure.org",
      "code" : "um2"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "endothelial-cell-area-mean",
        "display" : "Corneal endothelial cell area, mean"
      },
      {
        "system" : "http://loinc.org",
        "code" : "100082-7",
        "display" : "Right cornea Endothelial cell area.mean"
      }],
      "text" : "Average cell area (AVG)"
    },
    "valueQuantity" : {
      "value" : 407,
      "system" : "http://unitsofmeasure.org",
      "code" : "um2"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "endothelial-cell-area-sd",
        "display" : "Corneal endothelial cell area, standard deviation"
      },
      {
        "system" : "http://loinc.org",
        "code" : "100084-3",
        "display" : "Right cornea Cell area.standard deviation"
      }],
      "text" : "Cell area SD"
    },
    "valueQuantity" : {
      "value" : 89,
      "system" : "http://unitsofmeasure.org",
      "code" : "um2"
    }
  }]
}

```
