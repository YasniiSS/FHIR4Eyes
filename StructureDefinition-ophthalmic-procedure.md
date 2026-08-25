# Ophthalmic Procedure - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ophthalmic Procedure**

## Resource Profile: Ophthalmic Procedure 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-procedure | *Version*:0.2.0 |
| Draft as of 2026-08-25 | *Computable Name*:OphthalmicProcedure |

 
Any ophthalmic procedure, from minor ambulatory surgeries to individual sessions within a longer treatment scheme, such as an intravitreal injection or a vision therapy session. When a procedure involves administering a medication (e.g. an intravitreal injection), the medication administration is recorded as a separate OphthalmicMedicationAdministration, linked back to this procedure via MedicationAdministration.partOf, not the other way around. 

**Usages:**

* Refer to this Profile: [Ophthalmic Medication Administration](StructureDefinition-ophthalmic-medication-administration.md)
* Examples for this Profile: [Procedure/CataractSurgeryProcedureExample](Procedure-CataractSurgeryProcedureExample.md), [Procedure/IntravitrealInjectionProcedureExample](Procedure-IntravitrealInjectionProcedureExample.md) and [Procedure/OCTProcedureExample](Procedure-OCTProcedureExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir4eyes.core|current/StructureDefinition/StructureDefinition-ophthalmic-procedure.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ophthalmic-procedure.csv), [Excel](StructureDefinition-ophthalmic-procedure.xlsx), [Schematron](StructureDefinition-ophthalmic-procedure.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ophthalmic-procedure",
  "url" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-procedure",
  "version" : "0.2.0",
  "name" : "OphthalmicProcedure",
  "title" : "Ophthalmic Procedure",
  "status" : "draft",
  "date" : "2026-08-25T00:41:24+00:00",
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
  "description" : "Any ophthalmic procedure, from minor ambulatory surgeries to individual\nsessions within a longer treatment scheme, such as an intravitreal injection or a vision\ntherapy session. When a procedure involves administering a medication (e.g. an intravitreal\ninjection), the medication administration is recorded as a separate\nOphthalmicMedicationAdministration, linked back to this procedure via\nMedicationAdministration.partOf, not the other way around.",
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
  "type" : "Procedure",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Procedure",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Procedure",
      "path" : "Procedure"
    },
    {
      "id" : "Procedure.identifier",
      "path" : "Procedure.identifier",
      "short" : "External identifier for this procedure, if applicable",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.basedOn",
      "path" : "Procedure.basedOn",
      "short" : "The treatment scheme this procedure is part of, when applicable",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-care-plan"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.status",
      "path" : "Procedure.status",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.statusReason",
      "path" : "Procedure.statusReason",
      "short" : "Reason for the current status, especially relevant if cancelled or stopped",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.category",
      "path" : "Procedure.category",
      "short" : "Broad classification of the procedure",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.code",
      "path" : "Procedure.code",
      "short" : "The ophthalmic procedure performed",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Procedure.subject",
      "path" : "Procedure.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.encounter",
      "path" : "Procedure.encounter",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.performed[x]",
      "path" : "Procedure.performed[x]",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.performer",
      "path" : "Procedure.performer",
      "short" : "Who performed the procedure",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.reasonCode",
      "path" : "Procedure.reasonCode",
      "short" : "The clinical indication or diagnosis that justified this procedure",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.bodySite",
      "path" : "Procedure.bodySite",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.bodySite.extension:bodySiteEye",
      "path" : "Procedure.bodySite.extension",
      "sliceName" : "bodySiteEye",
      "short" : "Laterality of the procedure, via BodyStructure",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/bodySite"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.bodySite.extension:bodySiteEye.value[x]",
      "path" : "Procedure.bodySite.extension.value[x]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ocular-body-structure"]
      }]
    },
    {
      "id" : "Procedure.outcome",
      "path" : "Procedure.outcome",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.report",
      "path" : "Procedure.report",
      "short" : "The diagnostic report generated from this procedure, when applicable",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-diagnostic-report"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.complication",
      "path" : "Procedure.complication",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.followUp",
      "path" : "Procedure.followUp",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.note",
      "path" : "Procedure.note",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.focalDevice",
      "path" : "Procedure.focalDevice",
      "short" : "The implanted device, when this procedure involves one (e.g. IOL implantation)",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.focalDevice.manipulated",
      "path" : "Procedure.focalDevice.manipulated",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-device"]
      }]
    },
    {
      "id" : "Procedure.usedCode",
      "path" : "Procedure.usedCode",
      "short" : "Codes for materials/consumables used during the procedure (e.g. suture type, viscoelastic)",
      "mustSupport" : true
    }]
  }
}

```
