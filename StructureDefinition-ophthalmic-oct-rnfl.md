# Ophthalmic OCT RNFL - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ophthalmic OCT RNFL**

## Resource Profile: Ophthalmic OCT RNFL 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-oct-rnfl | *Version*:0.2.0 |
| Draft as of 2026-08-25 | *Computable Name*:OphthalmicOCTRNFL |

 
Represents an OCT optic nerve head (ONH) and retinal nerve fiber layer (RNFL) analysis: cup and disc geometry, cup-to-disc ratios, Disc Damage Likelihood Scale (DDLS), and the global TSNIT (Temporal-Superior-Nasal-Inferior-Temporal) RNFL profile statistics, alongside acquisition metadata and an overall normative classification. Sourced directly from the FHIR4Eyes Observations catalog (OCT Optic Disc/RNFL section), replacing an earlier, quadrant-thickness-only version of this profile. 

**Usages:**

* Examples for this Profile: [Observation/OCTRNFLLeftEyeExample](Observation-OCTRNFLLeftEyeExample.md) and [Observation/OCTRNFLRightEyeExample](Observation-OCTRNFLRightEyeExample.md)

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
  "version" : "0.2.0",
  "name" : "OphthalmicOCTRNFL",
  "title" : "Ophthalmic OCT RNFL",
  "status" : "draft",
  "date" : "2026-08-25T00:41:24+00:00",
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
  "description" : "Represents an OCT optic nerve head (ONH) and retinal nerve fiber layer (RNFL)\nanalysis: cup and disc geometry, cup-to-disc ratios, Disc Damage Likelihood Scale (DDLS),\nand the global TSNIT (Temporal-Superior-Nasal-Inferior-Temporal) RNFL profile statistics,\nalongside acquisition metadata and an overall normative classification. Sourced directly\nfrom the FHIR4Eyes Observations catalog (OCT Optic Disc/RNFL section), replacing an\nearlier, quadrant-thickness-only version of this profile.",
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
      "short" : "Identifies this as an OCT optic disc / RNFL analysis",
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
      "id" : "Observation.interpretation",
      "path" : "Observation.interpretation",
      "short" : "Comparison with normative database: normal, borderline, or outside normal limits",
      "max" : "1",
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
      "short" : "Cup area - optic cup area, from ONH analysis"
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
      "short" : "Cup volume - optic cup volume, from ONH analysis"
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
      "short" : "Rim volume - neuroretinal rim volume, from ONH analysis"
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
      "short" : "C/D horizontal - cup-to-disc ratio horizontal, from ONH analysis"
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
      "short" : "C/D vertical - cup-to-disc ratio vertical, from ONH/Cirrus"
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
      "short" : "Disc diameter horizontal - from ONH analysis"
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
      "short" : "Disc diameter vertical - from ONH analysis"
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
      "short" : "Disc diameter mean"
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
      "short" : "Cup diameter horizontal"
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
      "short" : "Cup diameter vertical"
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
      "short" : "Cup diameter mean"
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
      "short" : "Mean cup depth - average depth of the optic cup, from ONH analysis"
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
      "short" : "Max cup depth - maximum depth of the optic cup, from ONH analysis"
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
      "short" : "Disc vert/horiz ratio - disc vertical to horizontal ratio"
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
      "short" : "Cup vert/horiz ratio - cup vertical to horizontal ratio"
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
      "short" : "Rim/Disc ratio - ratio of rim area to disc area, from ONH analysis"
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
      "short" : "Rim absence - angular extent of absent rim, from ONH analysis"
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
      "short" : "DDLS - Disc Damage Likelihood Scale, staging 1-10"
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
      "short" : "RNFL Symmetry - symmetry between OD and OS RNFL, from Cirrus report"
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
      "short" : "Mean TSNIT - average RNFL across TSNIT profile, from ONH analysis"
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
      "short" : "TSNIT std deviation - standard deviation of TSNIT profile, from ONH analysis"
    },
    {
      "id" : "Observation.component:tsnitSD.value[x]",
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
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:signalStrength.code",
      "path" : "Observation.component.code",
      "short" : "Signal strength - quality/reliability of scan, from Cirrus (0-10)"
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
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:thicknessDef.code",
      "path" : "Observation.component.code",
      "short" : "DICOM CID 4262"
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
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:pupilDilated.code",
      "path" : "Observation.component.code",
      "short" : "DICOM (0022,000D)"
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
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:mydriaticAgent.code",
      "path" : "Observation.component.code",
      "short" : "DICOM (0022,000E)"
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
