# Ocular Body Structure - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ocular Body Structure**

## Resource Profile: Ocular Body Structure 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ocular-body-structure | *Version*:0.4.0 |
| Draft as of 2026-10-20 | *Computable Name*:OcularBodyStructure |

 
Represents an anatomical ocular location, used throughout this guide to express laterality (right eye, left eye, or both eyes) for observations, conditions, procedures, and imaging studies. Follows the same structural pattern as the HL7 Eye Care IG's equivalent profile ('Ocular anatomical location' / body-structure-eye): a `location` element identifying the anatomical structure, and a `locationQualifier` element carrying laterality and other qualifiers. The HL7 Eye Care IG defines its own dedicated value sets for these two elements (`ValueSet/body-site-eye` for location, `ValueSet/qualifiers` for locationQualifier), which are the intended reference terminology for this profile. However, because the HL7 Eye Care IG is not published as a usable FHIR package, those value sets cannot be formally imported here; this profile binds to SNOMED CT directly instead (see the Terminology page of this guide for the general rationale). 

Represents an anatomical ocular location, used throughout this guide to express laterality (right eye, left eye, or both eyes) for observations, conditions, procedures, and imaging studies. It follows the same structural pattern as the HL7 Eye Care IG's equivalent profile ("Ocular anatomical location"): a required `location` identifying the anatomical structure (for example entire eye, cornea, retina), and `locationQualifier` carrying laterality and other qualifiers, both coded using SNOMED CT. `patient` is required.

### The laterality pattern

Other profiles do not carry a plain laterality code. Instead, their `bodySite` element carries the standard `http://hl7.org/fhir/StructureDefinition/bodySite` extension (named `bodySiteEye`), whose value is a `Reference(OcularBodyStructure)`. This lets the same `OcularBodyStructure` instance (for example, "right eye" for a specific patient) be shared across a `Condition`, a `Procedure`, and an `Observation`, enabling queries like "what else references this eye". The exception is [OphthalmicImagingStudy](StructureDefinition-ophthalmic-imaging-study.md), which uses only the native DICOM-compatible `series.bodySite` and `series.laterality` `Coding` fields, with no extension. See [Guidance](guidance.md) for the full pattern.

The HL7 Eye Care IG's own value sets for `location` and `locationQualifier` are the intended reference terminology, but since that guide is not published as a usable FHIR package, they cannot be formally imported; this profile binds to SNOMED CT directly instead (see [Terminology](terminology.md)).

**Examples:** [Right eye (laterality)](BodyStructure-RightEyeStructureExample.md), [Left eye (laterality)](BodyStructure-LeftEyeStructureExample.md)

**Usages:**

* Refer to this Profile: [Corrected Intraocular Pressure](StructureDefinition-corrected-intraocular-pressure.md), [Cover Test](StructureDefinition-cover-test.md), [Corneal Tomography - Anterior Chamber](StructureDefinition-ct-anterior-chamber.md), [Corneal Tomography - Anterior Surface](StructureDefinition-ct-anterior-surface.md)... Show 18 more, [Corneal Tomography - Densitometry](StructureDefinition-ct-densitometry.md), [Corneal Tomography - Keratoconus Indices](StructureDefinition-ct-keratoconus-indices.md), [Corneal Tomography - Pachymetry](StructureDefinition-ct-pachymetry.md), [Corneal Tomography - Posterior Surface](StructureDefinition-ct-posterior-surface.md), [Gaze Position Measurement](StructureDefinition-gaze-position-measurement.md), [Intraocular Pressure](StructureDefinition-intraocular-pressure.md), [Ocular Motility](StructureDefinition-ocular-motility.md), [Ophthalmic Condition](StructureDefinition-ophthalmic-condition.md), [Ophthalmic Humphrey Visual Field](StructureDefinition-ophthalmic-humphrey-visual-field.md), [Ophthalmic Medication Administration](StructureDefinition-ophthalmic-medication-administration.md), [Ophthalmic OCT Macula](StructureDefinition-ophthalmic-oct-macula.md), [Ophthalmic OCT RNFL](StructureDefinition-ophthalmic-oct-rnfl.md), [Ophthalmic Ocular Biometry](StructureDefinition-ophthalmic-ocular-biometry.md), [Ophthalmic Procedure](StructureDefinition-ophthalmic-procedure.md), [Ophthalmic Specular Microscopy](StructureDefinition-ophthalmic-specular-microscopy.md), [Ophthalmic Visual Acuity](StructureDefinition-ophthalmic-visual-acuity.md), [Pachymetry](StructureDefinition-pachymetry.md) and [Tension Curve](StructureDefinition-tension-curve.md)
* Examples for this Profile: [BodyStructure/BothEyesStructureExample](BodyStructure-BothEyesStructureExample.md), [BodyStructure/LeftEyeStructureExample](BodyStructure-LeftEyeStructureExample.md) and [BodyStructure/RightEyeStructureExample](BodyStructure-RightEyeStructureExample.md)
* CapabilityStatements using this Profile: [FHIR4Eyes Server Capability Statement](CapabilityStatement-FHIR4EyesCapabilityStatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir4eyes.core|current/StructureDefinition/StructureDefinition-ocular-body-structure.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ocular-body-structure.csv), [Excel](StructureDefinition-ocular-body-structure.xlsx), [Schematron](StructureDefinition-ocular-body-structure.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ocular-body-structure",
  "url" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ocular-body-structure",
  "version" : "0.4.0",
  "name" : "OcularBodyStructure",
  "title" : "Ocular Body Structure",
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
  "description" : "Represents an anatomical ocular location, used throughout this guide to\nexpress laterality (right eye, left eye, or both eyes) for observations, conditions,\nprocedures, and imaging studies. Follows the same structural pattern as the HL7 Eye Care\nIG's equivalent profile ('Ocular anatomical location' / body-structure-eye): a `location`\nelement identifying the anatomical structure, and a `locationQualifier` element carrying\nlaterality and other qualifiers. The HL7 Eye Care IG defines its own dedicated value sets\nfor these two elements (`ValueSet/body-site-eye` for location, `ValueSet/qualifiers` for\nlocationQualifier), which are the intended reference terminology for this profile. However,\nbecause the HL7 Eye Care IG is not published as a usable FHIR package, those value sets\ncannot be formally imported here; this profile binds to SNOMED CT directly instead (see the\nTerminology page of this guide for the general rationale).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001",
      "display" : "World"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "openehr",
    "uri" : "http://openehr.org",
    "name" : "Open EHR Archetype Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "BodyStructure",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/BodyStructure",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "BodyStructure",
      "path" : "BodyStructure"
    },
    {
      "id" : "BodyStructure.location",
      "path" : "BodyStructure.location",
      "short" : "The anatomical eye structure (e.g. entire eye, cornea, retina), coded using SNOMED CT",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "BodyStructure.locationQualifier",
      "path" : "BodyStructure.locationQualifier",
      "short" : "Qualifiers for the location, including laterality (right, left, both), coded using SNOMED CT",
      "mustSupport" : true
    },
    {
      "id" : "BodyStructure.patient",
      "path" : "BodyStructure.patient",
      "mustSupport" : true
    }]
  }
}

```
