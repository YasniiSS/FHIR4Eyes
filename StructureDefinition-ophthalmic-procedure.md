# Ophthalmic Procedure - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ophthalmic Procedure**

## Resource Profile: Ophthalmic Procedure 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-procedure | *Version*:0.4.0 |
| Draft as of 2026-10-20 | *Computable Name*:OphthalmicProcedure |

 
Any ophthalmic procedure, from minor ambulatory surgeries to individual sessions within a longer treatment scheme, such as an intravitreal injection or a vision therapy session. When a procedure involves administering a medication (e.g. an intravitreal injection), the medication administration is recorded as a separate OphthalmicMedicationAdministration, linked back to this procedure via MedicationAdministration.partOf, not the other way around. 

Represents any ophthalmic procedure, from minor ambulatory surgeries to individual sessions within a longer treatment scheme, such as an intravitreal injection or a vision therapy session. This profile was already defined in an earlier version of this guide's design work and is carried forward here.

### Design decisions

**Code.** `Procedure.code` follows the terminology strategy already defined in [Terminology](terminology.md): SNOMED CT descendants of `371548008` (Procedure on eye region) and `371560009` (Procedure on visual system), with CPT as a fallback for codes not covered by SNOMED CT.

**Laterality.** `Procedure.bodySite` is `0..*` and optional, using the standard FHIR `bodySite` extension to reference an [OcularBodyStructure](StructureDefinition-ocular-body-structure.md). It is optional because not every ophthalmic procedure is inherently lateral.

**Implantable devices.** `Procedure.focalDevice.manipulated` is used to reference an implanted [OphthalmicDevice](StructureDefinition-ophthalmic-device.md) (for example, an intraocular lens), as established in [use case 5 (cataract surgery)](usecases.md#use-case-5-cataract-surgery-with-intraocular-lens-implantation). The `OphthalmicDevice` represents the specific unit already implanted, and also records the patient it is affixed to (see its own page).

**Linking to a treatment scheme or order.** When a procedure is one session within a longer scheme (for example, one dose of an intravitreal injection treatment, or one vision therapy session), it references the relevant [OphthalmicCarePlan](StructureDefinition-ophthalmic-care-plan.md) via `Procedure.basedOn`, as established in [use case 4](usecases.md#intravitreal-injection-treatment) and [use case 3](usecases.md#use-case-3-vision-therapy-and-rehabilitation). When the procedure was ordered as an examination, `basedOn` references the [OphthalmicServiceRequest](StructureDefinition-ophthalmic-service-request.md) that led to it instead.

**Medication administered during a procedure.** When a procedure involves administering a medication (for example, an intravitreal injection), the administration is recorded as a separate [OphthalmicMedicationAdministration](StructureDefinition-ophthalmic-medication-administration.md), linked back to this procedure via `MedicationAdministration.partOf`, not the other way around.

**Report.** `Procedure.report` may reference the [OphthalmicDiagnosticReport](StructureDefinition-ophthalmic-diagnostic-report.md) generated from the procedure, when applicable.

**Examples:** [Cataract surgery with IOL implantation](Procedure-CataractSurgeryProcedureExample.md), [Intravitreal injection procedure](Procedure-IntravitrealInjectionProcedureExample.md), [OCT procedure](Procedure-OCTProcedureExample.md)

**Usages:**

* Refer to this Profile: [Ophthalmic Medication Administration](StructureDefinition-ophthalmic-medication-administration.md)
* Examples for this Profile: [Procedure/CataractSurgeryProcedureExample](Procedure-CataractSurgeryProcedureExample.md), [Procedure/IntravitrealInjectionProcedureExample](Procedure-IntravitrealInjectionProcedureExample.md) and [Procedure/OCTProcedureExample](Procedure-OCTProcedureExample.md)
* CapabilityStatements using this Profile: [FHIR4Eyes Server Capability Statement](CapabilityStatement-FHIR4EyesCapabilityStatement.md)

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
  "version" : "0.4.0",
  "name" : "OphthalmicProcedure",
  "title" : "Ophthalmic Procedure",
  "status" : "draft",
  "date" : "2026-10-20T20:13:11-03:00",
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
      "short" : "The treatment scheme or medical order this procedure is part of, when applicable",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-care-plan",
        "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-service-request"]
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
        "profile" : ["http://hl7.org/fhir/StructureDefinition/bodySite|5.3.0"]
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
