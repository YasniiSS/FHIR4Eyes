# Ophthalmic OCT RNFL - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ophthalmic OCT RNFL**

## Resource Profile: Ophthalmic OCT RNFL 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-oct-rnfl | *Version*:0.4.0 |
| Draft as of 2026-10-20 | *Computable Name*:OphthalmicOCTRNFL |

 
Represents an OCT optic nerve head (ONH) and retinal nerve fiber layer (RNFL) analysis: cup and disc geometry, cup-to-disc ratios, Disc Damage Likelihood Scale (DDLS), the global TSNIT (Temporal-Superior-Nasal-Inferior-Temporal) RNFL profile statistics and the quadrant average RNFL thicknesses, alongside acquisition metadata and an overall normative classification. Sourced directly from the FHIR4Eyes Observations catalog (OCT Optic Disc/RNFL section), replacing an earlier, quadrant-thickness-only version of this profile. 

Represents an OCT optic nerve head (ONH)/retinal nerve fiber layer (RNFL) analysis: cup and disc geometry, cup-to-disc ratios, Disc Damage Likelihood Scale (DDLS), and the global TSNIT (Temporal-Superior-Nasal-Inferior-Temporal) RNFL profile statistics, alongside acquisition metadata and an overall normative classification. It is grouped under an [OphthalmicDiagnosticReport](StructureDefinition-ophthalmic-diagnostic-report.md) together with the [OphthalmicImagingStudy](StructureDefinition-ophthalmic-imaging-study.md) it was derived from, alongside its companion macular analysis, [OphthalmicOCTMacula](StructureDefinition-ophthalmic-oct-macula.md). Sourced directly from the FHIR4Eyes Observations catalog (OCT Optic Disc/RNFL section).

```
graph TD
    R[OphthalmicDiagnosticReport<br/>OCT report] -->|imagingStudy| S[OphthalmicImagingStudy<br/>RNFL + Macula series]
    R -->|result| RNFL[OphthalmicOCTRNFL<br/>25 components]
    R -->|result| MAC[OphthalmicOCTMacula<br/>22 components]

    RNFL -.-> RNFLG["cup/disc geometry, DDLS,<br/>TSNIT mean/SD"]
    MAC -.-> MACG["ETDRS 9-sector grid,<br/>acquisition metadata"]

```

### Design decisions

**Component-based, diverging from the HL7 Eye Care IG's atomic pattern.** The HL7 Eye Care IG represents each individual sector value (for example, "RNFL superior thickness") as its own separate `Observation`, each with a single LOINC code and a single value. This guide instead represents each full analysis as a single `Observation` with multiple `component` entries, one per measurement.

This is a deliberate divergence, not an oversight: the values produced by a single OCT scan are, by FHIR's own definition of `component`, "multiple component observations for a single measurement" (the same pattern used for systolic/diastolic blood pressure). They are produced together, from the same scan, at the same instant, for the same eye; modeling them as separate, disconnected `Observation` resources would lose that inherent grouping and require an additional panel/`hasMember` layer to reconstruct it. The component-based approach keeps that grouping implicit in the resource's own structure.

**Laterality-neutral component codes.** The HL7 Eye Care IG's RNFL value sets use **different** LOINC codes for the right versus left eye (for example, `86276-3` for right eye superior RNFL thickness, `86277-1` for left eye). Because this guide's `component[x].code` is fixed once per profile (not per instance), it cannot be pre-bound to a laterality-specific code that would work for both eyes. The profile's own `code` is therefore fixed to the laterality-neutral LOINC `86291-2` (RNFL panel by OCT), and every component (ONH cup/disc geometry, ratios, DDLS, inter-eye symmetry, TSNIT mean and SD, and the acquisition metadata) uses a local, laterality-neutral FHIR4Eyes code ([FHIR4EyesCS](CodeSystem-fhir4eyes-cs.md)) pending an external code. For the TSNIT mean, instances may add an eye-specific LOINC as an optional second coding; the eye itself is indicated via `bodySite`.

**Normative classification.** The overall classification (Within Normal Limits / Borderline / Outside Normal Limits) commonly shown in commercial vendor reports (see the reference reports this guide's examples are based on) is recorded in `Observation.interpretation` (`0..1`), not as a component. It does not exist in the HL7 Eye Care IG's RNFL value set, and no value set binding is set on `interpretation` yet.

**Signal strength.** The `inv-oct-signal` invariant raises a warning when the `signalStrength` component is absent.

**Examples:** [OCT RNFL: right eye](Observation-OCTRNFLRightEyeExample.md), [OCT RNFL: left eye](Observation-OCTRNFLLeftEyeExample.md), [OCT report (RNFL + macula)](DiagnosticReport-OCTDiagnosticReportExample.md)

**Usages:**

* Examples for this Profile: [Observation/OCTRNFLLeftEyeExample](Observation-OCTRNFLLeftEyeExample.md) and [Observation/OCTRNFLRightEyeExample](Observation-OCTRNFLRightEyeExample.md)
* CapabilityStatements using this Profile: [FHIR4Eyes Server Capability Statement](CapabilityStatement-FHIR4EyesCapabilityStatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir4eyes.core|current/StructureDefinition/StructureDefinition-ophthalmic-oct-rnfl.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ophthalmic-oct-rnfl.csv), [Excel](StructureDefinition-ophthalmic-oct-rnfl.xlsx), [Schematron](StructureDefinition-ophthalmic-oct-rnfl.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ophthalmic-oct-rnfl",
  "url" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-oct-rnfl",
  "version" : "0.4.0",
  "name" : "OphthalmicOCTRNFL",
  "title" : "Ophthalmic OCT RNFL",
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
  "description" : "Represents an OCT optic nerve head (ONH) and retinal nerve fiber layer (RNFL)\r\nanalysis: cup and disc geometry, cup-to-disc ratios, Disc Damage Likelihood Scale (DDLS),\r\nthe global TSNIT (Temporal-Superior-Nasal-Inferior-Temporal) RNFL profile statistics and\r\nthe quadrant average RNFL thicknesses, alongside acquisition metadata and an overall\r\nnormative classification. Sourced directly from the FHIR4Eyes Observations catalog (OCT\r\nOptic Disc/RNFL section), replacing an earlier, quadrant-thickness-only version of this profile.",
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
        "source" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-oct-rnfl"
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
      "short" : "LOINC 86291-2 — RNFL panel by OCT",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "86291-2",
          "display" : "Retina Retinal nerve fiber layer panel by OCT"
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
      }
    },
    {
      "id" : "Observation.component:cupArea",
      "path" : "Observation.component",
      "sliceName" : "cupArea",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:cupArea.code",
      "path" : "Observation.component.code",
      "short" : "Cup area - optic cup area, from ONH analysis",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "optic-cup-area",
          "display" : "Optic cup area"
        }]
      }
    },
    {
      "id" : "Observation.component:cupArea.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:cupVol",
      "path" : "Observation.component",
      "sliceName" : "cupVol",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:cupVol.code",
      "path" : "Observation.component.code",
      "short" : "Cup volume - optic cup volume, from ONH analysis",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "optic-cup-volume",
          "display" : "Optic cup volume"
        }]
      }
    },
    {
      "id" : "Observation.component:cupVol.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:rimVol",
      "path" : "Observation.component",
      "sliceName" : "rimVol",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:rimVol.code",
      "path" : "Observation.component.code",
      "short" : "Rim volume - neuroretinal rim volume, from ONH analysis",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "neuroretinal-rim-volume",
          "display" : "Neuroretinal rim volume"
        }]
      }
    },
    {
      "id" : "Observation.component:rimVol.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:cdH",
      "path" : "Observation.component",
      "sliceName" : "cdH",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:cdH.code",
      "path" : "Observation.component.code",
      "short" : "C/D horizontal - cup-to-disc ratio horizontal, from ONH analysis",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "cup-disc-ratio-horizontal",
          "display" : "Cup-to-disc ratio, horizontal"
        }]
      }
    },
    {
      "id" : "Observation.component:cdH.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:cdV",
      "path" : "Observation.component",
      "sliceName" : "cdV",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:cdV.code",
      "path" : "Observation.component.code",
      "short" : "C/D vertical - cup-to-disc ratio vertical, from ONH analysis",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "cup-disc-ratio-vertical",
          "display" : "Cup-to-disc ratio, vertical"
        }]
      }
    },
    {
      "id" : "Observation.component:cdV.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:discDiamH",
      "path" : "Observation.component",
      "sliceName" : "discDiamH",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:discDiamH.code",
      "path" : "Observation.component.code",
      "short" : "Disc diameter horizontal - from ONH analysis",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "optic-disc-diameter-horizontal",
          "display" : "Optic disc diameter, horizontal"
        }]
      }
    },
    {
      "id" : "Observation.component:discDiamH.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:discDiamV",
      "path" : "Observation.component",
      "sliceName" : "discDiamV",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:discDiamV.code",
      "path" : "Observation.component.code",
      "short" : "Disc diameter vertical - from ONH analysis",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "optic-disc-diameter-vertical",
          "display" : "Optic disc diameter, vertical"
        }]
      }
    },
    {
      "id" : "Observation.component:discDiamV.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:discDiamMean",
      "path" : "Observation.component",
      "sliceName" : "discDiamMean",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:discDiamMean.code",
      "path" : "Observation.component.code",
      "short" : "Disc diameter mean",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "optic-disc-diameter-mean",
          "display" : "Optic disc diameter, mean"
        }]
      }
    },
    {
      "id" : "Observation.component:discDiamMean.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:cupDiamH",
      "path" : "Observation.component",
      "sliceName" : "cupDiamH",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:cupDiamH.code",
      "path" : "Observation.component.code",
      "short" : "Cup diameter horizontal",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "optic-cup-diameter-horizontal",
          "display" : "Optic cup diameter, horizontal"
        }]
      }
    },
    {
      "id" : "Observation.component:cupDiamH.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:cupDiamV",
      "path" : "Observation.component",
      "sliceName" : "cupDiamV",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:cupDiamV.code",
      "path" : "Observation.component.code",
      "short" : "Cup diameter vertical",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "optic-cup-diameter-vertical",
          "display" : "Optic cup diameter, vertical"
        }]
      }
    },
    {
      "id" : "Observation.component:cupDiamV.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:cupDiamMean",
      "path" : "Observation.component",
      "sliceName" : "cupDiamMean",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:cupDiamMean.code",
      "path" : "Observation.component.code",
      "short" : "Cup diameter mean",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "optic-cup-diameter-mean",
          "display" : "Optic cup diameter, mean"
        }]
      }
    },
    {
      "id" : "Observation.component:cupDiamMean.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:cupDepthMean",
      "path" : "Observation.component",
      "sliceName" : "cupDepthMean",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:cupDepthMean.code",
      "path" : "Observation.component.code",
      "short" : "Mean cup depth - average depth of the optic cup, from ONH analysis",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "optic-cup-depth-mean",
          "display" : "Optic cup depth, mean"
        }]
      }
    },
    {
      "id" : "Observation.component:cupDepthMean.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:cupDepthMax",
      "path" : "Observation.component",
      "sliceName" : "cupDepthMax",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:cupDepthMax.code",
      "path" : "Observation.component.code",
      "short" : "Max cup depth - maximum depth of the optic cup, from ONH analysis",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "optic-cup-depth-max",
          "display" : "Optic cup depth, maximum"
        }]
      }
    },
    {
      "id" : "Observation.component:cupDepthMax.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:discVHratio",
      "path" : "Observation.component",
      "sliceName" : "discVHratio",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:discVHratio.code",
      "path" : "Observation.component.code",
      "short" : "Disc vert/horiz ratio - disc vertical to horizontal ratio",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "optic-disc-vertical-horizontal-ratio",
          "display" : "Optic disc vertical-to-horizontal diameter ratio"
        }]
      }
    },
    {
      "id" : "Observation.component:discVHratio.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:cupVHratio",
      "path" : "Observation.component",
      "sliceName" : "cupVHratio",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:cupVHratio.code",
      "path" : "Observation.component.code",
      "short" : "Cup vert/horiz ratio - cup vertical to horizontal ratio",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "optic-cup-vertical-horizontal-ratio",
          "display" : "Optic cup vertical-to-horizontal diameter ratio"
        }]
      }
    },
    {
      "id" : "Observation.component:cupVHratio.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:rimDiscRatio",
      "path" : "Observation.component",
      "sliceName" : "rimDiscRatio",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:rimDiscRatio.code",
      "path" : "Observation.component.code",
      "short" : "Rim/Disc ratio - ratio of rim area to disc area, from ONH analysis",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "rim-disc-area-ratio",
          "display" : "Neuroretinal rim-to-disc area ratio"
        }]
      }
    },
    {
      "id" : "Observation.component:rimDiscRatio.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:rimAbsence",
      "path" : "Observation.component",
      "sliceName" : "rimAbsence",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:rimAbsence.code",
      "path" : "Observation.component.code",
      "short" : "Rim absence - angular extent of absent rim, from ONH analysis",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "neuroretinal-rim-absence-extent",
          "display" : "Angular extent of neuroretinal rim absence"
        }]
      }
    },
    {
      "id" : "Observation.component:rimAbsence.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:ddls",
      "path" : "Observation.component",
      "sliceName" : "ddls",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:ddls.code",
      "path" : "Observation.component.code",
      "short" : "DDLS - Disc Damage Likelihood Scale, staging 1-10",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "disc-damage-likelihood-scale",
          "display" : "Disc Damage Likelihood Scale (DDLS) stage"
        }]
      }
    },
    {
      "id" : "Observation.component:ddls.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "Observation.component:rnflSymmetry",
      "path" : "Observation.component",
      "sliceName" : "rnflSymmetry",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:rnflSymmetry.code",
      "path" : "Observation.component.code",
      "short" : "Inter-eye RNFL profile correlation (0-1)",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "rnfl-symmetry",
          "display" : "RNFL inter-eye symmetry"
        }]
      }
    },
    {
      "id" : "Observation.component:rnflSymmetry.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:tsnit",
      "path" : "Observation.component",
      "sliceName" : "tsnit",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:tsnit.code",
      "path" : "Observation.component.code",
      "short" : "Mean TSNIT - average RNFL across TSNIT profile, from ONH analysis. Instances may add the eye-specific LOINC as an optional second coding: 86301-9 (right) / 86290-4 (left), both verified on tx.fhir.org",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "rnfl-thickness-mean-tsnit",
          "display" : "Mean RNFL thickness (TSNIT average)"
        }]
      }
    },
    {
      "id" : "Observation.component:tsnit.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:tsnitSD",
      "path" : "Observation.component",
      "sliceName" : "tsnitSD",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:tsnitSD.code",
      "path" : "Observation.component.code",
      "short" : "TSNIT std deviation - standard deviation of TSNIT profile, from ONH analysis",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "rnfl-thickness-tsnit-sd",
          "display" : "RNFL TSNIT profile standard deviation"
        }]
      }
    },
    {
      "id" : "Observation.component:tsnitSD.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:rnflSuperior",
      "path" : "Observation.component",
      "sliceName" : "rnflSuperior",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:rnflSuperior.code",
      "path" : "Observation.component.code",
      "short" : "Superior quadrant average peripapillary RNFL thickness",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "rnfl-thickness-superior",
          "display" : "RNFL average thickness, superior quadrant"
        }]
      }
    },
    {
      "id" : "Observation.component:rnflSuperior.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:rnflInferior",
      "path" : "Observation.component",
      "sliceName" : "rnflInferior",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:rnflInferior.code",
      "path" : "Observation.component.code",
      "short" : "Inferior quadrant average peripapillary RNFL thickness",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "rnfl-thickness-inferior",
          "display" : "RNFL average thickness, inferior quadrant"
        }]
      }
    },
    {
      "id" : "Observation.component:rnflInferior.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:rnflNasal",
      "path" : "Observation.component",
      "sliceName" : "rnflNasal",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:rnflNasal.code",
      "path" : "Observation.component.code",
      "short" : "Nasal quadrant average peripapillary RNFL thickness",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "rnfl-thickness-nasal",
          "display" : "RNFL average thickness, nasal quadrant"
        }]
      }
    },
    {
      "id" : "Observation.component:rnflNasal.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:rnflTemporal",
      "path" : "Observation.component",
      "sliceName" : "rnflTemporal",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:rnflTemporal.code",
      "path" : "Observation.component.code",
      "short" : "Temporal quadrant average peripapillary RNFL thickness",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "rnfl-thickness-temporal",
          "display" : "RNFL average thickness, temporal quadrant"
        }]
      }
    },
    {
      "id" : "Observation.component:rnflTemporal.value[x]",
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
      "short" : "Retinal thickness definition - how RNFL thickness is defined (ILM to RNFL boundary)",
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
    }]
  }
}

```
