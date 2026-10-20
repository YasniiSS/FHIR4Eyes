# Observation eye (laterality) search parameter - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Observation eye (laterality) search parameter**

## SearchParameter: Observation eye (laterality) search parameter (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/SearchParameter/sp-observation-eye | *Version*:0.4.0 |
| Draft as of 2026-09-01 | *Computable Name*:ObservationEye |

 
Search observations (e.g. OphthalmicVisualAcuity, IntraocularPressure, and other ophthalmic Observation profiles in this guide) by eye laterality, expressed via the bodySite extension referencing an OcularBodyStructure instance. 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "sp-observation-eye",
  "url" : "https://YasniiSS.github.io/fhir4eyes/SearchParameter/sp-observation-eye",
  "version" : "0.4.0",
  "name" : "ObservationEye",
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
  "description" : "Search observations (e.g. OphthalmicVisualAcuity, IntraocularPressure, and other ophthalmic Observation profiles in this guide) by eye laterality, expressed via the bodySite extension referencing an OcularBodyStructure instance.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001",
      "display" : "World"
    }]
  }],
  "code" : "eye",
  "base" : ["Observation"],
  "type" : "reference",
  "expression" : "Observation.bodySite.extension('http://hl7.org/fhir/StructureDefinition/bodySite').value",
  "xpathUsage" : "normal",
  "target" : ["BodyStructure"],
  "multipleOr" : true,
  "multipleAnd" : true
}

```
