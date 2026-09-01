# sp-imagingstudy-modality - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **sp-imagingstudy-modality**

## SearchParameter: sp-imagingstudy-modality 

| | |
| :--- | :--- |
| *Official URL*:http://fhir4eyes.org/SearchParameter/imagingstudy-modality | *Version*:0.3.0 |
| Active as of 2026-09-01 | *Computable Name*:ImagingStudyModality |

 
Search ophthalmic imaging studies by the DICOM acquisition modality of their series (e.g. OPT, OP, OPV, OPM, OAM, AR). 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "sp-imagingstudy-modality",
  "url" : "http://fhir4eyes.org/SearchParameter/imagingstudy-modality",
  "version" : "0.3.0",
  "name" : "ImagingStudyModality",
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
  "description" : "Search ophthalmic imaging studies by the DICOM acquisition modality of their series (e.g. OPT, OP, OPV, OPM, OAM, AR).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001",
      "display" : "World"
    }]
  }],
  "code" : "modality",
  "base" : ["ImagingStudy"],
  "type" : "token",
  "expression" : "ImagingStudy.series.modality",
  "xpathUsage" : "normal",
  "multipleOr" : true,
  "multipleAnd" : true
}

```
