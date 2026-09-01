# sp-condition-eye - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **sp-condition-eye**

## SearchParameter: sp-condition-eye 

| | |
| :--- | :--- |
| *Official URL*:http://fhir4eyes.org/SearchParameter/condition-eye | *Version*:0.3.0 |
| Active as of 2026-09-01 | *Computable Name*:ConditionEye |

 
Search ophthalmic conditions/diagnoses by eye laterality, expressed via the bodySite extension referencing an OcularBodyStructure instance. 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "sp-condition-eye",
  "url" : "http://fhir4eyes.org/SearchParameter/condition-eye",
  "version" : "0.3.0",
  "name" : "ConditionEye",
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
  "description" : "Search ophthalmic conditions/diagnoses by eye laterality, expressed via the bodySite extension referencing an OcularBodyStructure instance.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001",
      "display" : "World"
    }]
  }],
  "code" : "eye",
  "base" : ["Condition"],
  "type" : "reference",
  "expression" : "Condition.bodySite.extension('http://hl7.org/fhir/StructureDefinition/bodySite').value",
  "xpathUsage" : "normal",
  "target" : ["BodyStructure"],
  "multipleOr" : true,
  "multipleAnd" : true
}

```
