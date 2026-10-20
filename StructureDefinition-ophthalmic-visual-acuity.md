# Ophthalmic Visual Acuity - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ophthalmic Visual Acuity**

## Resource Profile: Ophthalmic Visual Acuity 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-visual-acuity | *Version*:0.4.0 |
| Draft as of 2026-10-20 | *Computable Name*:OphthalmicVisualAcuity |

 
Represents a visual acuity measurement, modeled as discrete, independently combinable components (distance, correction status, chart/optotype, scale, pinhole) rather than as a single pre-coordinated code that bundles all of these together. This follows a more granular pattern than the HL7 Eye Care IG's published (2021) approach, aligned with a newer proposal discussed within SNOMED International's Eye Care Clinical Reference Group (2025), which favors flexible, independently recordable components over pre-coordinated codes. See Terminology for the underlying terminology strategy, including the LowVisionAssessment value set for vision below what any chart can measure. 

Represents a visual acuity measurement, modeled as discrete, independently combinable components (distance, correction status, chart/optotype, scale, pinhole) rather than as a single pre-coordinated code.

### Design decisions

**Granular components, not a single pre-coordinated code.** The HL7 Eye Care IG's published (2021) approach captures distance and correction status entirely within `code` itself (for example, SNOMED CT `251739003`, "Distance visual acuity"), relying on SNOMED CT to provide a distinct, pre-coordinated concept for every possible combination. This guide instead follows a more granular pattern, aligned with a newer proposal discussed within SNOMED International's Eye Care Clinical Reference Group (2025), which favors flexible, independently recordable components over pre-coordinated codes: `code` is fixed to the generic SNOMED CT `363983007` "Visual acuity" (instances may add a specific LOINC as a second coding, e.g. `98505-1` far uncorrected right eye), and the specific detail is captured through separate components instead:

| | |
| :--- | :--- |
| `distance` | The testing distance (e.g. in metres). Not applicable to the qualitative`LowVisionAssessment`values (light perception, no light perception), which are distance-independent by nature. For counting fingers, this captures the specific distance separately from the qualitative "counting fingers" value itself. |
| `correctionStatus` | Only two states are used clinically: corrected or uncorrected. |
| `chart` | The chart or optotype used (e.g. Snellen, ETDRS), coded with LOINC`79908-0`. |
| `scale` | The scale the value is expressed in (e.g. Snellen fraction, decimal, LogMAR). |
| `pinhole` | A boolean: whether this specific measurement was taken through a pinhole occluder. |

> `distance`, `correctionStatus`, `scale` and `pinhole` use local FHIR4Eyes codes ([FHIR4EyesCS](CodeSystem-fhir4eyes-cs.md)) pending an external code; `chart` uses LOINC `79908-0`.

**Value.** `value[x]` accepts `Ratio` (Snellen fractions), `Quantity` (decimal or LogMAR), or `CodeableConcept` (the qualitative [LowVisionAssessment](ValueSet-low-vision-assessment-vs.md) scale, for vision that falls below what any chart can measure; see [Terminology](terminology.md)).

**Pinhole measurements reference their base measurement.** In practice, a pinhole measurement is only taken as a follow-up to an uncorrected measurement already taken (for example, "OD sc 20/40, with pinhole 20/30"): it does not happen on its own. Rather than leaving the two measurements unconnected, or forcing them into a single Observation, this guide records them as two separate `OphthalmicVisualAcuity` instances (one with the `pinhole` component set to `false` or absent, one with it set to `true`), with the pinhole measurement's `derivedFrom` referencing the base measurement it followed. This mirrors the same pattern already used for [CorrectedIntraocularPressure](StructureDefinition-corrected-intraocular-pressure.md), which references the plain IOP and pachymetry measurements it derives from.

**Laterality.** Uses the same `bodySite` extension pattern as the rest of this guide, referencing [OcularBodyStructure](StructureDefinition-ocular-body-structure.md). The `inv-va-laterality` invariant raises a warning when `bodySite` is absent, which is acceptable for binocular measurements.

**Examples:** [Visual acuity: uncorrected, right eye](Observation-VisualAcuityUncorrectedRightEyeExample.md), [Visual acuity: corrected, left eye](Observation-VisualAcuityCorrectedLeftEyeExample.md), [Visual acuity: pinhole, right eye](Observation-VisualAcuityPinholeRightEyeExample.md), [Visual acuity: counting fingers, right eye](Observation-VisualAcuityCountingFingersRightEyeExample.md), [Visual acuity: binocular](Observation-VisualAcuityBinocularExample.md)

**Usages:**

* Refer to this Profile: [Ophthalmic Visual Acuity](StructureDefinition-ophthalmic-visual-acuity.md)
* Examples for this Profile: [Observation/VisualAcuityBinocularExample](Observation-VisualAcuityBinocularExample.md), [Observation/VisualAcuityCorrectedLeftEyeExample](Observation-VisualAcuityCorrectedLeftEyeExample.md), [Observation/VisualAcuityCountingFingersRightEyeExample](Observation-VisualAcuityCountingFingersRightEyeExample.md), [Observation/VisualAcuityPinholeRightEyeExample](Observation-VisualAcuityPinholeRightEyeExample.md) and [Observation/VisualAcuityUncorrectedRightEyeExample](Observation-VisualAcuityUncorrectedRightEyeExample.md)
* CapabilityStatements using this Profile: [FHIR4Eyes Server Capability Statement](CapabilityStatement-FHIR4EyesCapabilityStatement.md)

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
  "version" : "0.4.0",
  "name" : "OphthalmicVisualAcuity",
  "title" : "Ophthalmic Visual Acuity",
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
  "description" : "Represents a visual acuity measurement, modeled as discrete, independently\ncombinable components (distance, correction status, chart/optotype, scale, pinhole) rather\nthan as a single pre-coordinated code that bundles all of these together. This follows a\nmore granular pattern than the HL7 Eye Care IG's published (2021) approach, aligned with a\nnewer proposal discussed within SNOMED International's Eye Care Clinical Reference Group\n(2025), which favors flexible, independently recordable components over pre-coordinated\ncodes. See Terminology for the underlying terminology strategy, including the\nLowVisionAssessment value set for vision below what any chart can measure.",
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
      "path" : "Observation",
      "constraint" : [{
        "key" : "inv-va-laterality",
        "severity" : "warning",
        "human" : "Visual acuity should reference the eye(s) tested via bodySite; binocular measurements reference a both-eyes OcularBodyStructure",
        "expression" : "bodySite.exists()",
        "source" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-visual-acuity"
      }]
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
      "short" : "SNOMED CT 363983007 Visual acuity (generic); the specific detail lives in the discrete components below. Instances may add a specific LOINC as a second coding, e.g. 98505-1 / 98504-4 / 98506-9 (far uncorrected right / left / binocular) or 98512-7 / 98511-9 / 98513-5 (far best corrected)",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "363983007",
          "display" : "Visual acuity"
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
        "strength" : "required",
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
      "id" : "Observation.component:distance.code",
      "path" : "Observation.component.code",
      "short" : "Testing distance (distance from the chart)",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "test-distance",
          "display" : "Testing distance"
        }]
      }
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
      "short" : "Correction status: only two states, corrected or uncorrected",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "correction-status",
          "display" : "Refractive correction status during test"
        }]
      }
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
      "short" : "LOINC 79908-0 — chart or optotype used (Snellen, ETDRS, LogMAR chart)",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "79908-0",
          "display" : "Type of Visual acuity exam method"
        }]
      }
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
      "short" : "The scale the value is expressed in (e.g. Snellen fraction, decimal, LogMAR)",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "visual-acuity-scale",
          "display" : "Visual acuity notation scale"
        }]
      }
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
      "short" : "Whether this measurement was taken through a pinhole occluder",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "pinhole-used",
          "display" : "Pinhole occluder used"
        }]
      }
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
