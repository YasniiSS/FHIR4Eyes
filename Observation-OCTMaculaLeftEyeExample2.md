# OCTMaculaLeftEyeExample2 - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OCTMaculaLeftEyeExample2**

## Example Observation: OCTMaculaLeftEyeExample2

Profile: [Ophthalmic OCT Macula](StructureDefinition-ophthalmic-oct-macula.md)

**status**: Final

**category**: Exam

**code**: OCT macula analysis

**subject**: [Patient Example Female, DoB: 1990-01-01](Patient-PatientExample.md)

**note**: 

> 

Central minimum 189 um, central maximum 244 um. Circle diameters 1, 3, 6 mm ETDRS. Device: Heidelberg Spectralis SPIRIT tracking laser tomography.


**bodySite**: 

> **component****code**: Macular grid.center point thickness by OCT**value**: 191 um (Details: UCUM codeum = 'um')

> **component****code**: Macular grid.center subfield thickness by OCT**value**: 271 um (Details: UCUM codeum = 'um')

> **component****code**: Macular grid.inner superior subfield thickness by OCT**value**: 315 um (Details: UCUM codeum = 'um')

> **component****code**: Macular grid.inner nasal subfield thickness by OCT**value**: 317 um (Details: UCUM codeum = 'um')

> **component****code**: Macular grid.inner inferior subfield thickness by OCT**value**: 315 um (Details: UCUM codeum = 'um')

> **component****code**: Macular grid, inner temporal subfield thickness**value**: 284 um (Details: UCUM codeum = 'um')

> **component****code**: Macular grid, outer superior subfield thickness**value**: 269 um (Details: UCUM codeum = 'um')

> **component****code**: Macular grid, outer nasal subfield thickness**value**: 284 um (Details: UCUM codeum = 'um')

> **component****code**: Macular grid, outer inferior subfield thickness**value**: 268 um (Details: UCUM codeum = 'um')

> **component****code**: Macular grid, outer temporal subfield thickness**value**: 242 um (Details: UCUM codeum = 'um')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "OCTMaculaLeftEyeExample2",
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
    "text" : "Central minimum 189 um, central maximum 244 um. Circle diameters 1, 3, 6 mm ETDRS. Device: Heidelberg Spectralis SPIRIT tracking laser tomography."
  }],
  "bodySite" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/bodySite",
      "valueReference" : {
        "reference" : "BodyStructure/LeftEyeStructureExample"
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
      "value" : 191,
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
      "value" : 271,
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
      "value" : 315,
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
      "value" : 317,
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
      "value" : 315,
      "system" : "http://unitsofmeasure.org",
      "code" : "um"
    }
  },
  {
    "code" : {
      "text" : "Macular grid, inner temporal subfield thickness"
    },
    "valueQuantity" : {
      "value" : 284,
      "system" : "http://unitsofmeasure.org",
      "code" : "um"
    }
  },
  {
    "code" : {
      "text" : "Macular grid, outer superior subfield thickness"
    },
    "valueQuantity" : {
      "value" : 269,
      "system" : "http://unitsofmeasure.org",
      "code" : "um"
    }
  },
  {
    "code" : {
      "text" : "Macular grid, outer nasal subfield thickness"
    },
    "valueQuantity" : {
      "value" : 284,
      "system" : "http://unitsofmeasure.org",
      "code" : "um"
    }
  },
  {
    "code" : {
      "text" : "Macular grid, outer inferior subfield thickness"
    },
    "valueQuantity" : {
      "value" : 268,
      "system" : "http://unitsofmeasure.org",
      "code" : "um"
    }
  },
  {
    "code" : {
      "text" : "Macular grid, outer temporal subfield thickness"
    },
    "valueQuantity" : {
      "value" : 242,
      "system" : "http://unitsofmeasure.org",
      "code" : "um"
    }
  }]
}

```
