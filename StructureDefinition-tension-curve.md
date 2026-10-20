# Tension Curve - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tension Curve**

## Resource Profile: Tension Curve 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/StructureDefinition/tension-curve | *Version*:0.4.0 |
| Draft as of 2026-10-20 | *Computable Name*:TensionCurve |

 
Represents an ambulatory tension curve: several intraocular pressure readings taken across a single day, grouped together as a single clinical concept rather than recorded as unrelated, disconnected observations. This profile was already defined in an earlier version of this guide's design work and is carried forward here. 

### Design decisions

**Panel pattern.** This is a panel `Observation` using `hasMember` to group the individual readings, rather than holding a value itself (see the panel pattern in [Guidance](guidance.md)). `code` is fixed to the local FHIR4Eyes code `tension-curve` ([FHIR4EyesCS](CodeSystem-fhir4eyes-cs.md)), pending an external code.

**`value[x]`** is `0..0`. The panel itself has no value; the values live in each member reading.

**`effective[x]`** is `1..1` and only allows `Period`, reflecting that the curve spans a period of time (the day of the ambulatory assessment), not a single instant.

**`hasMember`** accepts `Reference(IntraocularPressure | CorrectedIntraocularPressure)`, `1..*`. Both variants of intraocular pressure reading may be part of a curve; pachymetry itself is not referenced directly from the curve, since [CorrectedIntraocularPressure](StructureDefinition-corrected-intraocular-pressure.md) already references it via `derivedFrom`.

> In clinical practice, a tension curve typically consists of three readings taken across the day, though this varies by site. This is noted here as clinical context, not enforced as a fixed cardinality in the profile.

**Laterality.** `bodySite` is `0..1`, using the standard `bodySite` extension to reference an [OcularBodyStructure](StructureDefinition-ocular-body-structure.md). It is optional, since the curve as a whole may or may not need its own laterality tag (individual member readings carry their own).

#### Worked example: combining readings with corrected values

`TensionCurve.hasMember` accepts **either** [IntraocularPressure](StructureDefinition-intraocular-pressure.md) or [CorrectedIntraocularPressure](StructureDefinition-corrected-intraocular-pressure.md) as its members, since a single curve may mix plain and corrected readings depending on whether pachymetry was available for each reading:

* `TensionCurve` groups several readings across the day via `hasMember`.
* Each member is either a plain `IntraocularPressure` reading, or a `CorrectedIntraocularPressure` reading.
* A `CorrectedIntraocularPressure` instance is never a standalone measurement: it always references, via `derivedFrom`, the specific `IntraocularPressure` reading and [Pachymetry](StructureDefinition-pachymetry.md) measurement it was calculated from.

So a single curve reading can carry a two-level chain: the curve references the corrected reading, and the corrected reading itself references the two measurements it was derived from.

```
graph TD
    TC[TensionCurve<br/>panel] -->|hasMember| IOP1[IntraocularPressure<br/>08:00]
    TC -->|hasMember| IOP2[IntraocularPressure<br/>12:00]
    TC -->|hasMember| CIOP[CorrectedIntraocularPressure<br/>14:00]
    CIOP -->|derivedFrom| IOP3[IntraocularPressure<br/>base reading]
    CIOP -->|derivedFrom| PACHY[Pachymetry<br/>corneal thickness]

```

**Examples:** [Tension curve panel, right eye](Observation-TensionCurveRightEyeExample.md), [Tension curve reading 08:00, right eye](Observation-TensionCurveRightEye0800Example.md), [Tension curve reading 12:00, right eye](Observation-TensionCurveRightEye1200Example.md), [Tension curve reading 14:00, right eye](Observation-TensionCurveRightEye1400Example.md)

**Usages:**

* Examples for this Profile: [Observation/TensionCurveRightEyeExample](Observation-TensionCurveRightEyeExample.md)
* CapabilityStatements using this Profile: [FHIR4Eyes Server Capability Statement](CapabilityStatement-FHIR4EyesCapabilityStatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir4eyes.core|current/StructureDefinition/StructureDefinition-tension-curve.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tension-curve.csv), [Excel](StructureDefinition-tension-curve.xlsx), [Schematron](StructureDefinition-tension-curve.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tension-curve",
  "url" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/tension-curve",
  "version" : "0.4.0",
  "name" : "TensionCurve",
  "title" : "Tension Curve",
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
  "description" : "Represents an ambulatory tension curve: several intraocular pressure\r\nreadings taken across a single day, grouped together as a single clinical concept rather\r\nthan recorded as unrelated, disconnected observations. This profile was already defined in\r\nan earlier version of this guide's design work and is carried forward here.",
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
      "short" : "Identifies this as a tension curve panel",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "tension-curve",
          "display" : "Diurnal intraocular pressure tension curve"
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
      "min" : 1,
      "type" : [{
        "code" : "Period"
      }],
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
      "max" : "0"
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
      "short" : "Laterality of the curve, via BodyStructure",
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
      "id" : "Observation.hasMember",
      "path" : "Observation.hasMember",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/intraocular-pressure",
        "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/corrected-intraocular-pressure"]
      }],
      "mustSupport" : true
    }]
  }
}

```
