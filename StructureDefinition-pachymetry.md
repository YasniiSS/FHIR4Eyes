# Pachymetry - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Pachymetry**

## Resource Profile: Pachymetry 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/StructureDefinition/pachymetry | *Version*:0.4.0 |
| Draft as of 2026-10-20 | *Computable Name*:Pachymetry |

 
Represents a corneal pachymetry measurement (corneal thickness), typically in micrometres. Used on its own, and also referenced by CorrectedIntraocularPressure when correcting an IOP reading for corneal thickness. 

Represents a corneal pachymetry measurement (corneal thickness), typically in micrometres, recorded as a required `Quantity` value. `code` is fixed to the laterality-neutral local code `central-corneal-thickness` ([FHIR4EyesCS](CodeSystem-fhir4eyes-cs.md)), because the only LOINC codes for this concept are eye-specific; instances add the eye-specific LOINC as a second coding (`79825-6` right cornea / `79826-4` left cornea).

### Usage

A `Pachymetry` measurement is used on its own, and is also referenced via `derivedFrom` by [CorrectedIntraocularPressure](StructureDefinition-corrected-intraocular-pressure.md) when an IOP reading is corrected for corneal thickness. It is not referenced directly from a [TensionCurve](StructureDefinition-tension-curve.md); see the worked example on that page.

This profile is distinct from [CTPachymetry](StructureDefinition-ct-pachymetry.md), which captures the fuller thickness map data produced by a corneal tomography device as part of a [CornealTomographyReport](StructureDefinition-corneal-tomography-report.md).

**Laterality.** `bodySite` (`0..1`) uses the standard `bodySite` extension to reference an [OcularBodyStructure](StructureDefinition-ocular-body-structure.md).

**Examples:** [Pachymetry: right eye](Observation-PachymetryRightEyeExample.md), [Pachymetry: left eye](Observation-PachymetryLeftEyeExample.md)

**Usages:**

* Refer to this Profile: [Corrected Intraocular Pressure](StructureDefinition-corrected-intraocular-pressure.md)
* Examples for this Profile: [Observation/PachymetryLeftEyeExample](Observation-PachymetryLeftEyeExample.md) and [Observation/PachymetryRightEyeExample](Observation-PachymetryRightEyeExample.md)
* CapabilityStatements using this Profile: [FHIR4Eyes Server Capability Statement](CapabilityStatement-FHIR4EyesCapabilityStatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir4eyes.core|current/StructureDefinition/StructureDefinition-pachymetry.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-pachymetry.csv), [Excel](StructureDefinition-pachymetry.xlsx), [Schematron](StructureDefinition-pachymetry.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pachymetry",
  "url" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/pachymetry",
  "version" : "0.4.0",
  "name" : "Pachymetry",
  "title" : "Pachymetry",
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
  "description" : "Represents a corneal pachymetry measurement (corneal thickness), typically\nin micrometres. Used on its own, and also referenced by CorrectedIntraocularPressure when\ncorrecting an IOP reading for corneal thickness.",
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
      "short" : "Laterality-neutral FHIR4Eyes code; instances add the eye-specific LOINC as a second coding: 79825-6 (right cornea) / 79826-4 (left cornea)",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "central-corneal-thickness",
          "display" : "Central corneal thickness"
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
      "id" : "Observation.performer",
      "path" : "Observation.performer",
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "short" : "The corneal thickness value, typically in micrometres",
      "min" : 1,
      "type" : [{
        "code" : "Quantity"
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
      "mustSupport" : true
    },
    {
      "id" : "Observation.bodySite.extension:bodySiteEye",
      "path" : "Observation.bodySite.extension",
      "sliceName" : "bodySiteEye",
      "short" : "Laterality of the reading, via BodyStructure",
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
    }]
  }
}

```
