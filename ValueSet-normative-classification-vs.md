# Normative Classification Value Set - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Normative Classification Value Set**

## ValueSet: Normative Classification Value Set 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/ValueSet/normative-classification-vs | *Version*:0.4.0 |
| Draft as of 2026-10-20 | *Computable Name*:NormativeClassificationVS |

 
Classification of an ophthalmic measurement or analysis against the device normative (age-matched reference) database: within normal limits, borderline, or outside normal limits. Used for the overall interpretation of OCT macula and OCT RNFL / optic nerve head analyses, and for the per-subfield deviation category of the OCT macula profile. Bindings are extensible, so device-specific percentile categories (e.g. p<5%, p<1%) may be used when no concept here applies. 

 **References** 

* [Ophthalmic OCT Macula](StructureDefinition-ophthalmic-oct-macula.md)
* [Ophthalmic OCT RNFL](StructureDefinition-ophthalmic-oct-rnfl.md)

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
  "id" : "normative-classification-vs",
  "url" : "https://YasniiSS.github.io/fhir4eyes/ValueSet/normative-classification-vs",
  "version" : "0.4.0",
  "name" : "NormativeClassificationVS",
  "title" : "Normative Classification Value Set",
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
  "description" : "Classification of an ophthalmic measurement or analysis against the device\nnormative (age-matched reference) database: within normal limits, borderline, or outside\nnormal limits. Used for the overall interpretation of OCT macula and OCT RNFL / optic nerve\nhead analyses, and for the per-subfield deviation category of the OCT macula profile.\nBindings are extensible, so device-specific percentile categories (e.g. p<5%, p<1%) may be\nused when no concept here applies.",
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
        "code" : "within-normal-limits",
        "display" : "Within normal limits"
      },
      {
        "code" : "borderline",
        "display" : "Borderline"
      },
      {
        "code" : "outside-normal-limits",
        "display" : "Outside normal limits"
      }]
    }]
  }
}

```
