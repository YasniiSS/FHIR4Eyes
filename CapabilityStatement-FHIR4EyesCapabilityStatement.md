# FHIR4Eyes Server Capability Statement - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FHIR4Eyes Server Capability Statement**

## CapabilityStatement: FHIR4Eyes Server Capability Statement (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/CapabilityStatement/fhir4eyes-server | *Version*:0.3.0 |
| Draft as of 2026-09-01 | *Computable Name*:FHIR4EyesServer |

 
Capability Statement for a FHIR4Eyes conformant server supporting ophthalmic clinical data exchange 

 [Raw OpenAPI-Swagger Definition file](FHIR4EyesCapabilityStatement.openapi.json) | [Download](FHIR4EyesCapabilityStatement.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "FHIR4EyesCapabilityStatement",
  "url" : "https://YasniiSS.github.io/fhir4eyes/CapabilityStatement/fhir4eyes-server",
  "version" : "0.3.0",
  "name" : "FHIR4EyesServer",
  "title" : "FHIR4Eyes Server Capability Statement",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-09-01",
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
  "description" : "Capability Statement for a FHIR4Eyes conformant server supporting ophthalmic clinical data exchange",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001",
      "display" : "World"
    }]
  }],
  "kind" : "requirements",
  "fhirVersion" : "4.0.1",
  "format" : ["json", "xml"],
  "rest" : [{
    "mode" : "server",
    "documentation" : "A conformant FHIR4Eyes server SHALL support read, search-type, create and update interactions for the resource types and profiles listed below, and SHALL support the listed search parameters at a minimum.",
    "resource" : [{
      "type" : "Patient",
      "supportedProfile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-patient"],
      "documentation" : "Patient demographics with Chilean RUT and passport identifier slices.",
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "search-type"
      },
      {
        "code" : "create"
      },
      {
        "code" : "update"
      }],
      "searchParam" : [{
        "name" : "identifier",
        "type" : "token"
      },
      {
        "name" : "name",
        "type" : "string"
      },
      {
        "name" : "birthdate",
        "type" : "date"
      }]
    },
    {
      "type" : "Encounter",
      "supportedProfile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-encounter"],
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "search-type"
      },
      {
        "code" : "create"
      },
      {
        "code" : "update"
      }],
      "searchParam" : [{
        "name" : "patient",
        "type" : "reference"
      },
      {
        "name" : "date",
        "type" : "date"
      },
      {
        "name" : "status",
        "type" : "token"
      }]
    },
    {
      "type" : "Observation",
      "supportedProfile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-visual-acuity",
      "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/intraocular-pressure",
      "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/corrected-intraocular-pressure",
      "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/pachymetry",
      "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/tension-curve",
      "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-oct-macula",
      "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-oct-rnfl",
      "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-humphrey-visual-field",
      "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-specular-microscopy",
      "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-ocular-biometry",
      "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/iol-formula-result",
      "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ct-anterior-surface",
      "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ct-posterior-surface",
      "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ct-pachymetry",
      "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ct-anterior-chamber",
      "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ct-keratoconus-indices",
      "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ct-densitometry",
      "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/strabismus-exam",
      "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/cover-test",
      "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ocular-motility",
      "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/near-point-of-convergence",
      "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/convergence-assessment",
      "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/prism-cover-test",
      "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/krimsky-test",
      "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/hirschberg-test",
      "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/red-filter-light-test",
      "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/worth-4-dot-test",
      "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/stereopsis-test",
      "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/gaze-position-measurement"],
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "search-type"
      },
      {
        "code" : "create"
      },
      {
        "code" : "update"
      }],
      "searchParam" : [{
        "name" : "patient",
        "type" : "reference"
      },
      {
        "name" : "date",
        "type" : "date"
      },
      {
        "name" : "code",
        "type" : "token"
      },
      {
        "name" : "category",
        "type" : "token"
      },
      {
        "name" : "encounter",
        "type" : "reference"
      },
      {
        "name" : "status",
        "type" : "token"
      }]
    },
    {
      "type" : "Condition",
      "supportedProfile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-condition"],
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "search-type"
      },
      {
        "code" : "create"
      },
      {
        "code" : "update"
      }],
      "searchParam" : [{
        "name" : "patient",
        "type" : "reference"
      },
      {
        "name" : "code",
        "type" : "token"
      },
      {
        "name" : "encounter",
        "type" : "reference"
      },
      {
        "name" : "clinical-status",
        "type" : "token"
      }]
    },
    {
      "type" : "Procedure",
      "supportedProfile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-procedure"],
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "search-type"
      },
      {
        "code" : "create"
      },
      {
        "code" : "update"
      }],
      "searchParam" : [{
        "name" : "patient",
        "type" : "reference"
      },
      {
        "name" : "date",
        "type" : "date"
      },
      {
        "name" : "code",
        "type" : "token"
      },
      {
        "name" : "status",
        "type" : "token"
      }]
    },
    {
      "type" : "ServiceRequest",
      "supportedProfile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-service-request"],
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "search-type"
      },
      {
        "code" : "create"
      },
      {
        "code" : "update"
      }],
      "searchParam" : [{
        "name" : "patient",
        "type" : "reference"
      },
      {
        "name" : "code",
        "type" : "token"
      },
      {
        "name" : "encounter",
        "type" : "reference"
      },
      {
        "name" : "status",
        "type" : "token"
      }]
    },
    {
      "type" : "DiagnosticReport",
      "supportedProfile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-diagnostic-report",
      "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/corneal-tomography-report"],
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "search-type"
      },
      {
        "code" : "create"
      },
      {
        "code" : "update"
      }],
      "searchParam" : [{
        "name" : "patient",
        "type" : "reference"
      },
      {
        "name" : "date",
        "type" : "date"
      },
      {
        "name" : "code",
        "type" : "token"
      },
      {
        "name" : "category",
        "type" : "token"
      },
      {
        "name" : "status",
        "type" : "token"
      }]
    },
    {
      "type" : "ImagingStudy",
      "supportedProfile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-imaging-study"],
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "search-type"
      },
      {
        "code" : "create"
      },
      {
        "code" : "update"
      }],
      "searchParam" : [{
        "name" : "patient",
        "type" : "reference"
      },
      {
        "name" : "started",
        "type" : "date"
      },
      {
        "name" : "status",
        "type" : "token"
      }]
    },
    {
      "type" : "MedicationAdministration",
      "supportedProfile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-medication-administration"],
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "search-type"
      },
      {
        "code" : "create"
      },
      {
        "code" : "update"
      }],
      "searchParam" : [{
        "name" : "patient",
        "type" : "reference"
      },
      {
        "name" : "code",
        "type" : "token"
      },
      {
        "name" : "encounter",
        "type" : "reference"
      },
      {
        "name" : "status",
        "type" : "token"
      }]
    },
    {
      "type" : "Medication",
      "supportedProfile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-medication"],
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "search-type"
      },
      {
        "code" : "create"
      },
      {
        "code" : "update"
      }],
      "searchParam" : [{
        "name" : "code",
        "type" : "token"
      },
      {
        "name" : "status",
        "type" : "token"
      }]
    },
    {
      "type" : "CarePlan",
      "supportedProfile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-care-plan"],
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "search-type"
      },
      {
        "code" : "create"
      },
      {
        "code" : "update"
      }],
      "searchParam" : [{
        "name" : "patient",
        "type" : "reference"
      },
      {
        "name" : "category",
        "type" : "token"
      },
      {
        "name" : "date",
        "type" : "date"
      },
      {
        "name" : "status",
        "type" : "token"
      }]
    },
    {
      "type" : "Device",
      "supportedProfile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-device"],
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "search-type"
      },
      {
        "code" : "create"
      },
      {
        "code" : "update"
      }],
      "searchParam" : [{
        "name" : "patient",
        "type" : "reference"
      },
      {
        "name" : "type",
        "type" : "token"
      },
      {
        "name" : "status",
        "type" : "token"
      }]
    },
    {
      "type" : "BodyStructure",
      "supportedProfile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ocular-body-structure"],
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "search-type"
      },
      {
        "code" : "create"
      },
      {
        "code" : "update"
      }],
      "searchParam" : [{
        "name" : "patient",
        "type" : "reference"
      },
      {
        "name" : "morphology",
        "type" : "token"
      }]
    }]
  }]
}

```
