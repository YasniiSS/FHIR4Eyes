# Low Vision Assessment Value Set - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Low Vision Assessment Value Set**

## ValueSet: Low Vision Assessment Value Set 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/ValueSet/low-vision-assessment-vs | *Version*:0.1.0 |
| Draft as of 2026-08-18 | *Computable Name*:LowVisionAssessmentVS |

 
Qualitative visual acuity for patients whose vision falls below what any chart can measure (ICD-11 blindness categories 4 through 6). All five codes are confirmed SNOMED CT concepts, verified directly against the SNOMED CT browser. See Terminology for the full clinical and terminology rationale. The counting-fingers concept below uses the generic code by default; the more specific distance-based codes may be used instead when that detail is known. 

 **References** 

* [Ophthalmic Visual Acuity](StructureDefinition-ophthalmic-visual-acuity.md)

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
  "id" : "low-vision-assessment-vs",
  "url" : "https://YasniiSS.github.io/fhir4eyes/ValueSet/low-vision-assessment-vs",
  "version" : "0.1.0",
  "name" : "LowVisionAssessmentVS",
  "title" : "Low Vision Assessment Value Set",
  "status" : "draft",
  "date" : "2026-08-18T20:04:06+00:00",
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
  "description" : "Qualitative visual acuity for patients whose vision falls below what any\nchart can measure (ICD-11 blindness categories 4 through 6). All five codes are confirmed\nSNOMED CT concepts, verified directly against the SNOMED CT browser. See Terminology for\nthe full clinical and terminology rationale. The counting-fingers concept below uses the\ngeneric code by default; the more specific distance-based codes may be used instead when\nthat detail is known.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001",
      "display" : "World"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "422256009",
        "display" : "Counts fingers - distance vision (finding)"
      },
      {
        "code" : "260295004",
        "display" : "Sees hand movements (finding)"
      },
      {
        "code" : "260297007",
        "display" : "Visual acuity perception of light - accurate projection (finding)"
      },
      {
        "code" : "264943005",
        "display" : "Visual acuity perception of light - inaccurate projection (finding)"
      },
      {
        "code" : "63063006",
        "display" : "Visual acuity, no light perception (finding)"
      }]
    }]
  }
}

```
