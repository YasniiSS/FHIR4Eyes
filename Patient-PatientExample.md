# PatientExample - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PatientExample**

## Example Patient: PatientExample

Profile: [Ophthalmic Patient](StructureDefinition-ophthalmic-patient.md)

Patient Example Female, DoB: 1990-01-01 ( PA1234567)

-------

| | |
| :--- | :--- |
| Contact Detail | * [+56912345678](tel:+56912345678)
* 123 Example Street Santiago CL 
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
    "value" : "PA1234567"
  }],
  "name" : [{
    "family" : "Example",
    "given" : ["Patient"]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "+56912345678"
  }],
  "gender" : "female",
  "birthDate" : "1990-01-01",
  "address" : [{
    "line" : ["123 Example Street"],
    "city" : "Santiago",
    "country" : "CL"
  }]
}

```
