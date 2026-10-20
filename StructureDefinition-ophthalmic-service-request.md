# Ophthalmic Service Request - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ophthalmic Service Request**

## Resource Profile: Ophthalmic Service Request 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-service-request | *Version*:0.4.0 |
| Draft as of 2026-10-19 | *Computable Name*:OphthalmicServiceRequest |

 
A request for an ophthalmic examination and, where relevant, its interpretation or treatment. Covers three scenarios: an order fulfilled locally, an order referred from primary care to a hospital or reference center, and an order originating directly at a hospital. See the Use Cases and Profiles pages of this guide for the full clinical and design rationale. 

Represents a request for an ophthalmic examination and, where relevant, its interpretation or treatment. This single profile covers three scenarios seen in practice:

1. An order created and fulfilled at the same facility (for example, a primary care professional orders and performs the examination locally).
1. An order created at a primary care facility but referred to a hospital or reference center for analysis and/or treatment, as in[use case 6 (teleophthalmology)](usecases.md#use-case-6-teleophthalmology).
1. An order created directly at a hospital (secondary care) facility.

There is no equivalent profile in the HL7 Eye Care IG to align with; this profile is designed from the base FHIR `ServiceRequest` resource and this guide's own use cases.

### Design decisions

**A single generic profile.** Rather than defining separate profiles for each scenario, `OphthalmicServiceRequest` is one profile that covers all three. What differs between them is simply who is recorded as `requester`, `performer`, and where the order originated, not the structure of the resource itself.

**Timing.** For examinations that require acquiring an imaging study (as in [use case 2, group B](usecases.md#group-b-imaging-studies-with-report)), the request is created **before** the study exists: it requests both the acquisition and, where the request is referred elsewhere, its remote interpretation. The resulting [OphthalmicImagingStudy](StructureDefinition-ophthalmic-imaging-study.md) references this request via `ImagingStudy.basedOn`.

**Code.** `ServiceRequest.code` (`1..1`) identifies the specific examination being requested (for example OCT, retinography), not a generic "referral" or "remote interpretation" concept. It follows the same terminology strategy already defined for that examination in [Terminology](terminology.md) (SNOMED CT or LOINC, depending on the examination).

**Category.** `ServiceRequest.category` is `1..1`, fixed to SNOMED CT `394594003` (Ophthalmology). Unlike [OphthalmicDiagnosticReport](StructureDefinition-ophthalmic-diagnostic-report.md), no second "type" slice is used here.

**Requisition.** When a single medical order includes several examinations, each becomes its own `OphthalmicServiceRequest`; `requisition` is the shared identifier that groups them together as belonging to the same order.

**Roles.** `ServiceRequest.requester` (`1..1`) is the professional who initiates the request. `ServiceRequest.performer` is the professional expected to fulfill it (who may be the same professional, for a locally fulfilled order, or a different one at another facility, for a referred order). Both are kept as simple `Reference(Practitioner)`, rather than `Reference(PractitionerRole)`, since a single practitioner may hold roles at more than one facility and a simple practitioner reference avoids ambiguity about which role applies.

**Originating facility.** `ServiceRequest.locationReference` (`Reference(Location)`) is used to explicitly record the facility where the order originated. This is kept as a generic, internationally applicable field. The specific Chilean mechanism of referral and counter-referral ("referencia y contrarreferencia"), which governs how a request moves between facilities within Chile's public health network, is a national workflow concern and belongs in the FHIR4Eyes CL extension, not in this Core profile.

**Priority.** `ServiceRequest.priority` uses the standard FHIR value set (`routine | urgent | asap | stat`); no ophthalmology-specific extension is needed for this.

**Examples:** [OCT order](ServiceRequest-OCTServiceRequestExample.md), [OCT macula order](ServiceRequest-OCTMaculaServiceRequestExample.md), [OCT optic disc order](ServiceRequest-OCTOpticDiscServiceRequestExample.md), [Corneal tomography order](ServiceRequest-CornealTomographyServiceRequestExample.md)

**Usages:**

* Refer to this Profile: [Ophthalmic Care Plan](StructureDefinition-ophthalmic-care-plan.md), [Ophthalmic Diagnostic Report](StructureDefinition-ophthalmic-diagnostic-report.md), [Ophthalmic Encounter](StructureDefinition-ophthalmic-encounter.md), [Ophthalmic Imaging Study](StructureDefinition-ophthalmic-imaging-study.md) and [Ophthalmic Procedure](StructureDefinition-ophthalmic-procedure.md)
* Examples for this Profile: [ServiceRequest/CornealTomographyServiceRequestExample](ServiceRequest-CornealTomographyServiceRequestExample.md), [ServiceRequest/OCTMaculaServiceRequestExample](ServiceRequest-OCTMaculaServiceRequestExample.md), [ServiceRequest/OCTOpticDiscServiceRequestExample](ServiceRequest-OCTOpticDiscServiceRequestExample.md) and [ServiceRequest/OCTServiceRequestExample](ServiceRequest-OCTServiceRequestExample.md)
* CapabilityStatements using this Profile: [FHIR4Eyes Server Capability Statement](CapabilityStatement-FHIR4EyesCapabilityStatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir4eyes.core|current/StructureDefinition/StructureDefinition-ophthalmic-service-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ophthalmic-service-request.csv), [Excel](StructureDefinition-ophthalmic-service-request.xlsx), [Schematron](StructureDefinition-ophthalmic-service-request.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ophthalmic-service-request",
  "url" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-service-request",
  "version" : "0.4.0",
  "name" : "OphthalmicServiceRequest",
  "title" : "Ophthalmic Service Request",
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
  "description" : "A request for an ophthalmic examination and, where relevant, its\ninterpretation or treatment. Covers three scenarios: an order fulfilled locally, an order\nreferred from primary care to a hospital or reference center, and an order originating\ndirectly at a hospital. See the Use Cases and Profiles pages of this guide for the full\nclinical and design rationale.",
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
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
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
    "identity" : "quick",
    "uri" : "http://siframework.org/cqf",
    "name" : "Quality Improvement and Clinical Knowledge (QUICK)"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ServiceRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ServiceRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ServiceRequest",
      "path" : "ServiceRequest"
    },
    {
      "id" : "ServiceRequest.identifier",
      "path" : "ServiceRequest.identifier",
      "short" : "Order number associated with this request, if applicable",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.requisition",
      "path" : "ServiceRequest.requisition",
      "short" : "Shared identifier grouping several requests from the same order",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.status",
      "path" : "ServiceRequest.status",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.intent",
      "path" : "ServiceRequest.intent",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.category",
      "path" : "ServiceRequest.category",
      "min" : 1,
      "max" : "1",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "394594003",
          "display" : "Ophthalmology (qualifier value)"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.priority",
      "path" : "ServiceRequest.priority",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.code",
      "path" : "ServiceRequest.code",
      "short" : "The specific examination being requested",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.orderDetail",
      "path" : "ServiceRequest.orderDetail",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.subject",
      "path" : "ServiceRequest.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.encounter",
      "path" : "ServiceRequest.encounter",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.requester",
      "path" : "ServiceRequest.requester",
      "short" : "The professional who initiates the request",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Practitioner"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.performer",
      "path" : "ServiceRequest.performer",
      "short" : "The professional expected to fulfill the request",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Practitioner"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.locationReference",
      "path" : "ServiceRequest.locationReference",
      "short" : "The facility where the order originated",
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.insurance",
      "path" : "ServiceRequest.insurance",
      "short" : "Insurance/coverage relevant to this request, when applicable",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.note",
      "path" : "ServiceRequest.note",
      "mustSupport" : true
    }]
  }
}

```
