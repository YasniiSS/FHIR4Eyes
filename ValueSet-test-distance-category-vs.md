# Test Distance Category Value Set - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Test Distance Category Value Set**

## ValueSet: Test Distance Category Value Set 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/ValueSet/test-distance-category-vs | *Version*:0.4.0 |
| Draft as of 2026-10-20 | *Computable Name*:TestDistanceCategoryVS |

 
Categorical testing distance of a strabismus or binocular vision test: near (about 33-40 cm) or far (about 6 m / 20 ft). The binding is extensible, so other categories (e.g. intermediate) may be used when needed. 

 **References** 

* [Cover Test](StructureDefinition-cover-test.md)
* [Krimsky Test](StructureDefinition-krimsky-test.md)
* [Prism Cover Test](StructureDefinition-prism-cover-test.md)
* [Red Filter Light Test](StructureDefinition-red-filter-light-test.md)
* [Worth 4 Dot Test](StructureDefinition-worth-4-dot-test.md)

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
  "id" : "test-distance-category-vs",
  "url" : "https://YasniiSS.github.io/fhir4eyes/ValueSet/test-distance-category-vs",
  "version" : "0.4.0",
  "name" : "TestDistanceCategoryVS",
  "title" : "Test Distance Category Value Set",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-10-20T20:13:11-03:00",
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
  "description" : "Categorical testing distance of a strabismus or binocular vision test: near\n(about 33-40 cm) or far (about 6 m / 20 ft). The binding is extensible, so other categories\n(e.g. intermediate) may be used when needed.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001",
      "display" : "World"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
      "concept" : [{
        "code" : "near",
        "display" : "Near"
      },
      {
        "code" : "far",
        "display" : "Far"
      }]
    }]
  }
}

```
