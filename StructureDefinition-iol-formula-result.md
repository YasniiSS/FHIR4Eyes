# IOL Formula Result - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IOL Formula Result**

## Resource Profile: IOL Formula Result 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/StructureDefinition/iol-formula-result | *Version*:0.2.0 |
| Draft as of 2026-08-25 | *Computable Name*:IOLFormulaResult |

 
Represents the result of a single IOL power calculation formula (e.g. Barrett Universal II, SRK/T, Holladay), including the recommended lens and expected refraction. Not intended to be used standalone: always referenced via hasMember from an OphthalmicOcularBiometry instance, since one biometry exam typically has its shared measurements calculated through several formulas, each with its own suggested lens. 

**Usages:**

* Refer to this Profile: [Ophthalmic Ocular Biometry](StructureDefinition-ophthalmic-ocular-biometry.md)
* Examples for this Profile: [Observation/IOLFormulaBarrettExample](Observation-IOLFormulaBarrettExample.md) and [Observation/IOLFormulaSRKTExample](Observation-IOLFormulaSRKTExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir4eyes.core|current/StructureDefinition/StructureDefinition-iol-formula-result.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-iol-formula-result.csv), [Excel](StructureDefinition-iol-formula-result.xlsx), [Schematron](StructureDefinition-iol-formula-result.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "iol-formula-result",
  "url" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/iol-formula-result",
  "version" : "0.2.0",
  "name" : "IOLFormulaResult",
  "title" : "IOL Formula Result",
  "status" : "draft",
  "date" : "2026-08-25T18:52:20+00:00",
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
  "description" : "Represents the result of a single IOL power calculation formula (e.g.\nBarrett Universal II, SRK/T, Holladay), including the recommended lens and expected\nrefraction. Not intended to be used standalone: always referenced via hasMember from an\nOphthalmicOcularBiometry instance, since one biometry exam typically has its shared\nmeasurements calculated through several formulas, each with its own suggested lens.",
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
      "short" : "Identifies this as an IOL formula result",
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
      "id" : "Observation.component",
      "path" : "Observation.component",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "code"
        }],
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Observation.component:formula",
      "path" : "Observation.component",
      "sliceName" : "formula",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:formula.code",
      "path" : "Observation.component.code",
      "short" : "IOL formula name (e.g. Barrett Universal II, SRK/T, Holladay 2, Kane). DICOM CID 4236"
    },
    {
      "id" : "Observation.component:formula.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Observation.component:lensConstantType",
      "path" : "Observation.component",
      "sliceName" : "lensConstantType",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:lensConstantType.code",
      "path" : "Observation.component.code",
      "short" : "Type of optimization constant. DICOM CID 4237"
    },
    {
      "id" : "Observation.component:lensConstantType.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Observation.component:lensConstantValue",
      "path" : "Observation.component",
      "sliceName" : "lensConstantValue",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:lensConstantValue.code",
      "path" : "Observation.component.code",
      "short" : "Optimization constant value for the IOL model. DICOM CID 4237"
    },
    {
      "id" : "Observation.component:lensConstantValue.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:iolModel",
      "path" : "Observation.component",
      "sliceName" : "iolModel",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:iolModel.code",
      "path" : "Observation.component.code",
      "short" : "The suggested IOL lens model for this formula"
    },
    {
      "id" : "Observation.component:iolModel.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Observation.component:iolPower",
      "path" : "Observation.component",
      "sliceName" : "iolPower",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:iolPower.code",
      "path" : "Observation.component.code",
      "short" : "Recommended IOL power for this formula"
    },
    {
      "id" : "Observation.component:iolPower.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:expectedRef",
      "path" : "Observation.component",
      "sliceName" : "expectedRef",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:expectedRef.code",
      "path" : "Observation.component.code",
      "short" : "Predicted refractive outcome for this formula's suggested lens"
    },
    {
      "id" : "Observation.component:expectedRef.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:iolTable",
      "path" : "Observation.component",
      "sliceName" : "iolTable",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:iolTable.code",
      "path" : "Observation.component.code",
      "short" : "Range of IOL powers with predicted refractions for this formula, full table from report"
    },
    {
      "id" : "Observation.component:iolTable.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
