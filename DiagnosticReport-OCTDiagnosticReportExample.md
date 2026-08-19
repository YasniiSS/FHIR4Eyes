# OCTDiagnosticReportExample - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OCTDiagnosticReportExample**

## Example DiagnosticReport: OCTDiagnosticReportExample

Profile: [Ophthalmic Diagnostic Report](StructureDefinition-ophthalmic-diagnostic-report.md)

## OCT RNFL and macula report, both eyes (Ophthalmology (qualifier value), Diagnostic Imaging) 

| | |
| :--- | :--- |
| Subject | Patient Example Female, DoB: 1990-01-01 |
| Relevant Time | 2018-02-06 09:15:00+0000 |
| Performer | [Practitioner Ophthalmologist Example ](Practitioner-OphthalmologistExample.md) |

**Report Details**

* **Code**: [OCT RNFL analysis](Observation-OCTRNFLRightEyeExample.md)()
  * **Value**: 
  * **Flags**: Final
  * **Note**: > Reference database: European Descent (2009). Valid for Caucasian eyes only.
* **Code**: [OCT RNFL analysis](Observation-OCTRNFLLeftEyeExample.md)()
  * **Value**: 
  * **Flags**: Final
  * **Note**: > Reference database: European Descent (2009). Valid for Caucasian eyes only.
* **Code**: [OCT macula analysis](Observation-OCTMaculaRightEyeExample.md)()
  * **Value**: 
  * **Flags**: Final
  * **Note**: > Central minimum 179 um, central maximum 253 um. Circle diameters 1, 3, 6 mm ETDRS. Device: Heidelberg Spectralis SPIRIT tracking laser tomography.
* **Code**: [OCT macula analysis](Observation-OCTMaculaLeftEyeExample2.md)()
  * **Value**: 
  * **Flags**: Final
  * **Note**: > Central minimum 189 um, central maximum 244 um. Circle diameters 1, 3, 6 mm ETDRS. Device: Heidelberg Spectralis SPIRIT tracking laser tomography.

Right eye RNFL borderline, left eye RNFL outside normal limits, consistent with asymmetric glaucomatous damage. Macular thickness within expected range bilaterally, no evidence of macular edema.



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "OCTDiagnosticReportExample",
  "meta" : {
    "profile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-diagnostic-report"]
  },
  "basedOn" : [{
    "reference" : "ServiceRequest/OCTServiceRequestExample"
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
    "text" : "OCT RNFL and macula report, both eyes"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "effectiveDateTime" : "2018-02-06T09:15:00Z",
  "performer" : [{
    "reference" : "Practitioner/OphthalmologistExample"
  }],
  "resultsInterpreter" : [{
    "reference" : "Practitioner/OphthalmologistExample"
  }],
  "result" : [{
    "reference" : "Observation/OCTRNFLRightEyeExample",
    "display" : "RNFL analysis, right eye - Borderline"
  },
  {
    "reference" : "Observation/OCTRNFLLeftEyeExample",
    "display" : "RNFL analysis, left eye - Outside Normal Limits"
  },
  {
    "reference" : "Observation/OCTMaculaRightEyeExample",
    "display" : "Macula analysis, right eye - center 285 um"
  },
  {
    "reference" : "Observation/OCTMaculaLeftEyeExample2",
    "display" : "Macula analysis, left eye - center 271 um"
  }],
  "imagingStudy" : [{
    "reference" : "ImagingStudy/OCTStudyRightEyeExample",
    "display" : "OCT study, right eye"
  },
  {
    "reference" : "ImagingStudy/OCTStudyLeftEyeExample",
    "display" : "OCT study, left eye"
  }],
  "conclusion" : "Right eye RNFL borderline, left eye RNFL outside normal limits, consistent with asymmetric glaucomatous damage. Macular thickness within expected range bilaterally, no evidence of macular edema."
}

```
