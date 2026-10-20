# Ophthalmic Care Plan - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ophthalmic Care Plan**

## Resource Profile: Ophthalmic Care Plan 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-care-plan | *Version*:0.4.0 |
| Draft as of 2026-10-19 | *Computable Name*:OphthalmicCarePlan |

 
A long-term treatment scheme made up of repeated sessions or administrations, rather than a single event. Covers two schemes identified in this guide's Use Cases: intravitreal injection treatment, and vision therapy or orthoptic treatment. Not every planned session is necessarily scheduled at once: some sessions remain planned but unscheduled within the CarePlan (via activity), while each session that is actually performed is recorded as a separate OphthalmicProcedure, linked back to this CarePlan via Procedure.basedOn. 

Represents a long-term treatment scheme made up of repeated sessions or administrations, rather than a single event. This guide identified two such schemes in [Use Cases](usecases.md): intravitreal injection treatment ([use case 4](usecases.md#intravitreal-injection-treatment)) and vision therapy or orthoptic treatment ([use case 3](usecases.md#use-case-3-vision-therapy-and-rehabilitation)). As with [OphthalmicServiceRequest](StructureDefinition-ophthalmic-service-request.md), there is no equivalent profile in the HL7 Eye Care IG to align with; this profile is designed from the base FHIR `CarePlan` resource and this guide's own use cases.

### Design decisions

**One profile, differentiated by category.** Rather than defining two separate profiles, `OphthalmicCarePlan` is a single profile whose `category` element (`1..1`, required binding to [OphthalmicCarePlanCategoryVS](ValueSet-ophthalmic-care-plan-category-vs.md)) distinguishes the type of scheme:

| | |
| :--- | :--- |
| `intravitreal-injection-therapy` | A scheme of repeated intravitreal injections |
| `functional-therapy` | A scheme of repeated vision therapy or orthoptic sessions |

> These are proposed FHIR4Eyes-only codes, not yet bound to an external terminology, since no existing HL7 Eye Care IG or SNOMED CT pattern was found for this specific distinction. Open to revision if a suitable external code is identified later.

**Goal.** `CarePlan.goal` (`Reference(Goal)`) is `0..1`, included when clinically relevant, rather than being required for every scheme. Some schemes have a clear measurable target (for example, a target intraocular pressure), while others may not need one recorded explicitly. A dedicated `Goal` profile for ophthalmology is listed as a lower-priority item still to be built (see [Background](background.md)).

**Addressed diagnosis.** `CarePlan.addresses` (`0..1`) references the [OphthalmicCondition](StructureDefinition-ophthalmic-condition.md) motivating the scheme.

**Planned vs. performed sessions.** Not every planned session is necessarily scheduled at once: a session that is planned but not yet carried out is represented as a `CarePlan.activity`. Since `CarePlan.activity.reference` cannot point to `Procedure` (only to request-type resources), once a session is scheduled it can reference the relevant [OphthalmicServiceRequest](StructureDefinition-ophthalmic-service-request.md) there.

**Linked procedures.** Individual sessions or injections that are actually performed are recorded as separate [OphthalmicProcedure](StructureDefinition-ophthalmic-procedure.md) instances, linked back to this `CarePlan` via `Procedure.basedOn`, as established in [use case 4](usecases.md#intravitreal-injection-treatment) for intravitreal injections. The same pattern applies to vision therapy and orthoptic sessions.

**Examples:** [Intravitreal injection care plan](CarePlan-AvastinInjectionCarePlanExample.md)

**Usages:**

* Refer to this Profile: [Ophthalmic Procedure](StructureDefinition-ophthalmic-procedure.md)
* Examples for this Profile: [CarePlan/AvastinInjectionCarePlanExample](CarePlan-AvastinInjectionCarePlanExample.md)
* CapabilityStatements using this Profile: [FHIR4Eyes Server Capability Statement](CapabilityStatement-FHIR4EyesCapabilityStatement.md)

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
  "version" : "0.4.0",
  "name" : "OphthalmicCarePlan",
  "title" : "Ophthalmic Care Plan",
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
