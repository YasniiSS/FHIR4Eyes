# Ophthalmic Service Request - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ophthalmic Service Request**

## Resource Profile: Ophthalmic Service Request 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-service-request | *Version*:0.1.0 |
| Draft as of 2026-08-19 | *Computable Name*:OphthalmicServiceRequest |

 
A request for an ophthalmic examination and, where relevant, its interpretation or treatment. Covers three scenarios: an order fulfilled locally, an order referred from primary care to a hospital or reference center, and an order originating directly at a hospital. See the Use Cases and Profiles pages of this guide for the full clinical and design rationale. 

**Usages:**

* Refer to this Profile: [Ophthalmic Care Plan](StructureDefinition-ophthalmic-care-plan.md), [Ophthalmic Diagnostic Report](StructureDefinition-ophthalmic-diagnostic-report.md), [Ophthalmic Encounter](StructureDefinition-ophthalmic-encounter.md) and [Ophthalmic Imaging Study](StructureDefinition-ophthalmic-imaging-study.md)
* Examples for this Profile: [ServiceRequest/OCTMaculaServiceRequestExample](ServiceRequest-OCTMaculaServiceRequestExample.md), [ServiceRequest/OCTOpticDiscServiceRequestExample](ServiceRequest-OCTOpticDiscServiceRequestExample.md) and [ServiceRequest/OCTServiceRequestExample](ServiceRequest-OCTServiceRequestExample.md)

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
  "version" : "0.1.0",
  "name" : "OphthalmicServiceRequest",
  "title" : "Ophthalmic Service Request",
  "status" : "draft",
  "date" : "2026-08-19T17:13:42+00:00",
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
