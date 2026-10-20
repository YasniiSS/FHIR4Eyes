# Corneal Tomography - Anterior Chamber - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Corneal Tomography - Anterior Chamber**

## Resource Profile: Corneal Tomography - Anterior Chamber 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ct-anterior-chamber | *Version*:0.4.0 |
| Draft as of 2026-10-20 | *Computable Name*:CTAnteriorChamber |

 
Represents the anterior chamber analysis component of a corneal tomography exam, one of six Observations grouped under a single CornealTomographyReport. Component codes are local FHIR4Eyes codes, as no confirmed laterality-neutral SNOMED CT/LOINC codes were identified for these device-specific measurements (see Terminology). 

Represents the anterior chamber analysis of a corneal tomography exam: anterior chamber depth, chamber volume, chamber angle, pupil diameter, and lens thickness. The anterior chamber is a different anatomical structure from the cornea, so it is one of six separate analyses grouped under a single [CornealTomographyReport](StructureDefinition-corneal-tomography-report.md), following the rule of thumb explained on that page. Component codes are local FHIR4Eyes codes ([FHIR4EyesCS](CodeSystem-fhir4eyes-cs.md)) pending an external code, since no confirmed SNOMED CT or LOINC codes were identified for these device-specific measurements (see [Terminology](terminology.md)).

**Examples:** [CT anterior chamber: right eye](Observation-CTAnteriorChamberRightEyeExample.md)

**Usages:**

* Refer to this Profile: [Corneal Tomography Report](StructureDefinition-corneal-tomography-report.md)
* Examples for this Profile: [Observation/CTAnteriorChamberRightEyeExample](Observation-CTAnteriorChamberRightEyeExample.md)
* CapabilityStatements using this Profile: [FHIR4Eyes Server Capability Statement](CapabilityStatement-FHIR4EyesCapabilityStatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir4eyes.core|current/StructureDefinition/StructureDefinition-ct-anterior-chamber.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ct-anterior-chamber.csv), [Excel](StructureDefinition-ct-anterior-chamber.xlsx), [Schematron](StructureDefinition-ct-anterior-chamber.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ct-anterior-chamber",
  "url" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ct-anterior-chamber",
  "version" : "0.4.0",
  "name" : "CTAnteriorChamber",
  "title" : "Corneal Tomography - Anterior Chamber",
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
  "description" : "Represents the anterior chamber analysis component of a corneal tomography\nexam, one of six Observations grouped under a single CornealTomographyReport. Component codes are local FHIR4Eyes codes, as no confirmed laterality-neutral SNOMED CT/LOINC codes were identified for these device-specific measurements (see Terminology).",
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
      "short" : "Identifies this as the anterior chamber component of a corneal tomography exam",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "corneal-tomography-anterior-chamber",
          "display" : "Corneal tomography, anterior chamber analysis"
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
      "id" : "Observation.device",
      "path" : "Observation.device",
      "short" : "The tomographer used (e.g. Scheimpflug)",
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
      "id" : "Observation.component:acd",
      "path" : "Observation.component",
      "sliceName" : "acd",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "(0022,1131) Anterior Chamber Depth"
      }]
    },
    {
      "id" : "Observation.component:acd.code",
      "path" : "Observation.component.code",
      "short" : "Anterior chamber depth (ACD)",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "anterior-chamber-depth",
          "display" : "Anterior chamber depth"
        }]
      }
    },
    {
      "id" : "Observation.component:acd.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:chamberVolume",
      "path" : "Observation.component",
      "sliceName" : "chamberVolume",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:chamberVolume.code",
      "path" : "Observation.component.code",
      "short" : "Anterior chamber volume",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "anterior-chamber-volume",
          "display" : "Anterior chamber volume"
        }]
      }
    },
    {
      "id" : "Observation.component:chamberVolume.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:angle",
      "path" : "Observation.component",
      "sliceName" : "angle",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:angle.code",
      "path" : "Observation.component.code",
      "short" : "Anterior chamber angle",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "anterior-chamber-angle",
          "display" : "Anterior chamber angle"
        }]
      }
    },
    {
      "id" : "Observation.component:angle.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:pupilDiameter",
      "path" : "Observation.component",
      "sliceName" : "pupilDiameter",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "(0046,0044) Pupil Size"
      }]
    },
    {
      "id" : "Observation.component:pupilDiameter.code",
      "path" : "Observation.component.code",
      "short" : "Pupil diameter",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "pupil-diameter",
          "display" : "Pupil diameter"
        }]
      }
    },
    {
      "id" : "Observation.component:pupilDiameter.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:lensThickness",
      "path" : "Observation.component",
      "sliceName" : "lensThickness",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "(0022,1130) Lens Thickness"
      }]
    },
    {
      "id" : "Observation.component:lensThickness.code",
      "path" : "Observation.component.code",
      "short" : "Lens thickness",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "lens-thickness",
          "display" : "Lens thickness"
        }]
      }
    },
    {
      "id" : "Observation.component:lensThickness.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    }]
  }
}

```
