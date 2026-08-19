# Ophthalmic OCT Macula - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ophthalmic OCT Macula**

## Resource Profile: Ophthalmic OCT Macula 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-oct-macula | *Version*:0.1.0 |
| Draft as of 2026-08-19 | *Computable Name*:OphthalmicOCTMacula |

 
Represents an OCT macular thickness analysis using the ETDRS 9-sector grid (center, 4 inner, 4 outer subfields), matching typical vendor reports. Real LOINC codes are confirmed for the center point, center subfield, and inner sectors; codes for the outer sectors were not found confirmed and are left open pending verification (see component notes below). 

**Usages:**

* Examples for this Profile: [Observation/OCTMaculaLeftEyeExample2](Observation-OCTMaculaLeftEyeExample2.md) and [Observation/OCTMaculaRightEyeExample](Observation-OCTMaculaRightEyeExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir4eyes.core|current/StructureDefinition/StructureDefinition-ophthalmic-oct-macula.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ophthalmic-oct-macula.csv), [Excel](StructureDefinition-ophthalmic-oct-macula.xlsx), [Schematron](StructureDefinition-ophthalmic-oct-macula.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ophthalmic-oct-macula",
  "url" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-oct-macula",
  "version" : "0.1.0",
  "name" : "OphthalmicOCTMacula",
  "title" : "Ophthalmic OCT Macula",
  "status" : "draft",
  "date" : "2026-08-19T17:13:42+00:00",
  "publisher" : "FHIR4Eyes Project",
  "contact" : [{
    "name" : "FHIR4Eyes Project",
    "telecom" : [{
      "system" : "url",
      "value" : "https://YasniiSS.github.io/fhir4eyes"
    }]
  },
  {
    "name" : "Yasna Soto",
    "telecom" : [{
      "system" : "url",
      "value" : "https://YasniiSS.github.io/fhir4eyes"
    }]
  }],
  "description" : "Represents an OCT macular thickness analysis using the ETDRS 9-sector grid\n(center, 4 inner, 4 outer subfields), matching typical vendor reports. Real LOINC codes are\nconfirmed for the center point, center subfield, and inner sectors; codes for the outer\nsectors were not found confirmed and are left open pending verification (see component\nnotes below).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001",
      "display" : "World"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.status",
      "path" : "Observation.status",
      "mustSupport" : true
    },
    {
      "id" : "Observation.category",
      "path" : "Observation.category",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "exam",
          "display" : "Exam"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "short" : "Identifies this as an OCT macula analysis",
      "mustSupport" : true
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.note",
      "path" : "Observation.note",
      "mustSupport" : true
    },
    {
      "id" : "Observation.bodySite",
      "path" : "Observation.bodySite",
      "mustSupport" : true
    },
    {
      "id" : "Observation.bodySite.extension:bodySiteEye",
      "path" : "Observation.bodySite.extension",
      "sliceName" : "bodySiteEye",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/bodySite"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.bodySite.extension:bodySiteEye.value[x]",
      "path" : "Observation.bodySite.extension.value[x]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ocular-body-structure"]
      }]
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "code"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.component:centerPoint",
      "path" : "Observation.component",
      "sliceName" : "centerPoint",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:centerPoint.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "57108-3",
          "display" : "Macular grid.center point thickness by OCT"
        }]
      }
    },
    {
      "id" : "Observation.component:centerPoint.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:centerSubfield",
      "path" : "Observation.component",
      "sliceName" : "centerSubfield",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:centerSubfield.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "57109-1",
          "display" : "Macular grid.center subfield thickness by OCT"
        }]
      }
    },
    {
      "id" : "Observation.component:centerSubfield.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:innerSuperior",
      "path" : "Observation.component",
      "sliceName" : "innerSuperior",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:innerSuperior.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "57110-9",
          "display" : "Macular grid.inner superior subfield thickness by OCT"
        }]
      }
    },
    {
      "id" : "Observation.component:innerSuperior.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:innerNasal",
      "path" : "Observation.component",
      "sliceName" : "innerNasal",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:innerNasal.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "57111-7",
          "display" : "Macular grid.inner nasal subfield thickness by OCT"
        }]
      }
    },
    {
      "id" : "Observation.component:innerNasal.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:innerInferior",
      "path" : "Observation.component",
      "sliceName" : "innerInferior",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:innerInferior.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "57112-5",
          "display" : "Macular grid.inner inferior subfield thickness by OCT"
        }]
      }
    },
    {
      "id" : "Observation.component:innerInferior.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:innerTemporal",
      "path" : "Observation.component",
      "sliceName" : "innerTemporal",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:innerTemporal.code",
      "path" : "Observation.component.code",
      "short" : "LOINC code not confirmed; terminology to be verified"
    },
    {
      "id" : "Observation.component:innerTemporal.code.text",
      "path" : "Observation.component.code.text",
      "patternString" : "Macular grid, inner temporal subfield thickness"
    },
    {
      "id" : "Observation.component:innerTemporal.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:outerSuperior",
      "path" : "Observation.component",
      "sliceName" : "outerSuperior",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:outerSuperior.code",
      "path" : "Observation.component.code",
      "short" : "LOINC code not confirmed; terminology to be verified"
    },
    {
      "id" : "Observation.component:outerSuperior.code.text",
      "path" : "Observation.component.code.text",
      "patternString" : "Macular grid, outer superior subfield thickness"
    },
    {
      "id" : "Observation.component:outerSuperior.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:outerNasal",
      "path" : "Observation.component",
      "sliceName" : "outerNasal",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:outerNasal.code",
      "path" : "Observation.component.code",
      "short" : "LOINC code not confirmed; terminology to be verified"
    },
    {
      "id" : "Observation.component:outerNasal.code.text",
      "path" : "Observation.component.code.text",
      "patternString" : "Macular grid, outer nasal subfield thickness"
    },
    {
      "id" : "Observation.component:outerNasal.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:outerInferior",
      "path" : "Observation.component",
      "sliceName" : "outerInferior",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:outerInferior.code",
      "path" : "Observation.component.code",
      "short" : "LOINC code not confirmed; terminology to be verified"
    },
    {
      "id" : "Observation.component:outerInferior.code.text",
      "path" : "Observation.component.code.text",
      "patternString" : "Macular grid, outer inferior subfield thickness"
    },
    {
      "id" : "Observation.component:outerInferior.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:outerTemporal",
      "path" : "Observation.component",
      "sliceName" : "outerTemporal",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:outerTemporal.code",
      "path" : "Observation.component.code",
      "short" : "LOINC code not confirmed; terminology to be verified"
    },
    {
      "id" : "Observation.component:outerTemporal.code.text",
      "path" : "Observation.component.code.text",
      "patternString" : "Macular grid, outer temporal subfield thickness"
    },
    {
      "id" : "Observation.component:outerTemporal.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    }]
  }
}

```
