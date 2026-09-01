# Ophthalmic OCT Macula - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ophthalmic OCT Macula**

## Resource Profile: Ophthalmic OCT Macula 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-oct-macula | *Version*:0.3.0 |
| Draft as of 2026-09-01 | *Computable Name*:OphthalmicOCTMacula |

 
Represents an OCT macular thickness analysis using the ETDRS 9-sector grid, plus device-reported acquisition metadata (dilation, signal strength) and DICOM Sup 152 classification fields (thickness definition, deviation category, anatomic reference point). Sourced directly from the FHIR4Eyes Observations catalog (OCT Macula section), replacing an earlier, less complete version of this profile. 

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
  "version" : "0.3.0",
  "name" : "OphthalmicOCTMacula",
  "title" : "Ophthalmic OCT Macula",
  "status" : "draft",
  "date" : "2026-09-01T17:43:23+00:00",
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
  "description" : "Represents an OCT macular thickness analysis using the ETDRS 9-sector grid,\nplus device-reported acquisition metadata (dilation, signal strength) and DICOM Sup 152\nclassification fields (thickness definition, deviation category, anatomic reference\npoint). Sourced directly from the FHIR4Eyes Observations catalog (OCT Macula section),\nreplacing an earlier, less complete version of this profile.",
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
        "key" : "inv-oct-signal",
        "severity" : "warning",
        "human" : "OCT signal strength should be documented",
        "expression" : "component.where(code.text = 'Signal strength').exists()",
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
      "short" : "Identifies this as an OCT macula analysis",
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
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-encounter"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
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
      "short" : "Central macular thickness (CMT) - central subfield thickness (1mm), primary variable"
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
      "short" : "Center thickness - foveal center point thickness, from ETDRS grid"
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
      "short" : "Central Min - minimum thickness in central subfield"
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
      "short" : "Central Max - maximum thickness in central subfield"
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
      "short" : "Inner Superior thickness - ETDRS inner ring superior subfield"
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
      "short" : "Inner Nasal thickness - ETDRS inner ring nasal subfield"
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
      "short" : "Inner Inferior thickness - ETDRS inner ring inferior subfield"
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
      "short" : "Inner Temporal thickness - ETDRS inner ring temporal subfield"
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
      "short" : "Outer Superior thickness - ETDRS outer ring superior subfield"
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
      "short" : "Outer Nasal thickness - ETDRS outer ring nasal subfield"
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
      "short" : "Outer Inferior thickness - ETDRS outer ring inferior subfield"
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
      "short" : "Outer Temporal thickness - ETDRS outer ring temporal subfield"
    },
    {
      "id" : "Observation.component:outerTemp.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:centralVol",
      "path" : "Observation.component",
      "sliceName" : "centralVol",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:centralVol.code",
      "path" : "Observation.component.code",
      "short" : "Central subfield volume - volume of central 1mm subfield"
    },
    {
      "id" : "Observation.component:centralVol.value[x]",
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
      "short" : "Total volume per subfield - volume per ETDRS subfield"
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
      "short" : "ETDRS circle diameters - measurement grid diameters used, usually 1/3/6mm"
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
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:thicknessDef.code",
      "path" : "Observation.component.code",
      "short" : "Retinal thickness definition - how thickness is defined (ILM to RPE or ILM to BM). DICOM CID 4262, critical for device comparison"
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
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:deviationCategory.code",
      "path" : "Observation.component.code",
      "short" : "Thickness deviation category - normative database classification per subfield. DICOM CID 4265"
    },
    {
      "id" : "Observation.component:deviationCategory.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Observation.component:anatomicRef",
      "path" : "Observation.component",
      "sliceName" : "anatomicRef",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:anatomicRef.code",
      "path" : "Observation.component.code",
      "short" : "Anatomic reference point - structure used as reference (fovea or disc center). DICOM CID 4266"
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
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:pupilDilated.code",
      "path" : "Observation.component.code",
      "short" : "Pupil dilated - whether pupil was dilated. DICOM (0022,000D)"
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
      "short" : "Mydriatic agent - dilating agent used. DICOM (0022,000E)"
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
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:dilationDegree.code",
      "path" : "Observation.component.code",
      "short" : "Degree of dilation - pupil dilation in mm. DICOM (0022,000F)"
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
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:signalStrength.code",
      "path" : "Observation.component.code",
      "short" : "Signal strength / Quality - scan quality index"
    },
    {
      "id" : "Observation.component:signalStrength.code.text",
      "path" : "Observation.component.code.text",
      "patternString" : "Signal strength"
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
