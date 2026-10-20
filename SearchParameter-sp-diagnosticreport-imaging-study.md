# DiagnosticReport imaging study search parameter - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DiagnosticReport imaging study search parameter**

## SearchParameter: DiagnosticReport imaging study search parameter (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/SearchParameter/sp-diagnosticreport-imaging-study | *Version*:0.4.0 |
| Draft as of 2026-09-01 | *Computable Name*:DiagnosticReportImagingStudy |

 
Search ophthalmic diagnostic reports by the OphthalmicImagingStudy they interpret. 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "sp-diagnosticreport-imaging-study",
  "url" : "https://YasniiSS.github.io/fhir4eyes/SearchParameter/sp-diagnosticreport-imaging-study",
  "version" : "0.4.0",
  "name" : "DiagnosticReportImagingStudy",
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
