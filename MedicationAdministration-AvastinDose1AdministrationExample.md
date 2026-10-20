# Bevacizumab administration: dose 1 - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bevacizumab administration: dose 1**

## Example MedicationAdministration: Bevacizumab administration: dose 1

Profile: [Ophthalmic Medication Administration](StructureDefinition-ophthalmic-medication-administration.md)

**partOf**: [Procedure ](Procedure-IntravitrealInjectionProcedureExample.md)

**status**: Completed

**medication**: [Medication ](Medication-AvastinMedicationExample.md)

**subject**: [Patient Example Female, DoB: 1990-01-01 ( Passport number: PA1234567)](Patient-PatientExample.md)

**effective**: 2026-08-18 09:00:00+0000

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Practitioner Ophthalmologist Example ](Practitioner-OphthalmologistExample.md) |

**note**: 

> 

Primera dosis del esquema de inyecciones de Avastin


### Dosages

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Extension** | **Route** | **Dose** |
| * |  | Intravitreal | 1.25 mg (Details: UCUM codemg = 'mg') |



## Resource Content

```json
{
  "resourceType" : "MedicationAdministration",
  "id" : "AvastinDose1AdministrationExample",
  "meta" : {
    "profile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-medication-administration"]
  },
  "partOf" : [{
    "reference" : "Procedure/IntravitrealInjectionProcedureExample"
  }],
  "status" : "completed",
  "medicationReference" : {
    "reference" : "Medication/AvastinMedicationExample"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "effectiveDateTime" : "2026-08-18T09:00:00Z",
  "performer" : [{
    "actor" : {
      "reference" : "Practitioner/OphthalmologistExample"
    }
  }],
  "note" : [{
    "text" : "Primera dosis del esquema de inyecciones de Avastin"
  }],
  "dosage" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/bodySite",
      "valueReference" : {
        "reference" : "BodyStructure/LeftEyeStructureExample"
      }
    }],
    "route" : {
      "text" : "Intravitreal"
    },
    "dose" : {
      "value" : 1.25,
      "system" : "http://unitsofmeasure.org",
      "code" : "mg"
    }
  }
}

```
