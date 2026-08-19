# OCTMaculaRightEyeExample - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OCTMaculaRightEyeExample**

## Example Observation: OCTMaculaRightEyeExample

Profile: [Ophthalmic OCT Macula](StructureDefinition-ophthalmic-oct-macula.md)

**status**: Final

**category**: Exam

**code**: OCT macula analysis

**subject**: [Patient Example Female, DoB: 1990-01-01](Patient-PatientExample.md)

**note**: 

> 

Central minimum 179 um, central maximum 253 um. Circle diameters 1, 3, 6 mm ETDRS. Device: Heidelberg Spectralis SPIRIT tracking laser tomography.


**bodySite**: 

> **component****code**: Macular grid.center point thickness by OCT**value**: 179 um (Details: UCUM codeum = 'um')

> **component****code**: Macular grid.center subfield thickness by OCT**value**: 285 um (Details: UCUM codeum = 'um')

> **component****code**: Macular grid.inner superior subfield thickness by OCT**value**: 328 um (Details: UCUM codeum = 'um')

> **component****code**: Macular grid.inner nasal subfield thickness by OCT**value**: 339 um (Details: UCUM codeum = 'um')

> **component****code**: Macular grid.inner inferior subfield thickness by OCT**value**: 327 um (Details: UCUM codeum = 'um')

> **component****code**: Macular grid, inner temporal subfield thickness**value**: 299 um (Details: UCUM codeum = 'um')

> **component****code**: Macular grid, outer superior subfield thickness**value**: 276 um (Details: UCUM codeum = 'um')

> **component****code**: Macular grid, outer nasal subfield thickness**value**: 299 um (Details: UCUM codeum = 'um')

> **component****code**: Macular grid, outer inferior subfield thickness**value**: 264 um (Details: UCUM codeum = 'um')

> **component****code**: Macular grid, outer temporal subfield thickness**value**: 249 um (Details: UCUM codeum = 'um')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "OCTMaculaRightEyeExample",
  "meta" : {
    "profile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-oct-macula"]
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
    "text" : "OCT macula analysis"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "note" : [{
    "text" : "Central minimum 179 um, central maximum 253 um. Circle diameters 1, 3, 6 mm ETDRS. Device: Heidelberg Spectralis SPIRIT tracking laser tomography."
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
        "system" : "http://loinc.org",
        "code" : "57108-3",
        "display" : "Macular grid.center point thickness by OCT"
      }]
    },
    "valueQuantity" : {
      "value" : 179,
      "system" : "http://unitsofmeasure.org",
      "code" : "um"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "57109-1",
        "display" : "Macular grid.center subfield thickness by OCT"
      }]
    },
    "valueQuantity" : {
      "value" : 285,
      "system" : "http://unitsofmeasure.org",
      "code" : "um"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "57110-9",
        "display" : "Macular grid.inner superior subfield thickness by OCT"
      }]
    },
    "valueQuantity" : {
      "value" : 328,
      "system" : "http://unitsofmeasure.org",
      "code" : "um"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "57111-7",
        "display" : "Macular grid.inner nasal subfield thickness by OCT"
      }]
    },
    "valueQuantity" : {
      "value" : 339,
      "system" : "http://unitsofmeasure.org",
      "code" : "um"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "57112-5",
        "display" : "Macular grid.inner inferior subfield thickness by OCT"
      }]
    },
    "valueQuantity" : {
      "value" : 327,
      "system" : "http://unitsofmeasure.org",
      "code" : "um"
    }
  },
  {
    "code" : {
      "text" : "Macular grid, inner temporal subfield thickness"
    },
    "valueQuantity" : {
      "value" : 299,
      "system" : "http://unitsofmeasure.org",
      "code" : "um"
    }
  },
  {
    "code" : {
      "text" : "Macular grid, outer superior subfield thickness"
    },
    "valueQuantity" : {
      "value" : 276,
      "system" : "http://unitsofmeasure.org",
      "code" : "um"
    }
  },
  {
    "code" : {
      "text" : "Macular grid, outer nasal subfield thickness"
    },
    "valueQuantity" : {
      "value" : 299,
      "system" : "http://unitsofmeasure.org",
      "code" : "um"
    }
  },
  {
    "code" : {
      "text" : "Macular grid, outer inferior subfield thickness"
    },
    "valueQuantity" : {
      "value" : 264,
      "system" : "http://unitsofmeasure.org",
      "code" : "um"
    }
  },
  {
    "code" : {
      "text" : "Macular grid, outer temporal subfield thickness"
    },
    "valueQuantity" : {
      "value" : 249,
      "system" : "http://unitsofmeasure.org",
      "code" : "um"
    }
  }]
}

```
