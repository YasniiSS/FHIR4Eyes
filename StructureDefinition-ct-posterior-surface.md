# Corneal Tomography - Posterior Surface - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Corneal Tomography - Posterior Surface**

## Resource Profile: Corneal Tomography - Posterior Surface 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ct-posterior-surface | *Version*:0.4.0 |
| Draft as of 2026-10-20 | *Computable Name*:CTPosteriorSurface |

 
Represents the posterior corneal surface analysis component of a corneal tomography exam, one of six Observations grouped under a single CornealTomographyReport. Sourced directly from the FHIR4Eyes Observations catalog (Corneal Topography: Posterior Surface section). Component codes are local FHIR4Eyes codes, as no confirmed laterality-neutral SNOMED CT/LOINC codes were identified for these device-specific measurements (see Terminology). 

Represents the posterior corneal surface analysis of a corneal tomography exam: back surface keratometry (K1, K2, Km), astigmatism, asphericity (Q-value), elevation from the best fit sphere, and the best fit sphere radius. It is one of six analyses grouped under a single [CornealTomographyReport](StructureDefinition-corneal-tomography-report.md), and is kept separate from [CTAnteriorSurface](StructureDefinition-ct-anterior-surface.md) even though they share many parallel fields, following the rule of thumb explained on the [CornealTomographyReport](StructureDefinition-corneal-tomography-report.md) page. Component codes are local FHIR4Eyes codes ([FHIR4EyesCS](CodeSystem-fhir4eyes-cs.md)) pending an external code, since no confirmed SNOMED CT or LOINC code exists for these measurements (see [Terminology](terminology.md)).

**Examples:** [CT posterior surface: right eye](Observation-CTPosteriorSurfaceRightEyeExample.md)

**Usages:**

* Refer to this Profile: [Corneal Tomography Report](StructureDefinition-corneal-tomography-report.md)
* Examples for this Profile: [Observation/CTPosteriorSurfaceRightEyeExample](Observation-CTPosteriorSurfaceRightEyeExample.md)
* CapabilityStatements using this Profile: [FHIR4Eyes Server Capability Statement](CapabilityStatement-FHIR4EyesCapabilityStatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir4eyes.core|current/StructureDefinition/StructureDefinition-ct-posterior-surface.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ct-posterior-surface.csv), [Excel](StructureDefinition-ct-posterior-surface.xlsx), [Schematron](StructureDefinition-ct-posterior-surface.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ct-posterior-surface",
  "url" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ct-posterior-surface",
  "version" : "0.4.0",
  "name" : "CTPosteriorSurface",
  "title" : "Corneal Tomography - Posterior Surface",
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
  "description" : "Represents the posterior corneal surface analysis component of a corneal\ntomography exam, one of six Observations grouped under a single CornealTomographyReport.\nSourced directly from the FHIR4Eyes Observations catalog (Corneal Topography: Posterior\nSurface section). Component codes are local FHIR4Eyes codes, as no confirmed laterality-neutral SNOMED CT/LOINC codes were identified for these device-specific measurements (see Terminology).",
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
      "short" : "Identifies this as the posterior surface component of a corneal tomography exam",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "corneal-tomography-posterior-surface",
          "display" : "Corneal tomography, posterior surface analysis"
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
      "id" : "Observation.encounter",
      "path" : "Observation.encounter",
      "mustSupport" : true
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
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
      "mustSupport" : true
    },
    {
      "id" : "Observation.bodySite.extension:bodySiteEye",
      "path" : "Observation.bodySite.extension",
      "sliceName" : "bodySiteEye",
      "min" : 0,
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
      "id" : "Observation.device",
      "path" : "Observation.device",
      "short" : "The tomographer used (e.g. Scheimpflug)",
      "mustSupport" : true
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
      }
    },
    {
      "id" : "Observation.component:backK1",
      "path" : "Observation.component",
      "sliceName" : "backK1",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:backK1.code",
      "path" : "Observation.component.code",
      "short" : "K1 back (flat) - posterior surface flat keratometry; negative value in dioptres (posterior surface power, typically about -5.5 to -7 D)",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "posterior-keratometry-k1",
          "display" : "Posterior keratometry K1 (flat)"
        }]
      }
    },
    {
      "id" : "Observation.component:backK1.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:backK2",
      "path" : "Observation.component",
      "sliceName" : "backK2",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:backK2.code",
      "path" : "Observation.component.code",
      "short" : "K2 back (steep) - posterior surface steep keratometry; negative value in dioptres (posterior surface power), more negative than K1 back",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "posterior-keratometry-k2",
          "display" : "Posterior keratometry K2 (steep)"
        }]
      }
    },
    {
      "id" : "Observation.component:backK2.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:backKm",
      "path" : "Observation.component",
      "sliceName" : "backKm",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:backKm.code",
      "path" : "Observation.component.code",
      "short" : "Km back - posterior surface mean keratometry, (K1 back + K2 back)/2; negative value in dioptres (posterior surface power)",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "posterior-keratometry-km",
          "display" : "Posterior keratometry Km (mean)"
        }]
      }
    },
    {
      "id" : "Observation.component:backKm.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:backAstig",
      "path" : "Observation.component",
      "sliceName" : "backAstig",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:backAstig.code",
      "path" : "Observation.component.code",
      "short" : "Back astigmatism - posterior surface astigmatism, reported as a positive magnitude in dioptres (|K2 back - K1 back|); its axis is the posterior steep meridian",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "corneal-astigmatism-posterior",
          "display" : "Corneal astigmatism, posterior surface"
        }]
      }
    },
    {
      "id" : "Observation.component:backAstig.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:qValueBack",
      "path" : "Observation.component",
      "sliceName" : "qValueBack",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:qValueBack.code",
      "path" : "Observation.component.code",
      "short" : "Q-value back (asphericity) - posterior surface asphericity",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "corneal-asphericity-q-posterior",
          "display" : "Corneal asphericity (Q-value), posterior surface"
        }]
      }
    },
    {
      "id" : "Observation.component:qValueBack.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:elevationBack",
      "path" : "Observation.component",
      "sliceName" : "elevationBack",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:elevationBack.code",
      "path" : "Observation.component.code",
      "short" : "Elevation back BFS - posterior elevation from Best Fit Sphere",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "elevation-posterior",
          "display" : "Corneal elevation relative to best fit sphere, posterior surface"
        }]
      }
    },
    {
      "id" : "Observation.component:elevationBack.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:bestFitSphereBack",
      "path" : "Observation.component",
      "sliceName" : "bestFitSphereBack",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:bestFitSphereBack.code",
      "path" : "Observation.component.code",
      "short" : "BFS radius back - Best Fit Sphere radius posterior",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "best-fit-sphere-radius-posterior",
          "display" : "Best fit sphere radius, posterior surface"
        }]
      }
    },
    {
      "id" : "Observation.component:bestFitSphereBack.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    }]
  }
}

```
