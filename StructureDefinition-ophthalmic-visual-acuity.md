# Ophthalmic Visual Acuity - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ophthalmic Visual Acuity**

## Resource Profile: Ophthalmic Visual Acuity 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-visual-acuity | *Version*:0.2.0 |
| Draft as of 2026-08-25 | *Computable Name*:OphthalmicVisualAcuity |

 
Represents a visual acuity measurement, modeled as discrete, independently combinable components (distance, correction status, chart/optotype, scale, pinhole) rather than as a single pre-coordinated code that bundles all of these together. This follows a more granular pattern than the HL7 Eye Care IG's published (2021) approach, aligned with a newer proposal discussed within SNOMED International's Eye Care Clinical Reference Group (2025), which favors flexible, independently recordable components over pre-coordinated codes. See Terminology for the underlying terminology strategy, including the LowVisionAssessment value set for vision below what any chart can measure. 

**Usages:**

* Refer to this Profile: [Ophthalmic Visual Acuity](StructureDefinition-ophthalmic-visual-acuity.md)
* Examples for this Profile: [Observation/VisualAcuityBinocularExample](Observation-VisualAcuityBinocularExample.md), [Observation/VisualAcuityCorrectedLeftEyeExample](Observation-VisualAcuityCorrectedLeftEyeExample.md), [Observation/VisualAcuityCountingFingersRightEyeExample](Observation-VisualAcuityCountingFingersRightEyeExample.md), [Observation/VisualAcuityPinholeRightEyeExample](Observation-VisualAcuityPinholeRightEyeExample.md) and [Observation/VisualAcuityUncorrectedRightEyeExample](Observation-VisualAcuityUncorrectedRightEyeExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir4eyes.core|current/StructureDefinition/StructureDefinition-ophthalmic-visual-acuity.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ophthalmic-visual-acuity.csv), [Excel](StructureDefinition-ophthalmic-visual-acuity.xlsx), [Schematron](StructureDefinition-ophthalmic-visual-acuity.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ophthalmic-visual-acuity",
  "url" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-visual-acuity",
  "version" : "0.2.0",
  "name" : "OphthalmicVisualAcuity",
  "title" : "Ophthalmic Visual Acuity",
  "status" : "draft",
  "date" : "2026-08-25T18:52:20+00:00",
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
  "description" : "Represents a visual acuity measurement, modeled as discrete, independently\r\ncombinable components (distance, correction status, chart/optotype, scale, pinhole) rather\r\nthan as a single pre-coordinated code that bundles all of these together. This follows a\r\nmore granular pattern than the HL7 Eye Care IG's published (2021) approach, aligned with a\r\nnewer proposal discussed within SNOMED International's Eye Care Clinical Reference Group\r\n(2025), which favors flexible, independently recordable components over pre-coordinated\r\ncodes. See Terminology for the underlying terminology strategy, including the\r\nLowVisionAssessment value set for vision below what any chart can measure.",
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
      "min" : 1,
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
      "short" : "Fixed to the generic Visual acuity concept; specific detail lives in the discrete components below, not in code",
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
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "type" : [{
        "code" : "Quantity"
      },
      {
        "code" : "CodeableConcept"
      },
      {
        "code" : "Ratio"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]:valueCodeableConcept",
      "path" : "Observation.value[x]",
      "sliceName" : "valueCodeableConcept",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://YasniiSS.github.io/fhir4eyes/ValueSet/low-vision-assessment-vs"
      }
    },
    {
      "id" : "Observation.dataAbsentReason",
      "path" : "Observation.dataAbsentReason",
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
      "short" : "Laterality of the measurement, via BodyStructure",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/bodySite"]
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
      "mustSupport" : true
    },
    {
      "id" : "Observation.derivedFrom",
      "path" : "Observation.derivedFrom",
      "short" : "The uncorrected/base measurement this pinhole measurement was derived from, when applicable",
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-visual-acuity"]
      }],
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
      "id" : "Observation.component:distance",
      "path" : "Observation.component",
      "sliceName" : "distance",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:distance.code.text",
      "path" : "Observation.component.code.text",
      "patternString" : "Testing distance"
    },
    {
      "id" : "Observation.component:distance.value[x]",
      "path" : "Observation.component.value[x]",
      "short" : "The distance from the chart, in metres or feet, when applicable",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:correctionStatus",
      "path" : "Observation.component",
      "sliceName" : "correctionStatus",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:correctionStatus.code",
      "path" : "Observation.component.code",
      "short" : "Correction status: only two states, corrected or uncorrected"
    },
    {
      "id" : "Observation.component:correctionStatus.code.text",
      "path" : "Observation.component.code.text",
      "patternString" : "Correction status"
    },
    {
      "id" : "Observation.component:correctionStatus.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Observation.component:chart",
      "path" : "Observation.component",
      "sliceName" : "chart",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:chart.code",
      "path" : "Observation.component.code",
      "short" : "The chart or optotype used (e.g. Snellen, ETDRS, LogMAR chart)"
    },
    {
      "id" : "Observation.component:chart.code.text",
      "path" : "Observation.component.code.text",
      "patternString" : "Chart"
    },
    {
      "id" : "Observation.component:chart.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Observation.component:scale",
      "path" : "Observation.component",
      "sliceName" : "scale",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:scale.code",
      "path" : "Observation.component.code",
      "short" : "The scale the value is expressed in (e.g. Snellen fraction, decimal, LogMAR)"
    },
    {
      "id" : "Observation.component:scale.code.text",
      "path" : "Observation.component.code.text",
      "patternString" : "Scale"
    },
    {
      "id" : "Observation.component:scale.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Observation.component:pinhole",
      "path" : "Observation.component",
      "sliceName" : "pinhole",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:pinhole.code",
      "path" : "Observation.component.code",
      "short" : "Whether this measurement was taken through a pinhole occluder"
    },
    {
      "id" : "Observation.component:pinhole.code.text",
      "path" : "Observation.component.code.text",
      "patternString" : "Pinhole"
    },
    {
      "id" : "Observation.component:pinhole.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
