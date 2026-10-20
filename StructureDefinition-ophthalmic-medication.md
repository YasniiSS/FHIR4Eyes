# Ophthalmic Medication - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ophthalmic Medication**

## Resource Profile: Ophthalmic Medication 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-medication | *Version*:0.4.0 |
| Draft as of 2026-10-19 | *Computable Name*:OphthalmicMedication |

 
A medication used in ophthalmology, such as an anti-VEGF agent for intravitreal injection. 

Represents a medication used in ophthalmology, such as an anti-VEGF agent for intravitreal injection. `code` is required, and so is `batch`, with both `batch.lotNumber` and `batch.expirationDate` required (`1..1`); `form` and `manufacturer` are Must Support but optional. It is referenced from [OphthalmicMedicationAdministration](StructureDefinition-ophthalmic-medication-administration.md) via `medication[x]`.

**Examples:** [Bevacizumab (Avastin)](Medication-AvastinMedicationExample.md)

**Usages:**

* Refer to this Profile: [Ophthalmic Medication Administration](StructureDefinition-ophthalmic-medication-administration.md)
* Examples for this Profile: [Medication/AvastinMedicationExample](Medication-AvastinMedicationExample.md)
* CapabilityStatements using this Profile: [FHIR4Eyes Server Capability Statement](CapabilityStatement-FHIR4EyesCapabilityStatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir4eyes.core|current/StructureDefinition/StructureDefinition-ophthalmic-medication.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ophthalmic-medication.csv), [Excel](StructureDefinition-ophthalmic-medication.xlsx), [Schematron](StructureDefinition-ophthalmic-medication.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ophthalmic-medication",
  "url" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-medication",
  "version" : "0.4.0",
  "name" : "OphthalmicMedication",
  "title" : "Ophthalmic Medication",
  "status" : "draft",
  "date" : "2026-10-19T22:17:00-03:00",
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
  "description" : "A medication used in ophthalmology, such as an anti-VEGF agent for\r\nintravitreal injection.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001",
      "display" : "World"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "script10.6",
    "uri" : "http://ncpdp.org/SCRIPT10_6",
    "name" : "Mapping to NCPDP SCRIPT 10.6"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Medication",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Medication",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Medication",
      "path" : "Medication"
    },
    {
      "id" : "Medication.code",
      "path" : "Medication.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.manufacturer",
      "path" : "Medication.manufacturer",
      "mustSupport" : true
    },
    {
      "id" : "Medication.form",
      "path" : "Medication.form",
      "mustSupport" : true
    },
    {
      "id" : "Medication.batch",
      "path" : "Medication.batch",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.batch.lotNumber",
      "path" : "Medication.batch.lotNumber",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.batch.expirationDate",
      "path" : "Medication.batch.expirationDate",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
