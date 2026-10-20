# Strabismus Exam - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Strabismus Exam**

## Resource Profile: Strabismus Exam 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/StructureDefinition/strabismus-exam | *Version*:0.4.0 |
| Draft as of 2026-10-19 | *Computable Name*:StrabismusExam |

 
Represents a strabismus examination as a panel grouping together whichever sub-tests were actually performed for this patient (for example, cover test, motility, near point of convergence, stereopsis, prism cover test, Krimsky test). Not every possible sub-test is performed for every patient; this profile does not enforce a fixed checklist. Each sub-test is recorded as its own Observation, referenced here via hasMember. 

Represents a strabismus examination. Unlike most examinations in [use case 2, group A](usecases.md#group-a-direct-observations), this is not a single measurement: it is made up of several possible sub-tests (cover test, ocular motility, near point of convergence, stereopsis, prism cover test, Krimsky test, and others), evaluated as needed for the specific clinical case, patient age, and available equipment. No two strabismus exams necessarily include the same set of sub-tests.

### Architecture

`StrabismusExam` is a panel `Observation` (`value[x]` is `0..0`) that groups together whichever sub-tests were actually performed, via `hasMember`. `hasMember` is intentionally open (`0..*`, not bound to a fixed list of profiles): the set of sub-tests recognized by this guide is expected to grow over time, and a clinical team may also record sub-tests not yet covered here.

The sub-tests fall into two groups, based on their structure:

**Direct sub-tests** produce a single result and do not vary by gaze position: [CoverTest](StructureDefinition-cover-test.md), [OcularMotility](StructureDefinition-ocular-motility.md), [NearPointOfConvergence](StructureDefinition-near-point-of-convergence.md), [ConvergenceAssessment](StructureDefinition-convergence-assessment.md), [StereopsisTest](StructureDefinition-stereopsis-test.md).

**Position-based sub-tests** are performed across multiple gaze positions (primary position, right gaze, up-and-right gaze, and so on), with one measurement or finding recorded per position: [PrismCoverTest](StructureDefinition-prism-cover-test.md), [KrimskyTest](StructureDefinition-krimsky-test.md), [HirschbergTest](StructureDefinition-hirschberg-test.md), [RedFilterLightTest](StructureDefinition-red-filter-light-test.md), [Worth4DotTest](StructureDefinition-worth-4-dot-test.md). Each of these is itself a small panel: it groups its per-position results via `hasMember`, referencing a shared reusable pattern, [GazePositionMeasurement](StructureDefinition-gaze-position-measurement.md), once per gaze position tested.

`GazePositionMeasurement` supports two kinds of per-position result through optional components: a quantitative prism diopter deviation (`horizontalDeviation`, `verticalDeviation`), used by `PrismCoverTest` and `KrimskyTest`; and a qualitative `finding` (for example fusion, suppression, diplopia), used by `HirschbergTest`, `RedFilterLightTest`, and `Worth4DotTest`. A single shared pattern is used for both cases, rather than two separate profiles, since only the choice of component differs.

> This list of sub-tests is not exhaustive. Other tests exist in practice (for example, additional stereopsis test types beyond what this guide currently distinguishes) and may be added to this guide over time, following the same patterns established here.

```
graph TD
    SE[StrabismusExam<br/>panel] -->|hasMember| CT[CoverTest]
    SE -->|hasMember| OM[OcularMotility]
    SE -->|hasMember| PPC[NearPointOfConvergence]
    SE -->|hasMember| CA[ConvergenceAssessment]
    SE -->|hasMember| ST[StereopsisTest]
    SE -->|hasMember| PCT[PrismCoverTest]
    SE -->|hasMember| KT[KrimskyTest]

    PCT -->|hasMember| GPM1[GazePositionMeasurement<br/>primary position]
    PCT -->|hasMember| GPM2[GazePositionMeasurement<br/>right gaze]
    KT -->|hasMember| GPM3[GazePositionMeasurement<br/>primary position]

    GPM1 -.-> COMP1["fixatingEye, horizontalDeviation,<br/>verticalDeviation"]

```

### Design decisions

**Fixating eye vs. measured eye.** A recurring source of confusion in strabismus testing is that measurements are described relative to which eye is fixating (for example "FOD", fixing with the right eye), while the actual deviation being measured belongs to the **other** eye. To avoid this ambiguity, this guide separates the two explicitly: `bodySite` (via the standard extension to [OcularBodyStructure](StructureDefinition-ocular-body-structure.md)) always identifies the eye being **measured** (the deviating eye), while a separate `fixatingEye` component (on `GazePositionMeasurement`) identifies which eye was **fixating** during that specific measurement. The two are never combined into a single field.

**Flexible components, not a fixed checklist.** None of the sub-test profiles enforce a required set of components. Which aspects are assessed and recorded depends on the clinical case, the patient's age, and what equipment is available.

**Open terminology.** Several sub-test profiles (`CoverTest`, `OcularMotility`, `ConvergenceAssessment`, and others) leave their finding values as an open `CodeableConcept`, explicitly noted as "terminology to be confirmed" in their FSH source. No SNOMED CT or LOINC binding has been verified for these specific findings yet; this is left as an open item rather than guessing at codes.

> This architecture was defined by the guide's author directly, as a case where enough clinical judgment was already available to model it without deferring to further ophthalmologist review (unlike the lower-priority profiles still pending clinical validation).

**Examples:** [Strabismus exam panel](Observation-StrabismusExamExample.md)

**Usages:**

* Examples for this Profile: [Observation/StrabismusExamExample](Observation-StrabismusExamExample.md)
* CapabilityStatements using this Profile: [FHIR4Eyes Server Capability Statement](CapabilityStatement-FHIR4EyesCapabilityStatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir4eyes.core|current/StructureDefinition/StructureDefinition-strabismus-exam.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-strabismus-exam.csv), [Excel](StructureDefinition-strabismus-exam.xlsx), [Schematron](StructureDefinition-strabismus-exam.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "strabismus-exam",
  "url" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/strabismus-exam",
  "version" : "0.4.0",
  "name" : "StrabismusExam",
  "title" : "Strabismus Exam",
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
  "description" : "Represents a strabismus examination as a panel grouping together whichever\r\nsub-tests were actually performed for this patient (for example, cover test, motility,\r\nnear point of convergence, stereopsis, prism cover test, Krimsky test). Not every possible\r\nsub-test is performed for every patient; this profile does not enforce a fixed checklist.\r\nEach sub-test is recorded as its own Observation, referenced here via hasMember.",
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
      "short" : "Identifies this as a strabismus exam panel",
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
      "max" : "0"
    },
    {
      "id" : "Observation.note",
      "path" : "Observation.note",
      "mustSupport" : true
    },
    {
      "id" : "Observation.hasMember",
      "path" : "Observation.hasMember",
      "short" : "Any sub-test performed as part of this strabismus exam (e.g. cover test, motility, PPC, stereopsis, prism cover test, Krimsky)",
      "mustSupport" : true
    }]
  }
}

```
