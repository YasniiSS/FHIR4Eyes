# Ophthalmic Humphrey Visual Field - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ophthalmic Humphrey Visual Field**

## Resource Profile: Ophthalmic Humphrey Visual Field 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-humphrey-visual-field | *Version*:0.2.0 |
| Draft as of 2026-08-25 | *Computable Name*:OphthalmicHumphreyVisualField |

 
Represents an automated static perimetry (Humphrey field analyzer) exam. Sourced directly from the FHIR4Eyes Observations catalog (Automated Visual Field (Humphrey) section), DICOM-aligned per CIDs 4250-4257 where a CID reference is noted. 

**Usages:**

* Examples for this Profile: [Observation/HumphreyVFRightEyeExample](Observation-HumphreyVFRightEyeExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir4eyes.core|current/StructureDefinition/StructureDefinition-ophthalmic-humphrey-visual-field.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ophthalmic-humphrey-visual-field.csv), [Excel](StructureDefinition-ophthalmic-humphrey-visual-field.xlsx), [Schematron](StructureDefinition-ophthalmic-humphrey-visual-field.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ophthalmic-humphrey-visual-field",
  "url" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-humphrey-visual-field",
  "version" : "0.2.0",
  "name" : "OphthalmicHumphreyVisualField",
  "title" : "Ophthalmic Humphrey Visual Field",
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
  "description" : "Represents an automated static perimetry (Humphrey field analyzer) exam.\nSourced directly from the FHIR4Eyes Observations catalog (Automated Visual Field (Humphrey)\nsection), DICOM-aligned per CIDs 4250-4257 where a CID reference is noted.",
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
      "short" : "Identifies this as a Humphrey visual field exam",
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
      "id" : "Observation.method",
      "path" : "Observation.method",
      "short" : "Threshold strategy: SITA Standard, SITA Fast, SITA Faster, or Full Threshold",
      "min" : 1,
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
      "min" : 2
    },
    {
      "id" : "Observation.component:pattern",
      "path" : "Observation.component",
      "sliceName" : "pattern",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:pattern.code",
      "path" : "Observation.component.code",
      "short" : "Test pattern - pattern of evaluated points (24-2, 30-2, 10-2, Esterman)"
    },
    {
      "id" : "Observation.component:pattern.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Observation.component:md",
      "path" : "Observation.component",
      "sliceName" : "md",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:md.code",
      "path" : "Observation.component.code",
      "short" : "Mean Deviation (MD) - average global sensitivity loss, key value for staging"
    },
    {
      "id" : "Observation.component:md.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:psd",
      "path" : "Observation.component",
      "sliceName" : "psd",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:psd.code",
      "path" : "Observation.component.code",
      "short" : "Pattern Standard Deviation (PSD) - localized loss variability"
    },
    {
      "id" : "Observation.component:psd.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:vfi",
      "path" : "Observation.component",
      "sliceName" : "vfi",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:vfi.code",
      "path" : "Observation.component.code",
      "short" : "Visual Field Index (VFI) - global functional index"
    },
    {
      "id" : "Observation.component:vfi.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:screeningMode",
      "path" : "Observation.component",
      "sliceName" : "screeningMode",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:screeningMode.code",
      "path" : "Observation.component.code",
      "short" : "DICOM CID 4252"
    },
    {
      "id" : "Observation.component:screeningMode.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Observation.component:fixationStrategy",
      "path" : "Observation.component",
      "sliceName" : "fixationStrategy",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:fixationStrategy.code",
      "path" : "Observation.component.code",
      "short" : "DICOM CID 4253"
    },
    {
      "id" : "Observation.component:fixationStrategy.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Observation.component:stimulusSize",
      "path" : "Observation.component",
      "sliceName" : "stimulusSize",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:stimulusSize.code",
      "path" : "Observation.component.code",
      "short" : "DICOM (0024,0025)"
    },
    {
      "id" : "Observation.component:stimulusSize.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Observation.component:stimulusColor",
      "path" : "Observation.component",
      "sliceName" : "stimulusColor",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:stimulusColor.code",
      "path" : "Observation.component.code",
      "short" : "DICOM CID 4255 / (0024,0021)"
    },
    {
      "id" : "Observation.component:stimulusColor.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Observation.component:bgLuminance",
      "path" : "Observation.component",
      "sliceName" : "bgLuminance",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:bgLuminance.code",
      "path" : "Observation.component.code",
      "short" : "DICOM (0024,0020)"
    },
    {
      "id" : "Observation.component:bgLuminance.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:maxLuminance",
      "path" : "Observation.component",
      "sliceName" : "maxLuminance",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:maxLuminance.code",
      "path" : "Observation.component.code",
      "short" : "DICOM (0024,0018)"
    },
    {
      "id" : "Observation.component:maxLuminance.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:stimulusDuration",
      "path" : "Observation.component",
      "sliceName" : "stimulusDuration",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:stimulusDuration.code",
      "path" : "Observation.component.code",
      "short" : "DICOM (0024,0028)"
    },
    {
      "id" : "Observation.component:stimulusDuration.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:hExtent",
      "path" : "Observation.component",
      "sliceName" : "hExtent",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:hExtent.code",
      "path" : "Observation.component.code",
      "short" : "DICOM (0024,0010)"
    },
    {
      "id" : "Observation.component:hExtent.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:vExtent",
      "path" : "Observation.component",
      "sliceName" : "vExtent",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:vExtent.code",
      "path" : "Observation.component.code",
      "short" : "DICOM (0024,0011)"
    },
    {
      "id" : "Observation.component:vExtent.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:fieldShape",
      "path" : "Observation.component",
      "sliceName" : "fieldShape",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:fieldShape.code",
      "path" : "Observation.component.code",
      "short" : "DICOM (0024,0012)"
    },
    {
      "id" : "Observation.component:fieldShape.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Observation.component:fovealSensitivity",
      "path" : "Observation.component",
      "sliceName" : "fovealSensitivity",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:fovealSensitivity.code",
      "path" : "Observation.component.code",
      "short" : "Foveal sensitivity - central foveal threshold, common in HFA reports"
    },
    {
      "id" : "Observation.component:fovealSensitivity.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:testDuration",
      "path" : "Observation.component",
      "sliceName" : "testDuration",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:testDuration.code",
      "path" : "Observation.component.code",
      "short" : "Test duration - total test duration"
    },
    {
      "id" : "Observation.component:testDuration.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:testPoints",
      "path" : "Observation.component",
      "sliceName" : "testPoints",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:testPoints.code",
      "path" : "Observation.component.code",
      "short" : "Number of test points - total points tested, depends on pattern"
    },
    {
      "id" : "Observation.component:testPoints.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:correctionLens",
      "path" : "Observation.component",
      "sliceName" : "correctionLens",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:correctionLens.code",
      "path" : "Observation.component.code",
      "short" : "DICOM CID 4256, Procedure Modifier"
    },
    {
      "id" : "Observation.component:correctionLens.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Observation.component:correctionPower",
      "path" : "Observation.component",
      "sliceName" : "correctionPower",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:correctionPower.code",
      "path" : "Observation.component.code",
      "short" : "Correction lens power - power of trial lens used, if correction used"
    },
    {
      "id" : "Observation.component:correctionPower.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    }]
  }
}

```
