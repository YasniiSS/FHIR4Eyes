# Ophthalmic OCT Macula - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ophthalmic OCT Macula**

## Resource Profile: Ophthalmic OCT Macula 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-oct-macula | *Version*:0.4.0 |
| Draft as of 2026-10-20 | *Computable Name*:OphthalmicOCTMacula |

 
Represents an OCT macular thickness analysis using the ETDRS 9-sector grid, plus device-reported acquisition metadata (dilation, signal strength), DICOM-aligned classification fields (thickness definition, per-subfield deviation category, anatomic reference point) and an overall normative classification. Sourced directly from the FHIR4Eyes Observations catalog (OCT Macula section), replacing an earlier, less complete version of this profile. 

Represents an OCT macular thickness analysis using the ETDRS 9-sector grid, plus device-reported acquisition metadata (dilation, signal strength) and DICOM Sup 152 classification fields (thickness definition, deviation category, anatomic reference point). It is grouped under an [OphthalmicDiagnosticReport](StructureDefinition-ophthalmic-diagnostic-report.md) together with the [OphthalmicImagingStudy](StructureDefinition-ophthalmic-imaging-study.md) it was derived from, alongside its companion optic nerve head/RNFL analysis, [OphthalmicOCTRNFL](StructureDefinition-ophthalmic-oct-rnfl.md). Sourced directly from the FHIR4Eyes Observations catalog (OCT Macula section).

```
graph TD
    R[OphthalmicDiagnosticReport<br/>OCT report] -->|imagingStudy| S[OphthalmicImagingStudy<br/>RNFL + Macula series]
    R -->|result| RNFL[OphthalmicOCTRNFL<br/>25 components]
    R -->|result| MAC[OphthalmicOCTMacula<br/>22 components]

    RNFL -.-> RNFLG["cup/disc geometry, DDLS,<br/>TSNIT mean/SD"]
    MAC -.-> MACG["ETDRS 9-sector grid,<br/>acquisition metadata"]

```

### Design decisions

**Component-based, diverging from the HL7 Eye Care IG's atomic pattern.** The HL7 Eye Care IG represents each individual sector value (for example, a single macular subfield thickness) as its own separate `Observation`, each with a single LOINC code and a single value. This guide instead represents each full analysis as a single `Observation` with multiple `component` entries, one per measurement.

This is a deliberate divergence, not an oversight: the values produced by a single OCT scan are, by FHIR's own definition of `component`, "multiple component observations for a single measurement" (the same pattern used for systolic/diastolic blood pressure). They are produced together, from the same scan, at the same instant, for the same eye; modeling them as separate, disconnected `Observation` resources would lose that inherent grouping and require an additional panel/`hasMember` layer to reconstruct it. The component-based approach keeps that grouping implicit in the resource's own structure.

**LOINC codes for the ETDRS grid.** The profile's own `code` is fixed to LOINC `57119-0` (Optical coherence tomography panel). LOINC component codes are assigned for the center subfield thickness (`cmt`, `57109-1`, required), the center point thickness (`57108-3`), the four inner and four outer ETDRS sectors (`57110-9` to `57117-4`), and the total grid volume (`57118-2`). The remaining components (for example central minimum/maximum, volume per subfield, ETDRS grid diameters, the DICOM classification fields, dilation metadata and signal strength) use local FHIR4Eyes codes ([FHIR4EyesCS](CodeSystem-fhir4eyes-cs.md)) pending an external code, rather than guessing at one, consistent with this guide's terminology rigor (see [Terminology](terminology.md)).

**Signal strength.** The `inv-oct-signal` invariant raises a warning when the `signalStrength` component is absent.

**Examples:** [OCT macula: right eye](Observation-OCTMaculaRightEyeExample.md), [OCT macula: left eye](Observation-OCTMaculaLeftEyeExample2.md), [OCT report (RNFL + macula)](DiagnosticReport-OCTDiagnosticReportExample.md), [OCT macula report](DiagnosticReport-OCTMaculaDiagnosticReportExample.md)

**Usages:**

* Examples for this Profile: [Observation/OCTMaculaLeftEyeExample2](Observation-OCTMaculaLeftEyeExample2.md) and [Observation/OCTMaculaRightEyeExample](Observation-OCTMaculaRightEyeExample.md)
* CapabilityStatements using this Profile: [FHIR4Eyes Server Capability Statement](CapabilityStatement-FHIR4EyesCapabilityStatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir4eyes.core|current/StructureDefinition/StructureDefinition-ophthalmic-oct-macula.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ophthalmic-oct-macula.csv), [Excel](StructureDefinition-ophthalmic-oct-macula.xlsx), [Schematron](StructureDefinition-ophthalmic-oct-macula.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ophthalmic-oct-macula",
  "url" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-oct-macula",
  "version" : "0.4.0",
  "name" : "OphthalmicOCTMacula",
  "title" : "Ophthalmic OCT Macula",
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
  "description" : "Represents an OCT macular thickness analysis using the ETDRS 9-sector grid,\r\nplus device-reported acquisition metadata (dilation, signal strength), DICOM-aligned\r\nclassification fields (thickness definition, per-subfield deviation category, anatomic\r\nreference point) and an overall normative classification. Sourced directly from the FHIR4Eyes Observations catalog (OCT Macula section),\r\nreplacing an earlier, less complete version of this profile.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001",
      "display" : "World"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "dicom",
    "uri" : "http://dicom.nema.org/medical/dicom/current/output/chtml/part06/chapter_6.html",
    "name" : "DICOM",
    "comment" : "Informative correspondence between this profile's components and DICOM attributes / context groups. Not a conformance requirement."
  },
  {
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
        "key" : "inv-oct-signal",
        "severity" : "warning",
        "human" : "OCT signal strength should be documented",
        "expression" : "component.where(code.coding.where(system = 'https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs' and code = 'signal-strength').exists()).exists()",
        "source" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-oct-macula"
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
      "short" : "LOINC 57119-0 — OCT macular analysis panel",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "57119-0",
          "display" : "Optical coherence tomography panel"
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
      "id" : "Observation.interpretation",
      "path" : "Observation.interpretation",
      "short" : "Overall normative database classification of this analysis",
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://YasniiSS.github.io/fhir4eyes/ValueSet/normative-classification-vs"
      }
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
      "short" : "Acquisition device (manufacturer, model, software version)",
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
      },
      "min" : 1
    },
    {
      "id" : "Observation.component:cmt",
      "path" : "Observation.component",
      "sliceName" : "cmt",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:cmt.code",
      "path" : "Observation.component.code",
      "short" : "Central macular thickness (CMT) - central subfield thickness (1mm), primary variable",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "57109-1",
          "display" : "Macular grid.center subfield thickness by OCT"
        }]
      }
    },
    {
      "id" : "Observation.component:cmt.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:center",
      "path" : "Observation.component",
      "sliceName" : "center",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:center.code",
      "path" : "Observation.component.code",
      "short" : "Center thickness - foveal center point thickness, from ETDRS grid",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "57108-3",
          "display" : "Macular grid.center point thickness by OCT"
        }]
      }
    },
    {
      "id" : "Observation.component:center.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:centralMin",
      "path" : "Observation.component",
      "sliceName" : "centralMin",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:centralMin.code",
      "path" : "Observation.component.code",
      "short" : "Central Min - minimum thickness in central subfield",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "central-subfield-thickness-min",
          "display" : "Central subfield thickness, minimum"
        }]
      }
    },
    {
      "id" : "Observation.component:centralMin.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:centralMax",
      "path" : "Observation.component",
      "sliceName" : "centralMax",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:centralMax.code",
      "path" : "Observation.component.code",
      "short" : "Central Max - maximum thickness in central subfield",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "central-subfield-thickness-max",
          "display" : "Central subfield thickness, maximum"
        }]
      }
    },
    {
      "id" : "Observation.component:centralMax.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:innerSup",
      "path" : "Observation.component",
      "sliceName" : "innerSup",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:innerSup.code",
      "path" : "Observation.component.code",
      "short" : "Inner Superior thickness - ETDRS inner ring superior subfield",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "57110-9",
          "display" : "Macular grid.inner superior subfield thickness by OCT"
        }]
      }
    },
    {
      "id" : "Observation.component:innerSup.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:innerNas",
      "path" : "Observation.component",
      "sliceName" : "innerNas",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:innerNas.code",
      "path" : "Observation.component.code",
      "short" : "Inner Nasal thickness - ETDRS inner ring nasal subfield",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "57111-7",
          "display" : "Macular grid.inner nasal subfield thickness by OCT"
        }]
      }
    },
    {
      "id" : "Observation.component:innerNas.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:innerInf",
      "path" : "Observation.component",
      "sliceName" : "innerInf",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:innerInf.code",
      "path" : "Observation.component.code",
      "short" : "Inner Inferior thickness - ETDRS inner ring inferior subfield",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "57112-5",
          "display" : "Macular grid.inner inferior subfield thickness by OCT"
        }]
      }
    },
    {
      "id" : "Observation.component:innerInf.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:innerTemp",
      "path" : "Observation.component",
      "sliceName" : "innerTemp",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:innerTemp.code",
      "path" : "Observation.component.code",
      "short" : "Inner Temporal thickness - ETDRS inner ring temporal subfield",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "57113-3",
          "display" : "Macular grid.inner temporal subfield thickness by OCT"
        }]
      }
    },
    {
      "id" : "Observation.component:innerTemp.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:outerSup",
      "path" : "Observation.component",
      "sliceName" : "outerSup",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:outerSup.code",
      "path" : "Observation.component.code",
      "short" : "Outer Superior thickness - ETDRS outer ring superior subfield",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "57114-1",
          "display" : "Macular grid.outer superior subfield thickness by OCT"
        }]
      }
    },
    {
      "id" : "Observation.component:outerSup.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:outerNas",
      "path" : "Observation.component",
      "sliceName" : "outerNas",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:outerNas.code",
      "path" : "Observation.component.code",
      "short" : "Outer Nasal thickness - ETDRS outer ring nasal subfield",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "57115-8",
          "display" : "Macular grid.outer nasal subfield thickness by OCT"
        }]
      }
    },
    {
      "id" : "Observation.component:outerNas.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:outerInf",
      "path" : "Observation.component",
      "sliceName" : "outerInf",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:outerInf.code",
      "path" : "Observation.component.code",
      "short" : "Outer Inferior thickness - ETDRS outer ring inferior subfield",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "57116-6",
          "display" : "Macular grid.outer inferior subfield thickness by OCT"
        }]
      }
    },
    {
      "id" : "Observation.component:outerInf.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:outerTemp",
      "path" : "Observation.component",
      "sliceName" : "outerTemp",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:outerTemp.code",
      "path" : "Observation.component.code",
      "short" : "Outer Temporal thickness - ETDRS outer ring temporal subfield",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "57117-4",
          "display" : "Macular grid.outer temporal subfield thickness by OCT"
        }]
      }
    },
    {
      "id" : "Observation.component:outerTemp.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:totalVol",
      "path" : "Observation.component",
      "sliceName" : "totalVol",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:totalVol.code",
      "path" : "Observation.component.code",
      "short" : "Total macular grid volume",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "57118-2",
          "display" : "Macular grid.total volume by OCT"
        }]
      }
    },
    {
      "id" : "Observation.component:totalVol.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:subfieldVol",
      "path" : "Observation.component",
      "sliceName" : "subfieldVol",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:subfieldVol.code",
      "path" : "Observation.component.code",
      "short" : "Total volume per subfield - volume per ETDRS subfield",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "macular-subfield-volume",
          "display" : "Macular ETDRS subfield volume"
        }]
      }
    },
    {
      "id" : "Observation.component:subfieldVol.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:etdrsGrid",
      "path" : "Observation.component",
      "sliceName" : "etdrsGrid",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:etdrsGrid.code",
      "path" : "Observation.component.code",
      "short" : "ETDRS circle diameters - measurement grid diameters used, usually 1/3/6mm",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "etdrs-grid-diameters",
          "display" : "ETDRS grid circle diameters"
        }]
      }
    },
    {
      "id" : "Observation.component:etdrsGrid.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Observation.component:thicknessDef",
      "path" : "Observation.component",
      "sliceName" : "thicknessDef",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "(0022,1445) Retinal Thickness Definition Code Sequence"
      },
      {
        "identity" : "dicom",
        "map" : "CID 4262 Retinal Thickness Definition"
      }]
    },
    {
      "id" : "Observation.component:thicknessDef.code",
      "path" : "Observation.component.code",
      "short" : "Retinal thickness definition - how thickness is defined (ILM to RPE or ILM to BM), critical for device comparison",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "retinal-thickness-definition",
          "display" : "Retinal thickness definition"
        }]
      }
    },
    {
      "id" : "Observation.component:thicknessDef.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Observation.component:deviationCategory",
      "path" : "Observation.component",
      "sliceName" : "deviationCategory",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "CID 4265 Ophthalmic Thickness Deviation Category"
      }]
    },
    {
      "id" : "Observation.component:deviationCategory.code",
      "path" : "Observation.component.code",
      "short" : "Thickness deviation category - per-subfield detail of the normative database classification (the overall result goes in interpretation)",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "normative-deviation-category",
          "display" : "Normative database deviation category"
        }]
      }
    },
    {
      "id" : "Observation.component:deviationCategory.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://YasniiSS.github.io/fhir4eyes/ValueSet/normative-classification-vs"
      }
    },
    {
      "id" : "Observation.component:anatomicRef",
      "path" : "Observation.component",
      "sliceName" : "anatomicRef",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "CID 4266 Ophthalmic Anatomic Structure Reference Point"
      }]
    },
    {
      "id" : "Observation.component:anatomicRef.code",
      "path" : "Observation.component.code",
      "short" : "Anatomic reference point - structure used as reference (fovea or disc center)",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "anatomic-reference-point",
          "display" : "Ophthalmic anatomic reference point"
        }]
      }
    },
    {
      "id" : "Observation.component:anatomicRef.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Observation.component:pupilDilated",
      "path" : "Observation.component",
      "sliceName" : "pupilDilated",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "(0022,000D) Pupil Dilated"
      }]
    },
    {
      "id" : "Observation.component:pupilDilated.code",
      "path" : "Observation.component.code",
      "short" : "Pupil dilated - whether pupil was dilated",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "pupil-dilated",
          "display" : "Pupil dilated"
        }]
      }
    },
    {
      "id" : "Observation.component:pupilDilated.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Observation.component:mydriaticAgent",
      "path" : "Observation.component",
      "sliceName" : "mydriaticAgent",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "(0022,001C) Mydriatic Agent Code Sequence"
      }]
    },
    {
      "id" : "Observation.component:mydriaticAgent.code",
      "path" : "Observation.component.code",
      "short" : "Mydriatic agent - dilating agent used",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "mydriatic-agent",
          "display" : "Mydriatic agent"
        }]
      }
    },
    {
      "id" : "Observation.component:mydriaticAgent.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Observation.component:dilationDegree",
      "path" : "Observation.component",
      "sliceName" : "dilationDegree",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "(0022,000E) Degree of Dilation"
      }]
    },
    {
      "id" : "Observation.component:dilationDegree.code",
      "path" : "Observation.component.code",
      "short" : "Degree of dilation - pupil dilation in mm",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "pupil-dilation-degree",
          "display" : "Degree of pupil dilation"
        }]
      }
    },
    {
      "id" : "Observation.component:dilationDegree.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:signalStrength",
      "path" : "Observation.component",
      "sliceName" : "signalStrength",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "(0022,1470) Ophthalmic Thickness Map Quality Rating Sequence"
      }]
    },
    {
      "id" : "Observation.component:signalStrength.code",
      "path" : "Observation.component.code",
      "short" : "Scan quality / signal strength as reported by the device; scale is device-specific",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "signal-strength",
          "display" : "Scan signal strength / quality"
        }]
      }
    },
    {
      "id" : "Observation.component:signalStrength.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    }]
  }
}

```
