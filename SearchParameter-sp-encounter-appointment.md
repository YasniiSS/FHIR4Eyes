# sp-encounter-appointment - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **sp-encounter-appointment**

## SearchParameter: sp-encounter-appointment 

| | |
| :--- | :--- |
| *Official URL*:http://fhir4eyes.org/SearchParameter/encounter-appointment | *Version*:0.3.0 |
| Active as of 2026-09-01 | *Computable Name*:EncounterAppointment |

 
Search ophthalmic encounters by the appointment that led to them. 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "sp-encounter-appointment",
  "url" : "http://fhir4eyes.org/SearchParameter/encounter-appointment",
  "version" : "0.3.0",
  "name" : "EncounterAppointment",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-01",
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
  "description" : "Search ophthalmic encounters by the appointment that led to them.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001",
      "display" : "World"
    }]
  }],
  "code" : "appointment",
  "base" : ["Encounter"],
  "type" : "reference",
  "expression" : "Encounter.appointment",
  "xpathUsage" : "normal",
  "target" : ["Appointment"],
  "multipleOr" : true,
  "multipleAnd" : true
}

```
