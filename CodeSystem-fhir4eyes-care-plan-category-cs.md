# FHIR4Eyes Care Plan Category Code System - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FHIR4Eyes Care Plan Category Code System**

## CodeSystem: FHIR4Eyes Care Plan Category Code System 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-care-plan-category-cs | *Version*:0.1.0 |
| Draft as of 2026-08-19 | *Computable Name*:FHIR4EyesCarePlanCategoryCS |

 
Proposed FHIR4Eyes-only codes for care plan category, not yet bound to an external terminology. See the Profiles page of this guide for the design rationale. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Ophthalmic Care Plan Category Value Set](ValueSet-ophthalmic-care-plan-category-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fhir4eyes-care-plan-category-cs",
  "url" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-care-plan-category-cs",
  "version" : "0.1.0",
  "name" : "FHIR4EyesCarePlanCategoryCS",
  "title" : "FHIR4Eyes Care Plan Category Code System",
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
  "description" : "Proposed FHIR4Eyes-only codes for care plan category, not yet bound to an\nexternal terminology. See the Profiles page of this guide for the design rationale.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001",
      "display" : "World"
    }]
  }],
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "intravitreal-injection-therapy",
    "display" : "Intravitreal injection therapy",
    "definition" : "A scheme of repeated intravitreal injections"
  },
  {
    "code" : "functional-therapy",
    "display" : "Functional therapy",
    "definition" : "A scheme of repeated vision therapy or orthoptic sessions"
  }]
}

```
