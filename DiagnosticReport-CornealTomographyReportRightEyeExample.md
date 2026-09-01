# CornealTomographyReportRightEyeExample - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CornealTomographyReportRightEyeExample**

## Example DiagnosticReport: CornealTomographyReportRightEyeExample

Profile: [Corneal Tomography Report](StructureDefinition-corneal-tomography-report.md)

## Corneal tomography report, right eye (Ophthalmology (qualifier value)) 

| | |
| :--- | :--- |
| Subject | Patient Example Female, DoB: 1990-01-01 ( PA1234567) |
| Relevant Time | 2026-08-20 10:00:00+0000 |
| Performer | [Practitioner Ophthalmologist Example ](Practitioner-OphthalmologistExample.md) |

**Report Details**

* **Code**: [Corneal tomography, anterior surface analysis](Observation-CTAnteriorSurfaceRightEyeExample.md)()
  * **Value**: 
  * **Flags**: Final
  * **Note**: > Example based on typical Pentacam-style anterior surface report
* **Code**: [Corneal tomography, posterior surface analysis](Observation-CTPosteriorSurfaceRightEyeExample.md)()
  * **Value**: 
  * **Flags**: Final
  * **Note**: 
* **Code**: [Corneal tomography, pachymetry analysis](Observation-CTPachymetryRightEyeExample.md)()
  * **Value**: 
  * **Flags**: Final
  * **Note**: 
* **Code**: [Corneal tomography, anterior chamber analysis](Observation-CTAnteriorChamberRightEyeExample.md)()
  * **Value**: 
  * **Flags**: Final
  * **Note**: 
* **Code**: [Corneal tomography, keratoconus indices](Observation-CTKeratoconusIndicesRightEyeExample.md)()
  * **Value**: 
  * **Flags**: Final
  * **Note**: 
* **Code**: [Corneal tomography, densitometry analysis](Observation-CTDensitometryRightEyeExample.md)()
  * **Value**: 
  * **Flags**: Final
  * **Note**: 

No topographic or tomographic signs of ectasia. Regular corneal astigmatism of 1.4D. Suitable candidate for toric IOL calculation using the reported optimal axis.



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "CornealTomographyReportRightEyeExample",
  "meta" : {
    "profile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/corneal-tomography-report"]
  },
  "basedOn" : [{
    "reference" : "ServiceRequest/CornealTomographyServiceRequestExample"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "394594003",
      "display" : "Ophthalmology (qualifier value)"
    }]
  }],
  "code" : {
    "text" : "Corneal tomography report, right eye"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "effectiveDateTime" : "2026-08-20T10:00:00Z",
  "performer" : [{
    "reference" : "Practitioner/OphthalmologistExample"
  }],
  "resultsInterpreter" : [{
    "reference" : "Practitioner/OphthalmologistExample"
  }],
  "result" : [{
    "reference" : "Observation/CTAnteriorSurfaceRightEyeExample",
    "display" : "Anterior surface: K1 43.2D, K2 44.6D"
  },
  {
    "reference" : "Observation/CTPosteriorSurfaceRightEyeExample",
    "display" : "Posterior surface: Km back 6.45D"
  },
  {
    "reference" : "Observation/CTPachymetryRightEyeExample",
    "display" : "Pachymetry: thinnest 538um"
  },
  {
    "reference" : "Observation/CTAnteriorChamberRightEyeExample",
    "display" : "Anterior chamber: ACD 3.12mm"
  },
  {
    "reference" : "Observation/CTKeratoconusIndicesRightEyeExample",
    "display" : "Keratoconus indices: BAD-D 1.2, normal"
  },
  {
    "reference" : "Observation/CTDensitometryRightEyeExample",
    "display" : "Densitometry: total 15.9 GSU"
  }],
  "conclusion" : "No topographic or tomographic signs of ectasia. Regular corneal astigmatism of 1.4D. Suitable candidate for toric IOL calculation using the reported optimal axis."
}

```
