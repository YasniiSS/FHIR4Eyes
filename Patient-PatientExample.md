# Patient (international identifier) - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient (international identifier)**

## Example Patient: Patient (international identifier)

Profile: [Ophthalmic Patient](StructureDefinition-ophthalmic-patient.md)

Patient Example Female, DoB: 1990-01-01 ( Passport number: PA1234567)

-------

| | |
| :--- | :--- |
| Contact Detail | * [+1 555 0100](tel:+15550100)
* 123 Example Street Exampleville 
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "PatientExample",
  "meta" : {
    "profile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-patient"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "PPN",
        "display" : "Passport number"
      }]
    },
    "value" : "PA1234567"
  }],
  "name" : [{
    "family" : "Example",
    "given" : ["Patient"]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "+1 555 0100"
  }],
  "gender" : "female",
  "birthDate" : "1990-01-01",
  "address" : [{
    "line" : ["123 Example Street"],
    "city" : "Exampleville"
  }]
}

```
