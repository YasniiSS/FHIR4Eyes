# Ophthalmic Patient - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ophthalmic Patient**

## Resource Profile: Ophthalmic Patient 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-patient | *Version*:0.3.0 |
| Draft as of 2026-09-01 | *Computable Name*:OphthalmicPatient |

 
Represents a patient receiving eye care, extending the base Patient resource with identifier slices for the Chilean national identifier (RUT) and passport number, and requiring the core demographic elements (name, gender, birthDate) needed for clinical ophthalmic workflows such as scheduling, MWL/DICOM worklist generation, and reporting. 

**Usages:**

* Examples for this Profile: [Patient/PacienteEjemplo](Patient-PacienteEjemplo.md) and [Patient/PatientExample](Patient-PatientExample.md)
* CapabilityStatements using this Profile: [FHIR4Eyes Server Capability Statement](CapabilityStatement-FHIR4EyesCapabilityStatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir4eyes.core|current/StructureDefinition/StructureDefinition-ophthalmic-patient.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ophthalmic-patient.csv), [Excel](StructureDefinition-ophthalmic-patient.xlsx), [Schematron](StructureDefinition-ophthalmic-patient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ophthalmic-patient",
  "url" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-patient",
  "version" : "0.3.0",
  "name" : "OphthalmicPatient",
  "title" : "Ophthalmic Patient",
  "status" : "draft",
  "date" : "2026-09-01T17:43:23+00:00",
  "publisher" : "FHIR4Eyes Project",
  "contact" : [{
    "name" : "FHIR4Eyes Project",
    "telecom" : [{
      "system" : "url",
      "value" : "https://YasniiSS.github.io/fhir4eyes"
    }]
  },
  {
    "name" : "Yasna Soto",
    "telecom" : [{
      "system" : "url",
      "value" : "https://YasniiSS.github.io/fhir4eyes"
    }]
  }],
  "description" : "Represents a patient receiving eye care, extending the base Patient resource\nwith identifier slices for the Chilean national identifier (RUT) and passport number, and\nrequiring the core demographic elements (name, gender, birthDate) needed for clinical\nophthalmic workflows such as scheduling, MWL/DICOM worklist generation, and reporting.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001",
      "display" : "World"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "loinc",
    "uri" : "http://loinc.org",
    "name" : "LOINC code for the element"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient",
      "path" : "Patient"
    },
    {
      "id" : "Patient.identifier",
      "path" : "Patient.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:rut",
      "path" : "Patient.identifier",
      "sliceName" : "rut",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:rut.system",
      "path" : "Patient.identifier.system",
      "short" : "Fixed to the Chilean Servicio de Registro Civil e Identificación RUT namespace",
      "min" : 1,
      "patternUri" : "https://www.registrocivil.cl/rut"
    },
    {
      "id" : "Patient.identifier:rut.value",
      "path" : "Patient.identifier.value",
      "short" : "The patient's Chilean RUT (Rol Único Tributario), e.g. 12345678-9",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:passport",
      "path" : "Patient.identifier",
      "sliceName" : "passport",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:passport.type",
      "path" : "Patient.identifier.type",
      "short" : "Fixed to the Passport number identifier type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
          "code" : "PPN",
          "display" : "Passport number"
        }]
      }
    },
    {
      "id" : "Patient.identifier:passport.value",
      "path" : "Patient.identifier.value",
      "short" : "The patient's passport number, used when a Chilean RUT is not available (e.g. foreign patients)",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.name",
      "path" : "Patient.name",
      "short" : "The patient's full name, required for identification in clinical and imaging workflows",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.telecom",
      "path" : "Patient.telecom",
      "short" : "Contact information (phone, email) for the patient",
      "mustSupport" : true
    },
    {
      "id" : "Patient.gender",
      "path" : "Patient.gender",
      "short" : "Administrative gender, required for demographic and reporting purposes",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.birthDate",
      "path" : "Patient.birthDate",
      "short" : "The patient's date of birth, required for age-based clinical calculations (e.g. IOL formulas, paediatric norms)",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.address",
      "path" : "Patient.address",
      "short" : "The patient's address(es)",
      "mustSupport" : true
    }]
  }
}

```
