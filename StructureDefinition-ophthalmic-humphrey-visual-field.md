# Ophthalmic Humphrey Visual Field - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ophthalmic Humphrey Visual Field**

## Resource Profile: Ophthalmic Humphrey Visual Field 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-humphrey-visual-field | *Version*:0.4.0 |
| Draft as of 2026-10-20 | *Computable Name*:OphthalmicHumphreyVisualField |

 
Represents an automated static perimetry (Humphrey field analyzer) exam. Sourced directly from the FHIR4Eyes Observations catalog (Automated Visual Field (Humphrey) section), with reliability indices (fixation losses, false positive and false negative errors) and the Glaucoma Hemifield Test. DICOM-aligned; see the DICOM mapping for informative correspondences. 

Represents an automated static perimetry (Humphrey field analyzer) exam, as a single `Observation` with one `component` per reported value. Sourced directly from the FHIR4Eyes Observations catalog (Automated Visual Field (Humphrey) section), DICOM-aligned per CIDs 4250-4257 where a CID reference is noted. `code` and all components use local FHIR4Eyes codes ([FHIR4EyesCS](CodeSystem-fhir4eyes-cs.md)) pending an external code.

The threshold strategy (SITA Standard, SITA Fast, SITA Faster, or Full Threshold) is recorded in the required `method`. The test `pattern` (for example 24-2, 30-2, 10-2, Esterman) and the Mean Deviation (`md`) are required components; the remaining components (for example PSD, VFI, stimulus and background parameters, field extent, foveal sensitivity, test duration, and correction lens used) are optional. Laterality uses the standard `bodySite` extension referencing [OcularBodyStructure](StructureDefinition-ocular-body-structure.md), and the acquisition device may be recorded in `device`.

**Examples:** [Humphrey visual field: right eye](Observation-HumphreyVFRightEyeExample.md)

**Usages:**

* Examples for this Profile: [Observation/HumphreyVFRightEyeExample](Observation-HumphreyVFRightEyeExample.md)
* CapabilityStatements using this Profile: [FHIR4Eyes Server Capability Statement](CapabilityStatement-FHIR4EyesCapabilityStatement.md)

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
  "version" : "0.4.0",
  "name" : "OphthalmicHumphreyVisualField",
  "title" : "Ophthalmic Humphrey Visual Field",
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
  "description" : "Represents an automated static perimetry (Humphrey field analyzer) exam.\r\nSourced directly from the FHIR4Eyes Observations catalog (Automated Visual Field (Humphrey)\r\nsection), with reliability indices (fixation losses, false positive and false negative\r\nerrors) and the Glaucoma Hemifield Test. DICOM-aligned; see the DICOM mapping for\r\ninformative correspondences.",
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
      "short" : "Identifies this as a Humphrey visual field exam",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "visual-field-static-perimetry",
          "display" : "Automated static perimetry (visual field)"
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
      "id" : "Observation.method",
      "path" : "Observation.method",
      "short" : "Threshold strategy: SITA Standard, SITA Fast, SITA Faster, or Full Threshold",
      "min" : 1,
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "CID 4251 Visual Field Static Perimetry Test Strategy"
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
      "min" : 2
    },
    {
      "id" : "Observation.component:pattern",
      "path" : "Observation.component",
      "sliceName" : "pattern",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "CID 4250 Visual Field Static Perimetry Test Pattern"
      }]
    },
    {
      "id" : "Observation.component:pattern.code",
      "path" : "Observation.component.code",
      "short" : "Test pattern - pattern of evaluated points (24-2, 30-2, 10-2, Esterman)",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "visual-field-test-pattern",
          "display" : "Visual field test pattern"
        }]
      }
    },
    {
      "id" : "Observation.component:pattern.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Observation.component:md",
      "path" : "Observation.component",
      "sliceName" : "md",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "(0024,0066) Global Deviation From Normal"
      }]
    },
    {
      "id" : "Observation.component:md.code",
      "path" : "Observation.component.code",
      "short" : "Mean Deviation (MD) - average global sensitivity loss, key value for staging",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "visual-field-mean-deviation",
          "display" : "Visual field mean deviation (MD)"
        }]
      }
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
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "(0024,0068) Localized Deviation From Normal"
      }]
    },
    {
      "id" : "Observation.component:psd.code",
      "path" : "Observation.component.code",
      "short" : "Pattern Standard Deviation (PSD) - localized loss variability",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "visual-field-pattern-standard-deviation",
          "display" : "Visual field pattern standard deviation (PSD)"
        }]
      }
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
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "CID 4257 Visual Field Global Index Name"
      }]
    },
    {
      "id" : "Observation.component:vfi.code",
      "path" : "Observation.component.code",
      "short" : "Visual Field Index (VFI) - global functional index",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "visual-field-index",
          "display" : "Visual field index (VFI)"
        }]
      }
    },
    {
      "id" : "Observation.component:vfi.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:ght",
      "path" : "Observation.component",
      "sliceName" : "ght",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "CID 4254 Visual Field Static Perimetry Test Analysis Result"
      }]
    },
    {
      "id" : "Observation.component:ght.code",
      "path" : "Observation.component.code",
      "short" : "Glaucoma Hemifield Test result - within normal limits, borderline, outside normal limits, general reduction or abnormally high sensitivity",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "glaucoma-hemifield-test",
          "display" : "Glaucoma Hemifield Test result"
        }]
      }
    },
    {
      "id" : "Observation.component:ght.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Observation.component:fixationLosses",
      "path" : "Observation.component",
      "sliceName" : "fixationLosses",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:fixationLosses.code",
      "path" : "Observation.component.code",
      "short" : "Fixation losses - blind spot stimuli seen / fixation checks performed (e.g. 1/15)",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "fixation-losses",
          "display" : "Fixation losses"
        }]
      }
    },
    {
      "id" : "Observation.component:fixationLosses.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Ratio"
      }]
    },
    {
      "id" : "Observation.component:fixationLosses.value[x].numerator",
      "path" : "Observation.component.value[x].numerator",
      "mapping" : [{
        "identity" : "dicom",
        "map" : "(0024,0036) Patient Not Properly Fixated Quantity"
      }]
    },
    {
      "id" : "Observation.component:fixationLosses.value[x].denominator",
      "path" : "Observation.component.value[x].denominator",
      "mapping" : [{
        "identity" : "dicom",
        "map" : "(0024,0035) Fixation Checked Quantity"
      }]
    },
    {
      "id" : "Observation.component:falsePositive",
      "path" : "Observation.component",
      "sliceName" : "falsePositive",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "(0024,0054) False Positives Estimate"
      }]
    },
    {
      "id" : "Observation.component:falsePositive.code",
      "path" : "Observation.component.code",
      "short" : "False positive errors - percentage of false positive responses (reliability index)",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "false-positive-errors",
          "display" : "False positive errors"
        }]
      }
    },
    {
      "id" : "Observation.component:falsePositive.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:falseNegative",
      "path" : "Observation.component",
      "sliceName" : "falseNegative",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "(0024,0046) False Negatives Estimate"
      }]
    },
    {
      "id" : "Observation.component:falseNegative.code",
      "path" : "Observation.component.code",
      "short" : "False negative errors - percentage of false negative responses (reliability index)",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "false-negative-errors",
          "display" : "False negative errors"
        }]
      }
    },
    {
      "id" : "Observation.component:falseNegative.value[x]",
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
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "(0024,0016) Screening Test Mode Code Sequence"
      },
      {
        "identity" : "dicom",
        "map" : "CID 4252 Visual Field Static Perimetry Screening Test Mode"
      }]
    },
    {
      "id" : "Observation.component:screeningMode.code",
      "path" : "Observation.component.code",
      "short" : "Screening test mode - type of screening test",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "visual-field-screening-mode",
          "display" : "Visual field screening test mode"
        }]
      }
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
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "(0024,0033) Fixation Monitoring Code Sequence"
      },
      {
        "identity" : "dicom",
        "map" : "CID 4253 Visual Field Static Perimetry Fixation Strategy"
      }]
    },
    {
      "id" : "Observation.component:fixationStrategy.code",
      "path" : "Observation.component.code",
      "short" : "Fixation strategy - how fixation was monitored",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "visual-field-fixation-strategy",
          "display" : "Visual field fixation strategy"
        }]
      }
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
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "(0024,0025) Stimulus Area"
      }]
    },
    {
      "id" : "Observation.component:stimulusSize.code",
      "path" : "Observation.component.code",
      "short" : "Stimulus size - Goldmann stimulus size used, usually Goldmann III",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "perimetry-stimulus-size",
          "display" : "Perimetry stimulus size"
        }]
      }
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
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "(0024,0021) Stimulus Color Code Sequence"
      },
      {
        "identity" : "dicom",
        "map" : "CID 4255 Visual Field Illumination Color"
      }]
    },
    {
      "id" : "Observation.component:stimulusColor.code",
      "path" : "Observation.component.code",
      "short" : "Stimulus color - color of stimulus light",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "perimetry-stimulus-color",
          "display" : "Perimetry stimulus color"
        }]
      }
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
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "(0024,0020) Background Luminance"
      }]
    },
    {
      "id" : "Observation.component:bgLuminance.code",
      "path" : "Observation.component.code",
      "short" : "Background luminance - background bowl luminance in cd/m2 (UCUM); the HFA standard 31.5 asb corresponds to 10 cd/m2",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "perimetry-background-luminance",
          "display" : "Perimetry background luminance"
        }]
      }
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
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "(0024,0018) Maximum Stimulus Luminance"
      }]
    },
    {
      "id" : "Observation.component:maxLuminance.code",
      "path" : "Observation.component.code",
      "short" : "Maximum stimulus luminance - maximum stimulus intensity in cd/m2 (UCUM); the HFA 10000 asb corresponds to about 3183 cd/m2",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "perimetry-max-stimulus-luminance",
          "display" : "Perimetry maximum stimulus luminance"
        }]
      }
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
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "(0024,0028) Stimulus Presentation Time"
      }]
    },
    {
      "id" : "Observation.component:stimulusDuration.code",
      "path" : "Observation.component.code",
      "short" : "Stimulus duration - presentation time, standard 200ms",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "perimetry-stimulus-duration",
          "display" : "Perimetry stimulus presentation time"
        }]
      }
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
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "(0024,0010) Visual Field Horizontal Extent"
      }]
    },
    {
      "id" : "Observation.component:hExtent.code",
      "path" : "Observation.component.code",
      "short" : "Visual field horizontal extent - horizontal extent of tested field",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "visual-field-horizontal-extent",
          "display" : "Visual field horizontal extent"
        }]
      }
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
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "(0024,0011) Visual Field Vertical Extent"
      }]
    },
    {
      "id" : "Observation.component:vExtent.code",
      "path" : "Observation.component.code",
      "short" : "Visual field vertical extent - vertical extent of tested field",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "visual-field-vertical-extent",
          "display" : "Visual field vertical extent"
        }]
      }
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
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "(0024,0012) Visual Field Shape"
      }]
    },
    {
      "id" : "Observation.component:fieldShape.code",
      "path" : "Observation.component.code",
      "short" : "Visual field shape - shape of tested field (circle or rectangle)",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "visual-field-shape",
          "display" : "Visual field shape"
        }]
      }
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
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "(0024,0087) Foveal Sensitivity"
      }]
    },
    {
      "id" : "Observation.component:fovealSensitivity.code",
      "path" : "Observation.component.code",
      "short" : "Foveal sensitivity - central foveal threshold, common in HFA reports",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "foveal-sensitivity",
          "display" : "Foveal threshold sensitivity"
        }]
      }
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
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "(0024,0088) Visual Field Test Duration"
      }]
    },
    {
      "id" : "Observation.component:testDuration.code",
      "path" : "Observation.component.code",
      "short" : "Test duration - total test duration",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "visual-field-test-duration",
          "display" : "Visual field test duration"
        }]
      }
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
      "short" : "Number of test points - total points tested, depends on pattern",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "visual-field-test-point-count",
          "display" : "Number of visual field test points"
        }]
      }
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
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "(0024,0112) Refractive Parameters Used on Patient Sequence"
      }]
    },
    {
      "id" : "Observation.component:correctionLens.code",
      "path" : "Observation.component.code",
      "short" : "Correction lens used - whether correction lens was used during test",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "correction-status",
          "display" : "Refractive correction status during test"
        }]
      }
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
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "(0022,0007) Spherical Lens Power"
      }]
    },
    {
      "id" : "Observation.component:correctionPower.code",
      "path" : "Observation.component.code",
      "short" : "Correction lens power - power of trial lens used, if correction used",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "correction-lens-power",
          "display" : "Correction lens power"
        }]
      }
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
