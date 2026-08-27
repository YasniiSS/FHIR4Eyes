# Ophthalmic Care Plan Category Value Set - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ophthalmic Care Plan Category Value Set**

## ValueSet: Ophthalmic Care Plan Category Value Set 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/ValueSet/ophthalmic-care-plan-category-vs | *Version*:0.2.0 |
| Draft as of 2026-08-25 | *Computable Name*:OphthalmicCarePlanCategoryVS |

 
The type of ophthalmic treatment scheme. Proposed FHIR4Eyes-only codes, open to revision if a suitable external code is identified later. 

 **References** 

* [Ophthalmic Care Plan](StructureDefinition-ophthalmic-care-plan.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "ophthalmic-care-plan-category-vs",
  "url" : "https://YasniiSS.github.io/fhir4eyes/ValueSet/ophthalmic-care-plan-category-vs",
  "version" : "0.2.0",
  "name" : "OphthalmicCarePlanCategoryVS",
  "title" : "Ophthalmic Care Plan Category Value Set",
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
  "description" : "The type of ophthalmic treatment scheme. Proposed FHIR4Eyes-only codes,\nopen to revision if a suitable external code is identified later.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001",
      "display" : "World"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-care-plan-category-cs"
    }]
  }
}

```
