# Encounter appointment search parameter - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Encounter appointment search parameter**

## SearchParameter: Encounter appointment search parameter (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/SearchParameter/sp-encounter-appointment | *Version*:0.4.0 |
| Draft as of 2026-09-01 | *Computable Name*:EncounterAppointment |

 
Search ophthalmic encounters by the appointment that led to them. 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "sp-encounter-appointment",
  "url" : "https://YasniiSS.github.io/fhir4eyes/SearchParameter/sp-encounter-appointment",
  "version" : "0.4.0",
  "name" : "EncounterAppointment",
  "status" : "draft",
  "experimental" : true,
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
