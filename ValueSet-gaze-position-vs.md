# Gaze Position Value Set - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Gaze Position Value Set**

## ValueSet: Gaze Position Value Set 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/ValueSet/gaze-position-vs | *Version*:0.4.0 |
| Draft as of 2026-10-20 | *Computable Name*:GazePositionVS |

 
The nine diagnostic positions of gaze at which a strabismus measurement or binocular finding is recorded: primary position, the four secondary positions (up gaze / supraversion, down gaze / infraversion, right gaze / dextroversion, left gaze / levoversion) and the four tertiary (oblique) positions. SNOMED CT qualifier values from the Gaze directions hierarchy. 

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
  "id" : "gaze-position-vs",
  "url" : "https://YasniiSS.github.io/fhir4eyes/ValueSet/gaze-position-vs",
  "version" : "0.4.0",
  "name" : "GazePositionVS",
  "title" : "Gaze Position Value Set",
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
  "description" : "The nine diagnostic positions of gaze at which a strabismus measurement or\nbinocular finding is recorded: primary position, the four secondary positions (up gaze /\nsupraversion, down gaze / infraversion, right gaze / dextroversion, left gaze / levoversion)\nand the four tertiary (oblique) positions. SNOMED CT qualifier values from the Gaze\ndirections hierarchy.",
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
        "code" : "408744005",
        "display" : "Primary gaze"
      },
      {
        "code" : "255533007",
        "display" : "Upward gaze"
      },
      {
        "code" : "255521002",
        "display" : "Downward gaze"
      },
      {
        "code" : "255531009",
        "display" : "Right gaze"
      },
      {
        "code" : "255530005",
        "display" : "Left gaze"
      },
      {
        "code" : "255526007",
        "display" : "Gaze up and right"
      },
      {
        "code" : "255525006",
        "display" : "Gaze up and left"
      },
      {
        "code" : "255524005",
        "display" : "Gaze down and right"
      },
      {
        "code" : "255523004",
        "display" : "Gaze down and left"
      }]
    }]
  }
}

```
