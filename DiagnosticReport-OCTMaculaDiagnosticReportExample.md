# OCTMaculaDiagnosticReportExample - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OCTMaculaDiagnosticReportExample**

## Example DiagnosticReport: OCTMaculaDiagnosticReportExample

Profile: [Ophthalmic Diagnostic Report](StructureDefinition-ophthalmic-diagnostic-report.md)

## OCT macula report (Ophthalmology (qualifier value), Diagnostic Imaging) 

| | |
| :--- | :--- |
| Subject | Patient Example Female, DoB: 1990-01-01 ( PA1234567) |
| Relevant Time | 2026-08-18 10:05:00+0000 |
| Performer | [Practitioner Ophthalmologist Example ](Practitioner-OphthalmologistExample.md) |

**Report Details**

Increased central macular thickness consistent with diabetic macular edema, left eye



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "OCTMaculaDiagnosticReportExample",
  "meta" : {
    "profile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-diagnostic-report"]
  },
  "basedOn" : [{
    "reference" : "ServiceRequest/OCTMaculaServiceRequestExample"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "394594003",
      "display" : "Ophthalmology (qualifier value)"
    }]
  },
  {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
      "code" : "IMG",
      "display" : "Diagnostic Imaging"
    }]
  }],
  "code" : {
    "text" : "OCT macula report"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "effectiveDateTime" : "2026-08-18T10:05:00Z",
  "performer" : [{
    "reference" : "Practitioner/OphthalmologistExample"
  }],
  "resultsInterpreter" : [{
    "reference" : "Practitioner/OphthalmologistExample"
  }],
  "imagingStudy" : [{
    "reference" : "ImagingStudy/OCTMaculaLeftEyeExample"
  }],
  "conclusion" : "Increased central macular thickness consistent with diabetic macular edema, left eye"
}

```
