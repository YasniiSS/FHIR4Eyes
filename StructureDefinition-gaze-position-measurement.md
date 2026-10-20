# Gaze Position Measurement - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Gaze Position Measurement**

## Resource Profile: Gaze Position Measurement 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/StructureDefinition/gaze-position-measurement | *Version*:0.4.0 |
| Draft as of 2026-10-20 | *Computable Name*:GazePositionMeasurement |

 
A reusable pattern for a single measurement or finding taken at one gaze position (e.g. primary position, right gaze, up-and-right gaze). Used by PrismCoverTest and KrimskyTest for quantitative prism diopter deviation (recorded as a positive magnitude plus a separate direction component, never as a signed value), and by HirschbergTest, RedFilterLightTest, and Worth4DotTest for a qualitative finding at each position. Each test uses only the components relevant to it; all components are optional. Not intended to be used standalone; always referenced via hasMember from one of those panels. 

A reusable pattern for a single measurement or finding taken at one gaze position (for example primary position, right gaze, up-and-right gaze). `code` is fixed to the local code `gaze-position-measurement` ([FHIR4EyesCS](CodeSystem-fhir4eyes-cs.md)); the gaze position itself is recorded in the required `gazePosition` component (`1..1`). It is not intended to be used standalone: it is always referenced via `hasMember` from one of the position-based sub-tests of a [StrabismusExam](StructureDefinition-strabismus-exam.md), and itself carries no value (`value[x]` is `0..0`).

### Two kinds of per-position result

Apart from `gazePosition`, all components (`fixatingEye`, `horizontalDeviation`, `verticalDeviation`, `finding`) are optional, and each test uses only the ones relevant to it:

* **Quantitative deviation:** `horizontalDeviation` and `verticalDeviation`, in prism diopters, used by [PrismCoverTest](StructureDefinition-prism-cover-test.md) and [KrimskyTest](StructureDefinition-krimsky-test.md).
* **Qualitative finding:** `finding` (for example fusion, suppression, diplopia), used by [HirschbergTest](StructureDefinition-hirschberg-test.md), [RedFilterLightTest](StructureDefinition-red-filter-light-test.md), and [Worth4DotTest](StructureDefinition-worth-4-dot-test.md).

A single shared pattern is used for both cases, rather than two separate profiles, since only the choice of component differs.

### Fixating eye vs. measured eye

`bodySite` (via the standard extension to [OcularBodyStructure](StructureDefinition-ocular-body-structure.md)) identifies the eye being **measured** (the deviating eye), while the separate `fixatingEye` component identifies which eye was **fixating** during that measurement (right or left eye, SNOMED CT `24028007` / `7771000`). The two are never combined into a single field; see [StrabismusExam](StructureDefinition-strabismus-exam.md) and [Guidance](guidance.md).

**Examples:** [Prism cover test: primary position](Observation-PrismCoverTestPrimaryPositionExample.md)

**Usages:**

* Refer to this Profile: [Hirschberg Test](StructureDefinition-hirschberg-test.md), [Krimsky Test](StructureDefinition-krimsky-test.md), [Prism Cover Test](StructureDefinition-prism-cover-test.md), [Red Filter Light Test](StructureDefinition-red-filter-light-test.md) and [Worth 4 Dot Test](StructureDefinition-worth-4-dot-test.md)
* Examples for this Profile: [Observation/HirschbergDownFODExample](Observation-HirschbergDownFODExample.md), [Observation/HirschbergDownFOIExample](Observation-HirschbergDownFOIExample.md), [Observation/HirschbergLeftFODExample](Observation-HirschbergLeftFODExample.md), [Observation/HirschbergLeftFOIExample](Observation-HirschbergLeftFOIExample.md)... Show 19 more, [Observation/HirschbergPrimaryFODExample](Observation-HirschbergPrimaryFODExample.md), [Observation/HirschbergPrimaryFOIExample](Observation-HirschbergPrimaryFOIExample.md), [Observation/HirschbergRightFODExample](Observation-HirschbergRightFODExample.md), [Observation/HirschbergRightFOIExample](Observation-HirschbergRightFOIExample.md), [Observation/HirschbergUpFODExample](Observation-HirschbergUpFODExample.md), [Observation/HirschbergUpFOIExample](Observation-HirschbergUpFOIExample.md), [Observation/KrimskyDownFODExample](Observation-KrimskyDownFODExample.md), [Observation/KrimskyDownFOIExample](Observation-KrimskyDownFOIExample.md), [Observation/KrimskyLeftFODExample](Observation-KrimskyLeftFODExample.md), [Observation/KrimskyLeftFOIExample](Observation-KrimskyLeftFOIExample.md), [Observation/KrimskyPrimaryFODExample](Observation-KrimskyPrimaryFODExample.md), [Observation/KrimskyPrimaryFOIExample](Observation-KrimskyPrimaryFOIExample.md), [Observation/KrimskyRightFODExample](Observation-KrimskyRightFODExample.md), [Observation/KrimskyRightFOIExample](Observation-KrimskyRightFOIExample.md), [Observation/KrimskyUpFODExample](Observation-KrimskyUpFODExample.md), [Observation/KrimskyUpFOIExample](Observation-KrimskyUpFOIExample.md), [Observation/PrismCoverTestPrimaryPositionExample](Observation-PrismCoverTestPrimaryPositionExample.md), [Observation/RedFilterPrimaryPositionExample](Observation-RedFilterPrimaryPositionExample.md) and [Observation/Worth4DotPrimaryPositionExample](Observation-Worth4DotPrimaryPositionExample.md)
* CapabilityStatements using this Profile: [FHIR4Eyes Server Capability Statement](CapabilityStatement-FHIR4EyesCapabilityStatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir4eyes.core|current/StructureDefinition/StructureDefinition-gaze-position-measurement.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-gaze-position-measurement.csv), [Excel](StructureDefinition-gaze-position-measurement.xlsx), [Schematron](StructureDefinition-gaze-position-measurement.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "gaze-position-measurement",
  "url" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/gaze-position-measurement",
  "version" : "0.4.0",
  "name" : "GazePositionMeasurement",
  "title" : "Gaze Position Measurement",
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
  "description" : "A reusable pattern for a single measurement or finding taken at one gaze\nposition (e.g. primary position, right gaze, up-and-right gaze). Used by PrismCoverTest and\nKrimskyTest for quantitative prism diopter deviation (recorded as a positive magnitude\nplus a separate direction component, never as a signed value), and by HirschbergTest,\nRedFilterLightTest, and Worth4DotTest for a qualitative finding at each position. Each test\nuses only the components relevant to it; all components are optional. Not intended to be\nused standalone; always referenced via hasMember from one of those panels.",
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
      "short" : "Identifies this as a gaze position measurement; the specific gaze position is recorded in the gazePosition component",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "gaze-position-measurement",
          "display" : "Gaze position measurement"
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
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "max" : "0"
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
      "short" : "The eye being measured (deviating eye)",
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
      "id" : "Observation.component",
      "path" : "Observation.component",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "code"
        }],
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Observation.component:gazePosition",
      "path" : "Observation.component",
      "sliceName" : "gazePosition",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:gazePosition.code",
      "path" : "Observation.component.code",
      "short" : "The gaze position this measurement was taken at (e.g. primary position, right gaze, up-and-right gaze)",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "gaze-position",
          "display" : "Gaze position"
        }]
      }
    },
    {
      "id" : "Observation.component:gazePosition.value[x]",
      "path" : "Observation.component.value[x]",
      "short" : "One of the nine diagnostic gaze positions (SNOMED CT); text may carry the version term, e.g. right gaze (dextroversion)",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://YasniiSS.github.io/fhir4eyes/ValueSet/gaze-position-vs"
      }
    },
    {
      "id" : "Observation.component:fixatingEye",
      "path" : "Observation.component",
      "sliceName" : "fixatingEye",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:fixatingEye.code",
      "path" : "Observation.component.code",
      "short" : "The eye that was fixating during this measurement",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "fixating-eye",
          "display" : "Fixating eye"
        }]
      }
    },
    {
      "id" : "Observation.component:fixatingEye.value[x]",
      "path" : "Observation.component.value[x]",
      "short" : "Right or left eye (SNOMED CT 24028007 / 7771000)",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Observation.component:horizontalDeviation",
      "path" : "Observation.component",
      "sliceName" : "horizontalDeviation",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:horizontalDeviation.code",
      "path" : "Observation.component.code",
      "short" : "Horizontal deviation magnitude, always positive, in prism diopters ([p'diop]) (used by PrismCoverTest, KrimskyTest; HirschbergTest may record its estimate in degrees or prism diopters). Direction (eso/exo) goes in horizontalDirection; tropia vs phoria may be recorded in the finding",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "horizontal-deviation",
          "display" : "Horizontal ocular deviation"
        }]
      }
    },
    {
      "id" : "Observation.component:horizontalDeviation.value[x]",
      "path" : "Observation.component.value[x]",
      "short" : "Positive magnitude; never signed",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:horizontalDirection",
      "path" : "Observation.component",
      "sliceName" : "horizontalDirection",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:horizontalDirection.code",
      "path" : "Observation.component.code",
      "short" : "Direction of the horizontal deviation: esodeviation or exodeviation (orthophoria when none); the magnitude is in horizontalDeviation",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "horizontal-deviation-direction",
          "display" : "Horizontal deviation direction"
        }]
      }
    },
    {
      "id" : "Observation.component:horizontalDirection.value[x]",
      "path" : "Observation.component.value[x]",
      "short" : "Esodeviation, exodeviation or orthophoria",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://YasniiSS.github.io/fhir4eyes/ValueSet/horizontal-deviation-direction-vs"
      }
    },
    {
      "id" : "Observation.component:verticalDeviation",
      "path" : "Observation.component",
      "sliceName" : "verticalDeviation",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:verticalDeviation.code",
      "path" : "Observation.component.code",
      "short" : "Vertical deviation magnitude, always positive, in prism diopters ([p'diop]), when present (used by PrismCoverTest, KrimskyTest). Direction (hyper/hypo) goes in verticalDirection; tropia vs phoria may be recorded in the finding",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "vertical-deviation",
          "display" : "Vertical ocular deviation"
        }]
      }
    },
    {
      "id" : "Observation.component:verticalDeviation.value[x]",
      "path" : "Observation.component.value[x]",
      "short" : "Positive magnitude; never signed",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:verticalDirection",
      "path" : "Observation.component",
      "sliceName" : "verticalDirection",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:verticalDirection.code",
      "path" : "Observation.component.code",
      "short" : "Direction of the vertical deviation of the deviating eye (the eye in bodySite): hyperdeviation or hypodeviation; the magnitude is in verticalDeviation",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "vertical-deviation-direction",
          "display" : "Vertical deviation direction"
        }]
      }
    },
    {
      "id" : "Observation.component:verticalDirection.value[x]",
      "path" : "Observation.component.value[x]",
      "short" : "Hyperdeviation or hypodeviation",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://YasniiSS.github.io/fhir4eyes/ValueSet/vertical-deviation-direction-vs"
      }
    },
    {
      "id" : "Observation.component:finding",
      "path" : "Observation.component",
      "sliceName" : "finding",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:finding.code",
      "path" : "Observation.component.code",
      "short" : "Qualitative finding at this position (used by HirschbergTest, RedFilterLightTest, Worth4DotTest); may also state tropia vs phoria for PrismCoverTest/KrimskyTest",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "gaze-position-finding",
          "display" : "Finding at gaze position"
        }]
      }
    },
    {
      "id" : "Observation.component:finding.value[x]",
      "path" : "Observation.component.value[x]",
      "short" : "Fusion, suppression, diplopia or corneal light reflex position; free text may add detail",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://YasniiSS.github.io/fhir4eyes/ValueSet/binocular-finding-vs"
      }
    }]
  }
}

```
