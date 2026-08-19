# OCTProcedureExample - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OCTProcedureExample**

## Example Procedure: OCTProcedureExample

Profile: [Ophthalmic Procedure](StructureDefinition-ophthalmic-procedure.md)

**status**: Completed

**code**: Optical coherence tomography

**subject**: [Patient Example Female, DoB: 1990-01-01](Patient-PatientExample.md)

**performed**: 2026-08-18 10:00:00+0000

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Practitioner Ophthalmologist Example ](Practitioner-OphthalmologistExample.md) |

**bodySite**: 

**report**: [Diagnostic Report for '' for '->Patient Example Female, DoB: 1990-01-01'](DiagnosticReport-OCTDiagnosticReportExample.md)



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "OCTProcedureExample",
  "meta" : {
    "profile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-procedure"]
  },
  "status" : "completed",
  "code" : {
    "text" : "Optical coherence tomography"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "performedDateTime" : "2026-08-18T10:00:00Z",
  "performer" : [{
    "actor" : {
      "reference" : "Practitioner/OphthalmologistExample"
    }
  }],
  "bodySite" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/bodySite",
      "valueReference" : {
        "reference" : "BodyStructure/LeftEyeStructureExample"
      }
    }]
  }],
  "report" : [{
    "reference" : "DiagnosticReport/OCTDiagnosticReportExample"
  }]
}

```
