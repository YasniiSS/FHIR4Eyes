# Corneal Tomography Report - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Corneal Tomography Report**

## Resource Profile: Corneal Tomography Report 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/StructureDefinition/corneal-tomography-report | *Version*:0.4.0 |
| Draft as of 2026-10-20 | *Computable Name*:CornealTomographyReport |

 
A specialization of OphthalmicDiagnosticReport for corneal tomography exams (e.g. Scheimpflug/Pentacam-style devices), grouping its six component analyses (CTAnteriorSurface, CTPosteriorSurface, CTPachymetry, CTAnteriorChamber, CTKeratoconusIndices, CTDensitometry) via result, following the same DiagnosticReport grouping pattern already used for OCT (see OphthalmicOCTRNFL and OphthalmicOCTMacula). 
Open question, not yet resolved: in practice, a tomography device may print these as separate reports or 'maps' (an anterior surface map, a posterior surface map, and so on) rather than a single integrated report. For now, this guide captures all six as results under a single combined report, since the current priority is representing the underlying data correctly rather than resolving the exact report/printout structure a given device produces. Whether this should instead be split into multiple report profiles is left open for future review. 

A modern corneal tomographer (Scheimpflug/Pentacam-style device) produces a single exam session that covers several genuinely distinct analyses: the shape of the front of the cornea, the shape of the back of the cornea, how thick the cornea is at each point, the anterior chamber behind it, derived keratoconus screening indices, and corneal transparency (densitometry). This guide represents each of these six analyses as its own `Observation` profile, grouped together under a single `CornealTomographyReport`, a specialization of [OphthalmicDiagnosticReport](StructureDefinition-ophthalmic-diagnostic-report.md) whose `result` is restricted to the six analyses: [CTAnteriorSurface](StructureDefinition-ct-anterior-surface.md), [CTPosteriorSurface](StructureDefinition-ct-posterior-surface.md), [CTPachymetry](StructureDefinition-ct-pachymetry.md), [CTAnteriorChamber](StructureDefinition-ct-anterior-chamber.md), [CTKeratoconusIndices](StructureDefinition-ct-keratoconus-indices.md), and [CTDensitometry](StructureDefinition-ct-densitometry.md). Not all six are necessarily present, depending on the device.

```
graph TD
    R[CornealTomographyReport] -->|result| A[CTAnteriorSurface<br/>54 components]
    R -->|result| B[CTPosteriorSurface<br/>7 components]
    R -->|result| C[CTPachymetry<br/>6 components]
    R -->|result| D[CTAnteriorChamber<br/>5 components]
    R -->|result| E[CTKeratoconusIndices<br/>19 components]
    R -->|result| F[CTDensitometry<br/>7 components]

```

### Design decisions

**Why six Observations, not one, and not fifty-plus.** This is the same underlying principle applied in the OCT profiles (see the "Component-based" note on [OphthalmicOCTRNFL](StructureDefinition-ophthalmic-oct-rnfl.md)), taken to its natural conclusion for a much richer exam. Values that describe the **same** underlying analysis — for example, all the different keratometry and elevation readings that describe the anterior corneal surface — are grouped as `component` entries within a single Observation, exactly like the optic nerve head geometry and TSNIT values of an OCT RNFL analysis. But `CTAnteriorSurface` and `CTPosteriorSurface` are **not** merged into one Observation with a "front/back" component, even though they share many parallel fields (K1, K2, Km, Q-value, elevation, BFS radius all appear in both). The distinction is not "are these numbers similar in shape", it is "are these numbers describing the same physical/optical entity". The anterior and posterior corneal surfaces are optically and clinically distinct surfaces — a keratorefractive surgeon reasons about them separately, and a device can output one without the other (for example, older Placido-based topographers only measure the anterior surface). Likewise, pachymetry (a thickness map), the anterior chamber (a different anatomical structure entirely), keratoconus indices (derived screening scores, not raw measurements), and densitometry (a transparency/light-scatter property, not a shape property) are each their own kind of analysis, so each gets its own Observation.

**Rule of thumb used throughout this guide:** if two values are two facets of describing the **same object at the same moment** (e.g. this scan's horizontal and vertical cup-to-disc ratios — both are "how large is the optic cup relative to the disc, broken down by direction"), they are components of one Observation. If two values describe **different objects or different kinds of analysis** (e.g. how the front of the cornea curves vs. how thick the cornea is), they belong in separate Observations, tied together by the parent `DiagnosticReport`.

**A note on the HL7 Eye Care IG.** Corneal tomography of this depth (Scheimpflug-based, with keratoconus screening indices) is not covered by the HL7 Eye Care IG at all; this entire family of profiles is a FHIR4Eyes contribution, not an adaptation of an existing pattern.

**Grouping under one report is provisional.** In practice, a tomography device may print these as separate reports or "maps" (an anterior surface map, a posterior surface map, and so on) rather than a single integrated report. Whether these six analyses should be grouped under a single report, or split to mirror how a given device physically prints separate "maps", is left open for future review, since the current priority is representing the underlying data correctly.

**Sourced directly from the FHIR4Eyes Observations catalog.** Every component in these six profiles, including the components that reference specific DICOM Sup 168 tags (vertex location, pupil centroid, map type, and others), was taken directly from the project's maintained variable catalog, not invented for this guide. No confirmed SNOMED CT or LOINC binding exists yet for these analyses, so each profile's `code` and every component use a local FHIR4Eyes code ([FHIR4EyesCS](CodeSystem-fhir4eyes-cs.md)) pending an external code, following this guide's terminology rigor (see [Terminology](terminology.md)).

**Examples:** [Corneal tomography report: right eye](DiagnosticReport-CornealTomographyReportRightEyeExample.md)

**Usages:**

* Examples for this Profile: [DiagnosticReport/CornealTomographyReportRightEyeExample](DiagnosticReport-CornealTomographyReportRightEyeExample.md)
* CapabilityStatements using this Profile: [FHIR4Eyes Server Capability Statement](CapabilityStatement-FHIR4EyesCapabilityStatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir4eyes.core|current/StructureDefinition/StructureDefinition-corneal-tomography-report.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-corneal-tomography-report.csv), [Excel](StructureDefinition-corneal-tomography-report.xlsx), [Schematron](StructureDefinition-corneal-tomography-report.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "corneal-tomography-report",
  "url" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/corneal-tomography-report",
  "version" : "0.4.0",
  "name" : "CornealTomographyReport",
  "title" : "Corneal Tomography Report",
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
  "description" : "A specialization of OphthalmicDiagnosticReport for corneal tomography exams\n(e.g. Scheimpflug/Pentacam-style devices), grouping its six component analyses\n(CTAnteriorSurface, CTPosteriorSurface, CTPachymetry, CTAnteriorChamber,\nCTKeratoconusIndices, CTDensitometry) via result, following the same DiagnosticReport\ngrouping pattern already used for OCT (see OphthalmicOCTRNFL and OphthalmicOCTMacula).\n\nOpen question, not yet resolved: in practice, a tomography device may print these as\nseparate reports or 'maps' (an anterior surface map, a posterior surface map, and so on)\nrather than a single integrated report. For now, this guide captures all six as results\nunder a single combined report, since the current priority is representing the underlying\ndata correctly rather than resolving the exact report/printout structure a given device\nproduces. Whether this should instead be split into multiple report profiles is left open\nfor future review.",
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DiagnosticReport",
  "baseDefinition" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-diagnostic-report",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DiagnosticReport",
      "path" : "DiagnosticReport"
    },
    {
      "id" : "DiagnosticReport.result",
      "path" : "DiagnosticReport.result",
      "short" : "The corneal tomography component analyses available for this exam (up to six: CTAnteriorSurface, CTPosteriorSurface, CTPachymetry, CTAnteriorChamber, CTKeratoconusIndices, CTDensitometry); not all six are necessarily present, depending on the device",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ct-anterior-surface",
        "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ct-posterior-surface",
        "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ct-pachymetry",
        "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ct-anterior-chamber",
        "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ct-keratoconus-indices",
        "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ct-densitometry"]
      }]
    }]
  }
}

```
