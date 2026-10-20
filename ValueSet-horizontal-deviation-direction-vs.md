# Horizontal Deviation Direction Value Set - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Horizontal Deviation Direction Value Set**

## ValueSet: Horizontal Deviation Direction Value Set 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/ValueSet/horizontal-deviation-direction-vs | *Version*:0.4.0 |
| Draft as of 2026-10-20 | *Computable Name*:HorizontalDeviationDirectionVS |

 
Direction of a horizontal ocular deviation at a gaze position: esodeviation, exodeviation, or orthophoria when no horizontal deviation is present. Covers both tropias and phorias; the magnitude is recorded separately as a positive value. 

 **References** 

* [Gaze Position Measurement](StructureDefinition-gaze-position-measurement.md)

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
  "id" : "horizontal-deviation-direction-vs",
  "url" : "https://YasniiSS.github.io/fhir4eyes/ValueSet/horizontal-deviation-direction-vs",
  "version" : "0.4.0",
  "name" : "HorizontalDeviationDirectionVS",
  "title" : "Horizontal Deviation Direction Value Set",
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
  "description" : "Direction of a horizontal ocular deviation at a gaze position: esodeviation,\nexodeviation, or orthophoria when no horizontal deviation is present. Covers both tropias\nand phorias; the magnitude is recorded separately as a positive value.",
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
        "code" : "esodeviation",
        "display" : "Esodeviation"
      },
      {
        "code" : "exodeviation",
        "display" : "Exodeviation"
      },
      {
        "code" : "orthophoria",
        "display" : "Orthophoria"
      }]
    }]
  }
}

```
