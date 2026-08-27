# Corneal Tomography Report - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Corneal Tomography Report**

## Resource Profile: Corneal Tomography Report 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/StructureDefinition/corneal-tomography-report | *Version*:0.2.0 |
| Draft as of 2026-08-25 | *Computable Name*:CornealTomographyReport |

 
A specialization of OphthalmicDiagnosticReport for corneal tomography exams (e.g. Scheimpflug/Pentacam-style devices), grouping its six component analyses (CTAnteriorSurface, CTPosteriorSurface, CTPachymetry, CTAnteriorChamber, CTKeratoconusIndices, CTDensitometry) via result, following the same DiagnosticReport grouping pattern already used for OCT (see OphthalmicOCTRNFL and OphthalmicOCTMacula). 
Open question, not yet resolved: in practice, a tomography device may print these as separate reports or 'maps' (an anterior surface map, a posterior surface map, and so on) rather than a single integrated report. For now, this guide captures all six as results under a single combined report, since the current priority is representing the underlying data correctly rather than resolving the exact report/printout structure a given device produces. Whether this should instead be split into multiple report profiles is left open for future review. 

**Usages:**

* Examples for this Profile: [DiagnosticReport/CornealTomographyReportRightEyeExample](DiagnosticReport-CornealTomographyReportRightEyeExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir4eyes.core|current/StructureDefinition/StructureDefinition-corneal-tomography-report.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-corneal-tomography-report.csv), [Excel](StructureDefinition-corneal-tomography-report.xlsx), [Schematron](StructureDefinition-corneal-tomography-report.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "corneal-tomography-report",
  "url" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/corneal-tomography-report",
  "version" : "0.2.0",
  "name" : "CornealTomographyReport",
  "title" : "Corneal Tomography Report",
  "status" : "draft",
  "date" : "2026-08-25T18:52:20+00:00",
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
  "description" : "A specialization of OphthalmicDiagnosticReport for corneal tomography exams\n(e.g. Scheimpflug/Pentacam-style devices), grouping its six component analyses\n(CTAnteriorSurface, CTPosteriorSurface, CTPachymetry, CTAnteriorChamber,\nCTKeratoconusIndices, CTDensitometry) via result, following the same DiagnosticReport\ngrouping pattern already used for OCT (see OphthalmicOCTRNFL and OphthalmicOCTMacula).\n\nOpen question, not yet resolved: in practice, a tomography device may print these as\nseparate reports or 'maps' (an anterior surface map, a posterior surface map, and so on)\nrather than a single integrated report. For now, this guide captures all six as results\nunder a single combined report, since the current priority is representing the underlying\ndata correctly rather than resolving the exact report/printout structure a given device\nproduces. Whether this should instead be split into multiple report profiles is left open\nfor future review.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001",
      "display" : "World"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DiagnosticReport",
  "baseDefinition" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-diagnostic-report",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DiagnosticReport",
      "path" : "DiagnosticReport"
    },
    {
      "id" : "DiagnosticReport.result",
      "path" : "DiagnosticReport.result",
      "short" : "The corneal tomography component analyses available for this exam (up to six: CTAnteriorSurface, CTPosteriorSurface, CTPachymetry, CTAnteriorChamber, CTKeratoconusIndices, CTDensitometry); not all six are necessarily present, depending on the device"
    }]
  }
}

```
