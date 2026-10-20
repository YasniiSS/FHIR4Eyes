# Ophthalmic Condition - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ophthalmic Condition**

## Resource Profile: Ophthalmic Condition 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-condition | *Version*:0.4.0 |
| Draft as of 2026-10-19 | *Computable Name*:OphthalmicCondition |

 
The formal, past or present clinical diagnosis of a specific ophthalmic condition. Follows the same minimalist technical pattern as the HL7 Eye Care IG's equivalent profile (condition-base): only code, bodySite, and subject carry real constraints; everything else in the base Condition resource is left as-is. See the Profiles page of this guide for the full design rationale, including a note on where FHIR4Eyes departs from the Eye Care IG's own narrative documentation. 

Represents the formal, past or present clinical diagnosis of a specific ophthalmic condition. It is used throughout [Use Cases](usecases.md) wherever a diagnosis is reached (for example after reviewing an imaging study, or before starting an intravitreal injection treatment scheme).

### Design decisions

This profile follows the same technical pattern as the HL7 Eye Care IG's equivalent profile (`condition-base`), aligned wherever it made sense, and adapted where its own narrative documentation and its technical definition disagreed with each other (see the note below).

**Code.** `Condition.code` is `1..1`, bound to the diagnosis terminology defined in [Terminology](terminology.md): SNOMED CT and/or ICD-11 for FHIR4Eyes Core, ICD-10 for FHIR4Eyes CL.

**Laterality.** `Condition.bodySite` is `0..*` and optional, using the standard FHIR `bodySite` extension to reference a `BodyStructure` (the same [OcularBodyStructure](StructureDefinition-ocular-body-structure.md) pattern used throughout this guide for laterality; see [Guidance](guidance.md)). This is included because many ophthalmic diagnoses are laterality-specific (for example, uveitis affecting only one eye, which is common in clinical practice).

> **Note on the HL7 Eye Care IG's equivalent profile:** its narrative documentation states that its "Ocular anatomical location" profile is **not** expected to be used together with its condition profile. However, its actual technical definition (the StructureDefinition itself) does define a `bodySite` slice referencing `BodyStructure`, contradicting that narrative statement. FHIR4Eyes follows the technical definition (bodySite included, optional) rather than the narrative text, since the former is what is actually enforceable and validated.

**Subject.** `Condition.subject` is `1..1`, `Reference(Patient)`.

**Examples:** [Diabetic macular edema diagnosis](Condition-DiabeticMacularEdemaConditionExample.md)

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
  "version" : "0.4.0",
  "name" : "OphthalmicCondition",
  "title" : "Ophthalmic Condition",
  "status" : "draft",
  "date" : "2026-10-19T22:17:00-03:00",
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
