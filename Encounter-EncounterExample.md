# EncounterExample - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EncounterExample**

## Example Encounter: EncounterExample

Profile: [Ophthalmic Encounter](StructureDefinition-ophthalmic-encounter.md)

**status**: Finished

**class**: [ActCode: AMB](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB) (ambulatory)

**type**: Ophthalmology outpatient consultation

**serviceType**: Ophthalmology

**subject**: [Patient Example Female, DoB: 1990-01-01](Patient-PatientExample.md)

### Participants

| | |
| :--- | :--- |
| - | **Individual** |
| * | [Practitioner Ophthalmologist Example ](Practitioner-OphthalmologistExample.md) |

**period**: 2026-08-18 09:00:00+0000 --> 2026-08-18 09:30:00+0000

**reasonCode**: Follow-up for diabetic macular edema

### Diagnoses

| | |
| :--- | :--- |
| - | **Condition** |
| * | [Condition ](Condition-DiabeticMacularEdemaConditionExample.md) |



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "EncounterExample",
  "meta" : {
    "profile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-encounter"]
  },
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "AMB",
    "display" : "ambulatory"
  },
  "type" : [{
    "text" : "Ophthalmology outpatient consultation"
  }],
  "serviceType" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/service-type",
      "code" : "217",
      "display" : "Ophthalmology"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "participant" : [{
    "individual" : {
      "reference" : "Practitioner/OphthalmologistExample"
    }
  }],
  "period" : {
    "start" : "2026-08-18T09:00:00Z",
    "end" : "2026-08-18T09:30:00Z"
  },
  "reasonCode" : [{
    "text" : "Follow-up for diabetic macular edema"
  }],
  "diagnosis" : [{
    "condition" : {
      "reference" : "Condition/DiabeticMacularEdemaConditionExample"
    }
  }]
}

```
