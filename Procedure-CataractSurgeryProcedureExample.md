# CataractSurgeryProcedureExample - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CataractSurgeryProcedureExample**

## Example Procedure: CataractSurgeryProcedureExample

Profile: [Ophthalmic Procedure](StructureDefinition-ophthalmic-procedure.md)

**status**: Completed

**code**: Cataract extraction with intraocular lens implant

**subject**: [Patient Example Female, DoB: 1990-01-01](Patient-PatientExample.md)

**performed**: 2026-07-01 09:00:00+0000

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Practitioner Ophthalmologist Example ](Practitioner-OphthalmologistExample.md) |

**bodySite**: 

**outcome**: Successful, uneventful phacoemulsification with IOL implantation

### FocalDevices

| | |
| :--- | :--- |
| - | **Manipulated** |
| * | [Device: identifier = LIO-2026-00123; manufacturer = Alcon; lotNumber = LOT-A123; type = ](Device-IntraocularLensExample.md) |



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "CataractSurgeryProcedureExample",
  "meta" : {
    "profile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-procedure"]
  },
  "status" : "completed",
  "code" : {
    "text" : "Cataract extraction with intraocular lens implant"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "performedDateTime" : "2026-07-01T09:00:00Z",
  "performer" : [{
    "actor" : {
      "reference" : "Practitioner/OphthalmologistExample"
    }
  }],
  "bodySite" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/bodySite",
      "valueReference" : {
        "reference" : "BodyStructure/RightEyeStructureExample"
      }
    }]
  }],
  "outcome" : {
    "text" : "Successful, uneventful phacoemulsification with IOL implantation"
  },
  "focalDevice" : [{
    "manipulated" : {
      "reference" : "Device/IntraocularLensExample"
    }
  }]
}

```
