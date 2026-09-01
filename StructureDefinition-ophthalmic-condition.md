# Ophthalmic Condition - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ophthalmic Condition**

## Resource Profile: Ophthalmic Condition 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-condition | *Version*:0.3.0 |
| Draft as of 2026-09-01 | *Computable Name*:OphthalmicCondition |

 
The formal, past or present clinical diagnosis of a specific ophthalmic condition. Follows the same minimalist technical pattern as the HL7 Eye Care IG's equivalent profile (condition-base): only code, bodySite, and subject carry real constraints; everything else in the base Condition resource is left as-is. See the Profiles page of this guide for the full design rationale, including a note on where FHIR4Eyes departs from the Eye Care IG's own narrative documentation. 

**Usages:**

* Refer to this Profile: [Ophthalmic Care Plan](StructureDefinition-ophthalmic-care-plan.md) and [Ophthalmic Encounter](StructureDefinition-ophthalmic-encounter.md)
* Examples for this Profile: [Condition/DiabeticMacularEdemaConditionExample](Condition-DiabeticMacularEdemaConditionExample.md)
* CapabilityStatements using this Profile: [FHIR4Eyes Server Capability Statement](CapabilityStatement-FHIR4EyesCapabilityStatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir4eyes.core|current/StructureDefinition/StructureDefinition-ophthalmic-condition.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ophthalmic-condition.csv), [Excel](StructureDefinition-ophthalmic-condition.xlsx), [Schematron](StructureDefinition-ophthalmic-condition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ophthalmic-condition",
  "url" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-condition",
  "version" : "0.3.0",
  "name" : "OphthalmicCondition",
  "title" : "Ophthalmic Condition",
  "status" : "draft",
  "date" : "2026-09-01T17:43:23+00:00",
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
  "description" : "The formal, past or present clinical diagnosis of a specific ophthalmic\ncondition. Follows the same minimalist technical pattern as the HL7 Eye Care IG's\nequivalent profile (condition-base): only code, bodySite, and subject carry real\nconstraints; everything else in the base Condition resource is left as-is. See the\nProfiles page of this guide for the full design rationale, including a note on where\nFHIR4Eyes departs from the Eye Care IG's own narrative documentation.",
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
  "type" : "Condition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Condition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Condition",
      "path" : "Condition"
    },
    {
      "id" : "Condition.identifier",
      "path" : "Condition.identifier",
      "short" : "External identifier for this diagnosis, if applicable",
      "mustSupport" : true
    },
    {
      "id" : "Condition.code",
      "path" : "Condition.code",
      "short" : "Identification of the ophthalmic diagnosis",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.bodySite",
      "path" : "Condition.bodySite",
      "mustSupport" : true
    },
    {
      "id" : "Condition.bodySite.extension:bodySiteEye",
      "path" : "Condition.bodySite.extension",
      "sliceName" : "bodySiteEye",
      "short" : "Laterality of the diagnosis, via BodyStructure",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/bodySite"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.bodySite.extension:bodySiteEye.value[x]",
      "path" : "Condition.bodySite.extension.value[x]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ocular-body-structure"]
      }]
    },
    {
      "id" : "Condition.subject",
      "path" : "Condition.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true
    }]
  }
}

```
