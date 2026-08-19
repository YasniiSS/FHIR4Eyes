# Ophthalmic Care Plan - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ophthalmic Care Plan**

## Resource Profile: Ophthalmic Care Plan 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-care-plan | *Version*:0.1.0 |
| Draft as of 2026-08-19 | *Computable Name*:OphthalmicCarePlan |

 
A long-term treatment scheme made up of repeated sessions or administrations, rather than a single event. Covers two schemes identified in this guide's Use Cases: intravitreal injection treatment, and vision therapy or orthoptic treatment. Not every planned session is necessarily scheduled at once: some sessions remain planned but unscheduled within the CarePlan (via activity), while each session that is actually performed is recorded as a separate OphthalmicProcedure, linked back to this CarePlan via Procedure.basedOn. 

**Usages:**

* Refer to this Profile: [Ophthalmic Procedure](StructureDefinition-ophthalmic-procedure.md)
* Examples for this Profile: [CarePlan/AvastinInjectionCarePlanExample](CarePlan-AvastinInjectionCarePlanExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir4eyes.core|current/StructureDefinition/StructureDefinition-ophthalmic-care-plan.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ophthalmic-care-plan.csv), [Excel](StructureDefinition-ophthalmic-care-plan.xlsx), [Schematron](StructureDefinition-ophthalmic-care-plan.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ophthalmic-care-plan",
  "url" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-care-plan",
  "version" : "0.1.0",
  "name" : "OphthalmicCarePlan",
  "title" : "Ophthalmic Care Plan",
  "status" : "draft",
  "date" : "2026-08-19T17:55:33+00:00",
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
  "description" : "A long-term treatment scheme made up of repeated sessions or\nadministrations, rather than a single event. Covers two schemes identified in this guide's\nUse Cases: intravitreal injection treatment, and vision therapy or orthoptic treatment. Not\nevery planned session is necessarily scheduled at once: some sessions remain planned but\nunscheduled within the CarePlan (via activity), while each session that is actually\nperformed is recorded as a separate OphthalmicProcedure, linked back to this CarePlan via\nProcedure.basedOn.",
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
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "CarePlan",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/CarePlan",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "CarePlan",
      "path" : "CarePlan"
    },
    {
      "id" : "CarePlan.identifier",
      "path" : "CarePlan.identifier",
      "short" : "External identifier for this care plan, if applicable",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.status",
      "path" : "CarePlan.status",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.intent",
      "path" : "CarePlan.intent",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.category",
      "path" : "CarePlan.category",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://YasniiSS.github.io/fhir4eyes/ValueSet/ophthalmic-care-plan-category-vs"
      }
    },
    {
      "id" : "CarePlan.title",
      "path" : "CarePlan.title",
      "short" : "Human-friendly name for the scheme (e.g. 'Avastin injection scheme')",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.description",
      "path" : "CarePlan.description",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.subject",
      "path" : "CarePlan.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.period",
      "path" : "CarePlan.period",
      "short" : "The time period this treatment scheme covers",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.author",
      "path" : "CarePlan.author",
      "short" : "The ophthalmologist responsible for defining this scheme",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.addresses",
      "path" : "CarePlan.addresses",
      "short" : "The diagnosis motivating this treatment scheme",
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-condition"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.goal",
      "path" : "CarePlan.goal",
      "short" : "The measurable target of this scheme, when clinically relevant (e.g. target IOP)",
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity",
      "path" : "CarePlan.activity",
      "short" : "A planned session within this scheme, before or without being scheduled yet",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity.reference",
      "path" : "CarePlan.activity.reference",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-service-request"]
      }]
    },
    {
      "id" : "CarePlan.activity.detail.status",
      "path" : "CarePlan.activity.detail.status",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.note",
      "path" : "CarePlan.note",
      "mustSupport" : true
    }]
  }
}

```
