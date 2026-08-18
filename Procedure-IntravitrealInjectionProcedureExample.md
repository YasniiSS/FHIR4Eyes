# IntravitrealInjectionProcedureExample - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IntravitrealInjectionProcedureExample**

## Example Procedure: IntravitrealInjectionProcedureExample

Profile: [Ophthalmic Procedure](StructureDefinition-ophthalmic-procedure.md)

**basedOn**: [CarePlan Avastin injection scheme - left eye](CarePlan-AvastinInjectionCarePlanExample.md)

**status**: Completed

**code**: Intravitreal injection

**subject**: [Patient Example Female, DoB: 1990-01-01](Patient-PatientExample.md)

**performed**: 2026-08-18 09:00:00+0000

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Practitioner Ophthalmologist Example ](Practitioner-OphthalmologistExample.md) |

**bodySite**: 

**outcome**: First dose administered without complications



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "IntravitrealInjectionProcedureExample",
  "meta" : {
    "profile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-procedure"]
  },
  "basedOn" : [{
    "reference" : "CarePlan/AvastinInjectionCarePlanExample"
  }],
  "status" : "completed",
  "code" : {
    "text" : "Intravitreal injection"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "performedDateTime" : "2026-08-18T09:00:00Z",
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
  "outcome" : {
    "text" : "First dose administered without complications"
  }
}

```
