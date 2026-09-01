# sp-diagnosticreport-imaging-study - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **sp-diagnosticreport-imaging-study**

## SearchParameter: sp-diagnosticreport-imaging-study 

| | |
| :--- | :--- |
| *Official URL*:http://fhir4eyes.org/SearchParameter/diagnosticreport-imaging-study | *Version*:0.3.0 |
| Active as of 2026-09-01 | *Computable Name*:DiagnosticReportImagingStudy |

 
Search ophthalmic diagnostic reports by the OphthalmicImagingStudy they interpret. 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "sp-diagnosticreport-imaging-study",
  "url" : "http://fhir4eyes.org/SearchParameter/diagnosticreport-imaging-study",
  "version" : "0.3.0",
  "name" : "DiagnosticReportImagingStudy",
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
  "description" : "Search ophthalmic diagnostic reports by the OphthalmicImagingStudy they interpret.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001",
      "display" : "World"
    }]
  }],
  "code" : "imaging-study",
  "base" : ["DiagnosticReport"],
  "type" : "reference",
  "expression" : "DiagnosticReport.imagingStudy",
  "xpathUsage" : "normal",
  "target" : ["ImagingStudy"],
  "multipleOr" : true,
  "multipleAnd" : true
}

```
