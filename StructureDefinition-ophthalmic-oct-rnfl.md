# Ophthalmic OCT RNFL - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ophthalmic OCT RNFL**

## Resource Profile: Ophthalmic OCT RNFL 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-oct-rnfl | *Version*:0.1.0 |
| Draft as of 2026-08-19 | *Computable Name*:OphthalmicOCTRNFL |

 
Represents an OCT retinal nerve fiber layer (RNFL) thickness analysis, with quadrant-level components and an overall classification, matching the structure of typical vendor reports (e.g. Heidelberg Spectralis). Real LOINC codes exist for each quadrant, but are laterality-specific (a different code for right vs. left eye); implementers should select the correct code for the eye being examined when populating each component. See Terminology for the general LOINC-for-structured-panels strategy. 

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
  "version" : "0.1.0",
  "name" : "OphthalmicOCTRNFL",
  "title" : "Ophthalmic OCT RNFL",
  "status" : "draft",
  "date" : "2026-08-19T17:13:42+00:00",
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
  "description" : "Represents an OCT retinal nerve fiber layer (RNFL) thickness analysis, with\nquadrant-level components and an overall classification, matching the structure of typical\nvendor reports (e.g. Heidelberg Spectralis). Real LOINC codes exist for each quadrant, but\nare laterality-specific (a different code for right vs. left eye); implementers should\nselect the correct code for the eye being examined when populating each component. See\nTerminology for the general LOINC-for-structured-panels strategy.",
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
      "short" : "Identifies this as an OCT RNFL analysis",
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
      "id" : "Observation.component:superior",
      "path" : "Observation.component",
      "sliceName" : "superior",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:superior.code",
      "path" : "Observation.component.code",
      "short" : "LOINC 86276-3 (right eye) or 86277-1 (left eye); select per bodySite"
    },
    {
      "id" : "Observation.component:superior.code.text",
      "path" : "Observation.component.code.text",
      "patternString" : "RNFL superior thickness"
    },
    {
      "id" : "Observation.component:superior.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:inferior",
      "path" : "Observation.component",
      "sliceName" : "inferior",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:inferior.code",
      "path" : "Observation.component.code",
      "short" : "LOINC 86283-9 (right eye) or 86288-8 (left eye); select per bodySite"
    },
    {
      "id" : "Observation.component:inferior.code.text",
      "path" : "Observation.component.code.text",
      "patternString" : "RNFL inferior thickness"
    },
    {
      "id" : "Observation.component:inferior.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:nasal",
      "path" : "Observation.component",
      "sliceName" : "nasal",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:nasal.code",
      "path" : "Observation.component.code",
      "short" : "LOINC 86284-7 (right eye) or 86279-7 (left eye); select per bodySite"
    },
    {
      "id" : "Observation.component:nasal.code.text",
      "path" : "Observation.component.code.text",
      "patternString" : "RNFL nasal thickness"
    },
    {
      "id" : "Observation.component:nasal.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:temporal",
      "path" : "Observation.component",
      "sliceName" : "temporal",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:temporal.code",
      "path" : "Observation.component.code",
      "short" : "LOINC 86273-0 (right eye) or 86278-9 (left eye); select per bodySite"
    },
    {
      "id" : "Observation.component:temporal.code.text",
      "path" : "Observation.component.code.text",
      "patternString" : "RNFL temporal thickness"
    },
    {
      "id" : "Observation.component:temporal.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:average",
      "path" : "Observation.component",
      "sliceName" : "average",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:average.code",
      "path" : "Observation.component.code",
      "short" : "LOINC 86301-9 (right eye) or 86290-4 (left eye); select per bodySite"
    },
    {
      "id" : "Observation.component:average.code.text",
      "path" : "Observation.component.code.text",
      "patternString" : "RNFL average thickness"
    },
    {
      "id" : "Observation.component:average.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:classification",
      "path" : "Observation.component",
      "sliceName" : "classification",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:classification.code",
      "path" : "Observation.component.code",
      "short" : "Within Normal Limits / Borderline / Outside Normal Limits; terminology to be confirmed"
    },
    {
      "id" : "Observation.component:classification.code.text",
      "path" : "Observation.component.code.text",
      "patternString" : "Overall classification"
    },
    {
      "id" : "Observation.component:classification.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    }]
  }
}

```
