# Ophthalmic Ocular Biometry - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ophthalmic Ocular Biometry**

## Resource Profile: Ophthalmic Ocular Biometry 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-ocular-biometry | *Version*:0.4.0 |
| Draft as of 2026-10-20 | *Computable Name*:OphthalmicOcularBiometry |

 
Represents an ocular biometry exam (optical or ultrasonic), used primarily for IOL power calculation ahead of cataract surgery. Sourced directly from the FHIR4Eyes Observations catalog (Ocular Biometry section), with informative DICOM correspondences given in the DICOM mapping. Holds the shared measurements common to the whole exam (axial length, keratometry, and so on) as components; each formula calculated from those shared measurements, with its own suggested IOL and expected outcome, is a separate IOLFormulaResult instance referenced via hasMember, since one biometry exam is typically run through several formulas. 

Represents an ocular biometry exam (optical or ultrasonic, recorded in the required `method`), used for IOL power calculation ahead of cataract surgery. Sourced directly from the FHIR4Eyes Observations catalog (Ocular Biometry section), DICOM-aligned per CIDs 4230-4243 where a CID reference is noted. `code` and all components use local FHIR4Eyes codes ([FHIR4EyesCS](CodeSystem-fhir4eyes-cs.md)) pending an external code.

```
graph TD
    B[OphthalmicOcularBiometry<br/>25 shared components:<br/>AL, ACD, LT, K1/K2, WTW...] -->|hasMember| F1[IOLFormulaResult<br/>Barrett Universal II]
    B -->|hasMember| F2[IOLFormulaResult<br/>SRK/T]
    B -->|hasMember| F3[IOLFormulaResult<br/>Holladay 2 ...]

    F1 -.-> D1["lens model, IOL power,<br/>expected refraction"]

```

### Design decisions

**Shared measurements as components, each formula as a separate Observation.** A single biometry exam produces one set of shared measurements (axial length, keratometry, anterior chamber depth, and so on), but is typically run through **several** IOL power formulas for comparison (for example Barrett Universal II, SRK/T, Holladay 2), each producing its own suggested lens, power, and expected refractive outcome. Rather than fixing two hardcoded "formula 1" / "formula 2" component slots on the biometry Observation itself, this guide represents each formula's result as a separate [IOLFormulaResult](StructureDefinition-iol-formula-result.md) instance, referenced via `hasMember`. This allows any number of formulas to be recorded, and keeps each formula's full result (constant, lens, power, expected refraction) together as its own coherent unit, following the same "different object/analysis gets its own Observation" principle used throughout this guide (see [CornealTomographyReport](StructureDefinition-corneal-tomography-report.md)).

**Formula-specific fields live only on `IOLFormulaResult`.** `formula`, `lensConstantType`, `lensConstantValue`, `iolModel`, `iolPower`, `expectedRef`, and `iolTable` are components of `IOLFormulaResult`, not of `OphthalmicOcularBiometry`. The biometry Observation holds only the measurements that are shared and independent of which formula is later applied to them; of these, axial length (`al`) is the only required component.

**Examples:** [Ocular biometry: right eye](Observation-BiometryRightEyeExample.md)

**Usages:**

* Examples for this Profile: [Observation/BiometryRightEyeExample](Observation-BiometryRightEyeExample.md)
* CapabilityStatements using this Profile: [FHIR4Eyes Server Capability Statement](CapabilityStatement-FHIR4EyesCapabilityStatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir4eyes.core|current/StructureDefinition/StructureDefinition-ophthalmic-ocular-biometry.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ophthalmic-ocular-biometry.csv), [Excel](StructureDefinition-ophthalmic-ocular-biometry.xlsx), [Schematron](StructureDefinition-ophthalmic-ocular-biometry.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ophthalmic-ocular-biometry",
  "url" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-ocular-biometry",
  "version" : "0.4.0",
  "name" : "OphthalmicOcularBiometry",
  "title" : "Ophthalmic Ocular Biometry",
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
  "description" : "Represents an ocular biometry exam (optical or ultrasonic), used primarily\nfor IOL power calculation ahead of cataract surgery. Sourced directly from the FHIR4Eyes\nObservations catalog (Ocular Biometry section), with informative DICOM correspondences\ngiven in the DICOM mapping. Holds the shared measurements common to the whole exam (axial\nlength, keratometry, and so on) as components; each formula calculated from those shared\nmeasurements, with its own suggested IOL and expected outcome, is a separate\nIOLFormulaResult instance referenced via hasMember, since one biometry exam is typically\nrun through several formulas.",
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
      "short" : "Identifies this as an ocular biometry exam",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "ocular-biometry",
          "display" : "Ocular biometry"
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
      "short" : "Biometry device type: optical (e.g. IOLMaster, Lenstar) or ultrasonic (A-scan)",
      "min" : 1,
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "(0022,1009) Ophthalmic Axial Measurements Device Type"
      }]
    },
    {
      "id" : "Observation.device",
      "path" : "Observation.device",
      "short" : "Acquisition device (manufacturer, model, software version)",
      "mustSupport" : true
    },
    {
      "id" : "Observation.hasMember",
      "path" : "Observation.hasMember",
      "short" : "Each IOL formula calculated from this biometry exam, with its own suggested lens",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/iol-formula-result"]
      }],
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
      "id" : "Observation.component:al",
      "path" : "Observation.component",
      "sliceName" : "al",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "(0022,1019) Ophthalmic Axial Length"
      }]
    },
    {
      "id" : "Observation.component:al.code",
      "path" : "Observation.component.code",
      "short" : "Axial length (AL) - anteroposterior eye distance",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "axial-length",
          "display" : "Axial length"
        }]
      }
    },
    {
      "id" : "Observation.component:al.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:alType",
      "path" : "Observation.component",
      "sliceName" : "alType",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "CID 4230 Ophthalmic Ultrasound Axial Measurements Type",
        "comment" : "Covers ultrasound contact / immersion only; optical vs ultrasound is (0022,1009)"
      }]
    },
    {
      "id" : "Observation.component:alType.code",
      "path" : "Observation.component.code",
      "short" : "AL measurement type - optical, ultrasonic immersion, or ultrasonic contact",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "axial-length-measurement-type",
          "display" : "Axial length measurement type"
        }]
      }
    },
    {
      "id" : "Observation.component:alType.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Observation.component:alSNR",
      "path" : "Observation.component",
      "sliceName" : "alSNR",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "(0022,1155) Signal to Noise Ratio"
      }]
    },
    {
      "id" : "Observation.component:alSNR.code",
      "path" : "Observation.component.code",
      "short" : "AL signal-to-noise ratio (SNR) - quality of AL measurement, >2.0 acceptable",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "axial-length-snr",
          "display" : "Axial length signal-to-noise ratio"
        }]
      }
    },
    {
      "id" : "Observation.component:alSNR.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:alSelection",
      "path" : "Observation.component",
      "sliceName" : "alSelection",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "CID 4241 Ophthalmic Axial Length Selection Method"
      }]
    },
    {
      "id" : "Observation.component:alSelection.code",
      "path" : "Observation.component.code",
      "short" : "AL selection method - how axial length was selected",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "axial-length-selection-method",
          "display" : "Axial length selection method"
        }]
      }
    },
    {
      "id" : "Observation.component:alSelection.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
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
      "id" : "Observation.component:acdDef",
      "path" : "Observation.component",
      "sliceName" : "acdDef",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "CID 4239 Anterior Chamber Depth Definition"
      }]
    },
    {
      "id" : "Observation.component:acdDef.code",
      "path" : "Observation.component.code",
      "short" : "ACD definition - endothelium to lens or epithelium to lens",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "anterior-chamber-depth-definition",
          "display" : "Anterior chamber depth definition"
        }]
      }
    },
    {
      "id" : "Observation.component:acdDef.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Observation.component:lt",
      "path" : "Observation.component",
      "sliceName" : "lt",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "(0022,1130) Lens Thickness"
      }]
    },
    {
      "id" : "Observation.component:lt.code",
      "path" : "Observation.component.code",
      "short" : "Lens thickness (LT) - crystalline lens thickness",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "lens-thickness",
          "display" : "Lens thickness"
        }]
      }
    },
    {
      "id" : "Observation.component:lt.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:lensStatus",
      "path" : "Observation.component",
      "sliceName" : "lensStatus",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "CID 4231 Lens Status"
      }]
    },
    {
      "id" : "Observation.component:lensStatus.code",
      "path" : "Observation.component.code",
      "short" : "Lens status - phakic, pseudophakic, or aphakic",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "lens-status",
          "display" : "Lens status"
        }]
      }
    },
    {
      "id" : "Observation.component:lensStatus.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Observation.component:vitreousStatus",
      "path" : "Observation.component",
      "sliceName" : "vitreousStatus",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "CID 4232 Vitreous Status"
      }]
    },
    {
      "id" : "Observation.component:vitreousStatus.code",
      "path" : "Observation.component.code",
      "short" : "Vitreous status",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "vitreous-status",
          "display" : "Vitreous status"
        }]
      }
    },
    {
      "id" : "Observation.component:vitreousStatus.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Observation.component:k1",
      "path" : "Observation.component",
      "sliceName" : "k1",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "(0046,0076) Keratometric Power",
        "comment" : "Within (0046,0080) Flat Keratometric Axis Sequence"
      }]
    },
    {
      "id" : "Observation.component:k1.code",
      "path" : "Observation.component.code",
      "short" : "K1 (flat keratometry) - flat meridian K, in dioptres; its axis is in k1Axis",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "keratometry-k1",
          "display" : "Keratometry K1 (flat)"
        }]
      }
    },
    {
      "id" : "Observation.component:k1.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:k1Axis",
      "path" : "Observation.component",
      "sliceName" : "k1Axis",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "(0046,0077) Keratometric Axis",
        "comment" : "Within (0046,0080) Flat Keratometric Axis Sequence"
      }]
    },
    {
      "id" : "Observation.component:k1Axis.code",
      "path" : "Observation.component.code",
      "short" : "K1 axis - flat meridian orientation, in degrees",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "keratometry-k1-axis",
          "display" : "Keratometry K1 axis"
        }]
      }
    },
    {
      "id" : "Observation.component:k1Axis.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:k1Radius",
      "path" : "Observation.component",
      "sliceName" : "k1Radius",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "(0046,0075) Radius of Curvature",
        "comment" : "Within (0046,0080) Flat Keratometric Axis Sequence"
      }]
    },
    {
      "id" : "Observation.component:k1Radius.code",
      "path" : "Observation.component.code",
      "short" : "K1 radius - flat meridian radius",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "keratometry-k1-radius",
          "display" : "Keratometry K1 radius of curvature"
        }]
      }
    },
    {
      "id" : "Observation.component:k1Radius.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:k2",
      "path" : "Observation.component",
      "sliceName" : "k2",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "(0046,0076) Keratometric Power",
        "comment" : "Within (0046,0074) Steep Keratometric Axis Sequence"
      }]
    },
    {
      "id" : "Observation.component:k2.code",
      "path" : "Observation.component.code",
      "short" : "K2 (steep keratometry) - steep meridian K, in dioptres; its axis is in k2Axis",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "keratometry-k2",
          "display" : "Keratometry K2 (steep)"
        }]
      }
    },
    {
      "id" : "Observation.component:k2.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:k2Axis",
      "path" : "Observation.component",
      "sliceName" : "k2Axis",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "(0046,0077) Keratometric Axis",
        "comment" : "Within (0046,0074) Steep Keratometric Axis Sequence"
      }]
    },
    {
      "id" : "Observation.component:k2Axis.code",
      "path" : "Observation.component.code",
      "short" : "K2 axis - steep meridian orientation, in degrees (K1 axis +/- 90)",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "keratometry-k2-axis",
          "display" : "Keratometry K2 axis"
        }]
      }
    },
    {
      "id" : "Observation.component:k2Axis.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:k2Radius",
      "path" : "Observation.component",
      "sliceName" : "k2Radius",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "(0046,0075) Radius of Curvature",
        "comment" : "Within (0046,0074) Steep Keratometric Axis Sequence"
      }]
    },
    {
      "id" : "Observation.component:k2Radius.code",
      "path" : "Observation.component.code",
      "short" : "K2 radius - steep meridian radius",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "keratometry-k2-radius",
          "display" : "Keratometry K2 radius of curvature"
        }]
      }
    },
    {
      "id" : "Observation.component:k2Radius.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:km",
      "path" : "Observation.component",
      "sliceName" : "km",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:km.code",
      "path" : "Observation.component.code",
      "short" : "Km (mean keratometry) - mean corneal power, (K1+K2)/2, in dioptres (the SE of the biometer's R/SE field)",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "keratometry-km",
          "display" : "Keratometry Km (mean)"
        }]
      }
    },
    {
      "id" : "Observation.component:km.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:rse",
      "path" : "Observation.component",
      "sliceName" : "rse",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:rse.code",
      "path" : "Observation.component.code",
      "short" : "R/SE mean radius - mean anterior corneal radius of curvature in mm, (K1 radius + K2 radius)/2; the dioptric mean (SE) is reported in km",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "keratometry-mean-radius",
          "display" : "Keratometry mean radius of curvature (R/SE)"
        }]
      }
    },
    {
      "id" : "Observation.component:rse.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:cornealCyl",
      "path" : "Observation.component",
      "sliceName" : "cornealCyl",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:cornealCyl.code",
      "path" : "Observation.component.code",
      "short" : "Corneal cylinder - corneal astigmatism from biometer, K2 minus K1 in dioptres, reported as a positive magnitude (plus-cylinder notation) at the steep meridian (K2 axis)",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "corneal-astigmatism",
          "display" : "Corneal astigmatism (cylinder)"
        }]
      }
    },
    {
      "id" : "Observation.component:cornealCyl.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:keratIndex",
      "path" : "Observation.component",
      "sliceName" : "keratIndex",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "(0022,1033) Keratometer Index"
      }]
    },
    {
      "id" : "Observation.component:keratIndex.code",
      "path" : "Observation.component.code",
      "short" : "Keratometric index (n) - refractive index for K conversion",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "keratometric-index",
          "display" : "Keratometric index"
        }]
      }
    },
    {
      "id" : "Observation.component:keratIndex.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:wtw",
      "path" : "Observation.component",
      "sliceName" : "wtw",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "(0046,0046) Corneal Size"
      }]
    },
    {
      "id" : "Observation.component:wtw.code",
      "path" : "Observation.component.code",
      "short" : "White-to-white (WTW) - horizontal corneal diameter",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "white-to-white",
          "display" : "White-to-white corneal diameter"
        }]
      }
    },
    {
      "id" : "Observation.component:wtw.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:pupilDiam",
      "path" : "Observation.component",
      "sliceName" : "pupilDiam",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "(0046,0044) Pupil Size"
      }]
    },
    {
      "id" : "Observation.component:pupilDiam.code",
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
      "id" : "Observation.component:pupilDiam.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
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
      "short" : "Mydriatic agent used, if applicable",
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
      "id" : "Observation.component:refSurgeryHx",
      "path" : "Observation.component",
      "sliceName" : "refSurgeryHx",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "CID 4234 Refractive Surgery Type"
      }]
    },
    {
      "id" : "Observation.component:refSurgeryHx.code",
      "path" : "Observation.component.code",
      "short" : "Refractive surgery history - critical for formula selection",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "refractive-surgery-history",
          "display" : "Refractive surgery history"
        }]
      }
    },
    {
      "id" : "Observation.component:refSurgeryHx.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Observation.component:targetRef",
      "path" : "Observation.component",
      "sliceName" : "targetRef",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "(0022,1037) Target Refraction"
      }]
    },
    {
      "id" : "Observation.component:targetRef.code",
      "path" : "Observation.component.code",
      "short" : "Target refraction - desired post-surgical refraction",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "target-refraction",
          "display" : "Target refraction"
        }]
      }
    },
    {
      "id" : "Observation.component:targetRef.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:refErrorType",
      "path" : "Observation.component",
      "sliceName" : "refErrorType",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "CID 4238 Refractive Error Type"
      }]
    },
    {
      "id" : "Observation.component:refErrorType.code",
      "path" : "Observation.component.code",
      "short" : "Refractive error type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "refractive-error-type",
          "display" : "Refractive error type"
        }]
      }
    },
    {
      "id" : "Observation.component:refErrorType.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Observation.component:dataSource",
      "path" : "Observation.component",
      "sliceName" : "dataSource",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "CID 4240 Ophthalmic Measurement or Calculation Data Source"
      }]
    },
    {
      "id" : "Observation.component:dataSource.code",
      "path" : "Observation.component.code",
      "short" : "Data source - provenance of the measurement or calculation input (measured on this device, manual entry, external source or imported record); distinct from the device type in method",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "measurement-data-source",
          "display" : "Measurement data source"
        }]
      }
    },
    {
      "id" : "Observation.component:dataSource.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Observation.component:vertex",
      "path" : "Observation.component",
      "sliceName" : "vertex",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "dicom",
        "map" : "(0022,000F) Vertex Distance"
      }]
    },
    {
      "id" : "Observation.component:vertex.code",
      "path" : "Observation.component.code",
      "short" : "Vertex distance - distance from lens to cornea",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
          "code" : "vertex-distance",
          "display" : "Vertex distance"
        }]
      }
    },
    {
      "id" : "Observation.component:vertex.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    }]
  }
}

```
