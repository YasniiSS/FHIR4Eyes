# ImagingStudy eye (laterality) search parameter - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ImagingStudy eye (laterality) search parameter**

## SearchParameter: ImagingStudy eye (laterality) search parameter (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/SearchParameter/sp-imagingstudy-eye | *Version*:0.4.0 |
| Draft as of 2026-09-01 | *Computable Name*:ImagingStudyEye |

 
Search ophthalmic imaging studies by the laterality of an examined series, using the native ImagingStudy.series.laterality element (SNOMED CT 24028007 Right / 7771000 Left). 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "sp-imagingstudy-eye",
  "url" : "https://YasniiSS.github.io/fhir4eyes/SearchParameter/sp-imagingstudy-eye",
  "version" : "0.4.0",
  "name" : "ImagingStudyEye",
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
  "description" : "Search ophthalmic imaging studies by the laterality of an examined series, using the native ImagingStudy.series.laterality element (SNOMED CT 24028007 Right / 7771000 Left).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001",
      "display" : "World"
    }]
  }],
  "code" : "eye",
  "base" : ["ImagingStudy"],
  "type" : "token",
  "expression" : "ImagingStudy.series.laterality",
  "xpathUsage" : "normal",
  "multipleOr" : true,
  "multipleAnd" : true
}

```
