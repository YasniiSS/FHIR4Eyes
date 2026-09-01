# PacienteEjemplo - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PacienteEjemplo**

## Example Patient: PacienteEjemplo

Profile: [Ophthalmic Patient](StructureDefinition-ophthalmic-patient.md)

Paciente Ejemplo Female, DoB: 1990-01-01 ( https://www.registrocivil.cl/rut#12345678-9)

-------

| | |
| :--- | :--- |
| Contact Detail | * [paciente.ejemplo@example.cl](mailto:paciente.ejemplo@example.cl)
* Calle Ejemplo 123 Santiago CL 
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "PacienteEjemplo",
  "meta" : {
    "profile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-patient"]
  },
  "identifier" : [{
    "system" : "https://www.registrocivil.cl/rut",
    "value" : "12345678-9"
  }],
  "name" : [{
    "family" : "Ejemplo",
    "given" : ["Paciente"]
  }],
  "telecom" : [{
    "system" : "email",
    "value" : "paciente.ejemplo@example.cl"
  }],
  "gender" : "female",
  "birthDate" : "1990-01-01",
  "address" : [{
    "line" : ["Calle Ejemplo 123"],
    "city" : "Santiago",
    "country" : "CL"
  }]
}

```
