# Ocular Motility - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ocular Motility**

## Resource Profile: Ocular Motility 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ocular-motility | *Version*:0.4.0 |
| Draft as of 2026-10-20 | *Computable Name*:OcularMotility |

 
Represents the assessment of extraocular muscle function (hypofunction or hyperfunction) for a specific eye and muscle. Recorded per eye, since motility findings can differ between the two eyes independently. 

Represents the assessment of extraocular muscle function (hypofunction or hyperfunction) for a specific eye and muscle. It is a **direct** sub-test of a [StrabismusExam](StructureDefinition-strabismus-exam.md): it produces a single result and does not vary by gaze position.

Motility is recorded per eye, since findings can differ between the two eyes independently: `bodySite` and its `bodySiteEye` extension referencing [OcularBodyStructure](StructureDefinition-ocular-body-structure.md) are therefore required (`1..1`). The `muscle` (which of the six extraocular muscles) and `finding` (hypofunction or hyperfunction) components are both required; the finding terminology is still to be confirmed. See [StrabismusExam](StructureDefinition-strabismus-exam.md) for the overall architecture.

**Examples:** [Ocular motility: left eye](Observation-OcularMotilityLeftEyeExample.md), [Ocular motility: right eye](Observation-OcularMotilityRightEyeExample.md)

**Usages:**

* Examples for this Profile: [Observation/OcularMotilityLeftEyeExample](Observation-OcularMotilityLeftEyeExample.md) and [Observation/OcularMotilityRightEyeExample](Observation-OcularMotilityRightEyeExample.md)
* CapabilityStatements using this Profile: [FHIR4Eyes Server Capability Statement](CapabilityStatement-FHIR4EyesCapabilityStatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir4eyes.core|current/StructureDefinition/StructureDefinition-ocular-motility.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ocular-motility.csv), [Excel](StructureDefinition-ocular-motility.xlsx), [Schematron](StructureDefinition-ocular-motility.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ocular-motility",
  "url" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ocular-motility",
  "version" : "0.4.0",
  "name" : "OcularMotility",
  "title" : "Ocular Motility",
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
  "description" : "Represents the assessment of extraocular muscle function (hypofunction or\r\nhyperfunction) for a specific eye and muscle. Recorded per eye, since motility findings can\r\ndiffer between the two eyes independently.",
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
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
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
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.status",
      "path" : "Observation.status",
      "mustSupport" : true
    },
    {
      "id" : "Observation.category",
      "path" : "Observation.category",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this"
        }],
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.category:exam",
      "path" : "Observation.category",
      "sliceName" : "exam",
      "min" : 1,
      "max" : "1",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "exam",
          "display" : "Exam"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "short" : "Identifies this as an ocular motility assessment",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "ocular-motility",
          "display" : "Ocular motility assessment"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.note",
      "path" : "Observation.note",
      "mustSupport" : true
    },
    {
      "id" : "Observation.bodySite",
      "path" : "Observation.bodySite",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.bodySite.extension",
      "path" : "Observation.bodySite.extension",
      "min" : 1
    },
    {
      "id" : "Observation.bodySite.extension:bodySiteEye",
      "path" : "Observation.bodySite.extension",
      "sliceName" : "bodySiteEye",
      "short" : "The eye being assessed (required, since motility is always eye-specific)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/bodySite|5.3.0"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.bodySite.extension:bodySiteEye.value[x]",
      "path" : "Observation.bodySite.extension.value[x]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ocular-body-structure"]
      }]
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "code"
        }],
        "rules" : "open"
      },
      "min" : 2
    },
    {
      "id" : "Observation.component:muscle",
      "path" : "Observation.component",
      "sliceName" : "muscle",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:muscle.code",
      "path" : "Observation.component.code",
      "short" : "Which of the six extraocular muscles is being assessed",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "extraocular-muscle",
          "display" : "Extraocular muscle assessed"
        }]
      }
    },
    {
      "id" : "Observation.component:muscle.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Observation.component:finding",
      "path" : "Observation.component",
      "sliceName" : "finding",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:finding.code",
      "path" : "Observation.component.code",
      "short" : "Hypofunction or hyperfunction; terminology to be confirmed",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "extraocular-muscle-function",
          "display" : "Extraocular muscle function"
        }]
      }
    },
    {
      "id" : "Observation.component:finding.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    }]
  }
}

```
