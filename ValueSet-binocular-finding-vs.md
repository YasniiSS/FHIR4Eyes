# Binocular Finding Value Set - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Binocular Finding Value Set**

## ValueSet: Binocular Finding Value Set 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/ValueSet/binocular-finding-vs | *Version*:0.4.0 |
| Draft as of 2026-10-20 | *Computable Name*:BinocularFindingVS |

 
Qualitative findings recorded at a gaze position: sensory responses on the red filter plus light and Worth 4 dot tests (fusion, suppression of one eye, crossed or uncrossed diplopia) and the position of the corneal light reflex on the Hirschberg test (centered, or displaced nasally, temporally, superiorly or inferiorly in the eye assessed). The binding is extensible, so other findings (e.g. tropia vs phoria on a prism cover test) may be used when no concept here applies. 

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
  "id" : "binocular-finding-vs",
  "url" : "https://YasniiSS.github.io/fhir4eyes/ValueSet/binocular-finding-vs",
  "version" : "0.4.0",
  "name" : "BinocularFindingVS",
  "title" : "Binocular Finding Value Set",
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
  "description" : "Qualitative findings recorded at a gaze position: sensory responses on the red\nfilter plus light and Worth 4 dot tests (fusion, suppression of one eye, crossed or\nuncrossed diplopia) and the position of the corneal light reflex on the Hirschberg test\n(centered, or displaced nasally, temporally, superiorly or inferiorly in the eye assessed).\nThe binding is extensible, so other findings (e.g. tropia vs phoria on a prism cover test)\nmay be used when no concept here applies.",
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
        "code" : "fusion",
        "display" : "Fusion"
      },
      {
        "code" : "corneal-reflex-centered",
        "display" : "Corneal light reflex centered"
      },
      {
        "code" : "corneal-reflex-displaced-nasal",
        "display" : "Corneal light reflex displaced nasally"
      },
      {
        "code" : "corneal-reflex-displaced-temporal",
        "display" : "Corneal light reflex displaced temporally"
      },
      {
        "code" : "corneal-reflex-displaced-superior",
        "display" : "Corneal light reflex displaced superiorly"
      },
      {
        "code" : "corneal-reflex-displaced-inferior",
        "display" : "Corneal light reflex displaced inferiorly"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "1052232003",
        "display" : "Suppression of visual signal of right eye"
      },
      {
        "code" : "1052231005",
        "display" : "Suppression of visual signal of left eye"
      },
      {
        "code" : "251756006",
        "display" : "Heteronymous diplopia"
      },
      {
        "code" : "251755005",
        "display" : "Homonymous diplopia"
      }]
    }]
  }
}

```
