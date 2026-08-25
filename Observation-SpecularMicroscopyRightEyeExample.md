# SpecularMicroscopyRightEyeExample - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SpecularMicroscopyRightEyeExample**

## Example Observation: SpecularMicroscopyRightEyeExample

Profile: [Ophthalmic Specular Microscopy](StructureDefinition-ophthalmic-specular-microscopy.md)

**status**: Final

**category**: Exam

**code**: Corneal endothelial specular microscopy

**subject**: [Patient Example Female, DoB: 1990-01-01](Patient-PatientExample.md)

**note**: 

> 

Example based on typical Topcon SP-1P specular microscopy report


**bodySite**: 

**method**: Automated

**device**: Topcon SP-1P

> **component****code**: Capture position**value**: Central

> **component****code**: Endothelial cell density (CD)**value**: 2456 /mm2 (Details: UCUM code/mm2 = '/mm2')

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
    "text" : "Corneal endothelial specular microscopy"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
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
      "text" : "Capture position"
    },
    "valueCodeableConcept" : {
      "text" : "Central"
    }
  },
  {
    "code" : {
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
