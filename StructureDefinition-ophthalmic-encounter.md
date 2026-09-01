# Ophthalmic Encounter - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ophthalmic Encounter**

## Resource Profile: Ophthalmic Encounter 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-encounter | *Version*:0.3.0 |
| Draft as of 2026-09-01 | *Computable Name*:OphthalmicEncounter |

 
An ambulatory ophthalmology consultation encounter. Parented on the generic FHIR Encounter, not the Chilean core Encounter profile (EncounterCL); the Chilean dependency belongs in the FHIR4Eyes CL extension, not this Core guide. 

**Usages:**

* Refer to this Profile: [Corneal Tomography - Anterior Chamber](StructureDefinition-ct-anterior-chamber.md), [Corneal Tomography - Anterior Surface](StructureDefinition-ct-anterior-surface.md), [Corneal Tomography - Densitometry](StructureDefinition-ct-densitometry.md), [Corneal Tomography - Keratoconus Indices](StructureDefinition-ct-keratoconus-indices.md)... Show 8 more, [Corneal Tomography - Pachymetry](StructureDefinition-ct-pachymetry.md), [Corneal Tomography - Posterior Surface](StructureDefinition-ct-posterior-surface.md), [IOL Formula Result](StructureDefinition-iol-formula-result.md), [Ophthalmic Humphrey Visual Field](StructureDefinition-ophthalmic-humphrey-visual-field.md), [Ophthalmic OCT Macula](StructureDefinition-ophthalmic-oct-macula.md), [Ophthalmic OCT RNFL](StructureDefinition-ophthalmic-oct-rnfl.md), [Ophthalmic Ocular Biometry](StructureDefinition-ophthalmic-ocular-biometry.md) and [Ophthalmic Specular Microscopy](StructureDefinition-ophthalmic-specular-microscopy.md)
* Examples for this Profile: [Encounter/EncounterExample](Encounter-EncounterExample.md)
* CapabilityStatements using this Profile: [FHIR4Eyes Server Capability Statement](CapabilityStatement-FHIR4EyesCapabilityStatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir4eyes.core|current/StructureDefinition/StructureDefinition-ophthalmic-encounter.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ophthalmic-encounter.csv), [Excel](StructureDefinition-ophthalmic-encounter.xlsx), [Schematron](StructureDefinition-ophthalmic-encounter.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ophthalmic-encounter",
  "url" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-encounter",
  "version" : "0.3.0",
  "name" : "OphthalmicEncounter",
  "title" : "Ophthalmic Encounter",
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
  "description" : "An ambulatory ophthalmology consultation encounter. Parented on the generic\r\nFHIR Encounter, not the Chilean core Encounter profile (EncounterCL); the Chilean\r\ndependency belongs in the FHIR4Eyes CL extension, not this Core guide.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001",
      "display" : "World"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
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
  "type" : "Encounter",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Encounter",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Encounter",
      "path" : "Encounter"
    },
    {
      "id" : "Encounter.identifier",
      "path" : "Encounter.identifier",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.status",
      "path" : "Encounter.status",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.class",
      "path" : "Encounter.class",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.type",
      "path" : "Encounter.type",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Encounter.serviceType",
      "path" : "Encounter.serviceType",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/service-type",
          "code" : "217",
          "display" : "Ophthalmology"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Encounter.priority",
      "path" : "Encounter.priority",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.subject",
      "path" : "Encounter.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.episodeOfCare",
      "path" : "Encounter.episodeOfCare",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.basedOn",
      "path" : "Encounter.basedOn",
      "short" : "The order that led to this encounter, when applicable",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-service-request"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.participant",
      "path" : "Encounter.participant",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Encounter.participant.type",
      "path" : "Encounter.participant.type",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.participant.individual",
      "path" : "Encounter.participant.individual",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Practitioner"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.appointment",
      "path" : "Encounter.appointment",
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.period",
      "path" : "Encounter.period",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.length",
      "path" : "Encounter.length",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.reasonCode",
      "path" : "Encounter.reasonCode",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.diagnosis",
      "path" : "Encounter.diagnosis",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.diagnosis.condition",
      "path" : "Encounter.diagnosis.condition",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-condition"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.location",
      "path" : "Encounter.location",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.serviceProvider",
      "path" : "Encounter.serviceProvider",
      "mustSupport" : true
    }]
  }
}

```
