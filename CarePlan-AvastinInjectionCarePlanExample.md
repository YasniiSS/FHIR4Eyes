# Avastin injection scheme - left eye - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Avastin injection scheme - left eye**

## Example CarePlan: Avastin injection scheme - left eye

Profile: [Ophthalmic Care Plan](StructureDefinition-ophthalmic-care-plan.md)

**status**: Active

**intent**: Plan

**category**: Intravitreal injection therapy

**title**: Avastin injection scheme - left eye

**description**: 3 monthly intravitreal Avastin injections for diabetic macular edema

**subject**: [Patient Example Female, DoB: 1990-01-01 ( PA1234567)](Patient-PatientExample.md)

**period**: 2026-08-18 --> 2026-10-18

**author**: [Practitioner Ophthalmologist Example ](Practitioner-OphthalmologistExample.md)

**addresses**: [Condition ](Condition-DiabeticMacularEdemaConditionExample.md)

> **activity**

### Details

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Status** | **Scheduled[x]** | **Description** |
| * | Completed | 2026-08-18 --> 2026-08-18 | Dose 1 - Intravitreal Avastin injection, left eye |


> **activity**

### Details

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Status** | **Scheduled[x]** | **Description** |
| * | In Progress | 2026-09-01 --> 2026-09-30 | Dose 2 - Intravitreal Avastin injection, left eye |


> **activity**

### Details

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Status** | **Scheduled[x]** | **Description** |
| * | Not Started | 2026-10-01 --> 2026-10-31 | Dose 3 - Intravitreal Avastin injection, left eye |


**note**: 

> 

Patient must attend a follow-up visit before each injection for macular OCT evaluation




## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "AvastinInjectionCarePlanExample",
  "meta" : {
    "profile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-care-plan"]
  },
  "status" : "active",
  "intent" : "plan",
  "category" : [{
    "coding" : [{
      "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-care-plan-category-cs",
      "code" : "intravitreal-injection-therapy",
      "display" : "Intravitreal injection therapy"
    }]
  }],
  "title" : "Avastin injection scheme - left eye",
  "description" : "3 monthly intravitreal Avastin injections for diabetic macular edema",
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "period" : {
    "start" : "2026-08-18",
    "end" : "2026-10-18"
  },
  "author" : {
    "reference" : "Practitioner/OphthalmologistExample"
  },
  "addresses" : [{
    "reference" : "Condition/DiabeticMacularEdemaConditionExample"
  }],
  "activity" : [{
    "detail" : {
      "status" : "completed",
      "scheduledPeriod" : {
        "start" : "2026-08-18",
        "end" : "2026-08-18"
      },
      "description" : "Dose 1 - Intravitreal Avastin injection, left eye"
    }
  },
  {
    "detail" : {
      "status" : "in-progress",
      "scheduledPeriod" : {
        "start" : "2026-09-01",
        "end" : "2026-09-30"
      },
      "description" : "Dose 2 - Intravitreal Avastin injection, left eye"
    }
  },
  {
    "detail" : {
      "status" : "not-started",
      "scheduledPeriod" : {
        "start" : "2026-10-01",
        "end" : "2026-10-31"
      },
      "description" : "Dose 3 - Intravitreal Avastin injection, left eye"
    }
  }],
  "note" : [{
    "text" : "Patient must attend a follow-up visit before each injection for macular OCT evaluation"
  }]
}

```
