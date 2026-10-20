# ImagingStudy modality search parameter - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ImagingStudy modality search parameter**

## SearchParameter: ImagingStudy modality search parameter (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/SearchParameter/sp-imagingstudy-modality | *Version*:0.4.0 |
| Draft as of 2026-09-01 | *Computable Name*:ImagingStudyModality |

 
Search ophthalmic imaging studies by the DICOM acquisition modality of their series (e.g. OPT, OP, OPV, OPM, OAM, AR). 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "sp-imagingstudy-modality",
  "url" : "https://YasniiSS.github.io/fhir4eyes/SearchParameter/sp-imagingstudy-modality",
  "version" : "0.4.0",
  "name" : "ImagingStudyModality",
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
