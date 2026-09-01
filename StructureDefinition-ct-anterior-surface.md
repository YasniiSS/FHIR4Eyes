# Corneal Tomography - Anterior Surface - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Corneal Tomography - Anterior Surface**

## Resource Profile: Corneal Tomography - Anterior Surface 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ct-anterior-surface | *Version*:0.3.0 |
| Draft as of 2026-09-01 | *Computable Name*:CTAnteriorSurface |

 
Represents the anterior corneal surface analysis component of a corneal tomography exam (e.g. Scheimpflug/Pentacam-style device), one of six Observations grouped under a single CornealTomographyReport. Sourced directly from the FHIR4Eyes Observations catalog (Corneal Topography: Anterior Surface section). Component codes are left as open text for now, following this guide's terminology rigor: most confirmed SNOMED CT/LOINC codes were not identified for these device-specific indices (see Terminology); a handful of components reference specific DICOM Sup 168 tags directly in their terminology, noted in the catalog. 

**Usages:**

* Refer to this Profile: [Corneal Tomography Report](StructureDefinition-corneal-tomography-report.md)
* Examples for this Profile: [Observation/CTAnteriorSurfaceRightEyeExample](Observation-CTAnteriorSurfaceRightEyeExample.md)
* CapabilityStatements using this Profile: [FHIR4Eyes Server Capability Statement](CapabilityStatement-FHIR4EyesCapabilityStatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir4eyes.core|current/StructureDefinition/StructureDefinition-ct-anterior-surface.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ct-anterior-surface.csv), [Excel](StructureDefinition-ct-anterior-surface.xlsx), [Schematron](StructureDefinition-ct-anterior-surface.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ct-anterior-surface",
  "url" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ct-anterior-surface",
  "version" : "0.3.0",
  "name" : "CTAnteriorSurface",
  "title" : "Corneal Tomography - Anterior Surface",
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
  "description" : "Represents the anterior corneal surface analysis component of a corneal\ntomography exam (e.g. Scheimpflug/Pentacam-style device), one of six Observations grouped\nunder a single CornealTomographyReport. Sourced directly from the FHIR4Eyes Observations\ncatalog (Corneal Topography: Anterior Surface section). Component codes are left as open\ntext for now, following this guide's terminology rigor: most confirmed SNOMED CT/LOINC\ncodes were not identified for these device-specific indices (see Terminology); a handful\nof components reference specific DICOM Sup 168 tags directly in their terminology, noted\nin the catalog.",
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
      "short" : "Identifies this as the anterior surface component of a corneal tomography exam",
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
      "short" : "The topographer/tomographer used (Placido | Scheimpflug | AS-OCT | Orbscan)",
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
      "id" : "Observation.component:k1",
      "path" : "Observation.component",
      "sliceName" : "k1",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:k1.code",
      "path" : "Observation.component.code",
      "short" : "K1 (flat axis) - flat meridian keratometry"
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
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:k1Axis.code",
      "path" : "Observation.component.code",
      "short" : "K1 axis - flat meridian orientation"
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
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:k1Radius.code",
      "path" : "Observation.component.code",
      "short" : "K1 radius - flat meridian radius of curvature"
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
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:k2.code",
      "path" : "Observation.component.code",
      "short" : "K2 (steep axis) - steep meridian keratometry"
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
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:k2Axis.code",
      "path" : "Observation.component.code",
      "short" : "K2 axis - steep meridian orientation"
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
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:k2Radius.code",
      "path" : "Observation.component.code",
      "short" : "K2 radius - steep meridian radius of curvature"
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
      "short" : "Km (average) - average keratometry, calculated (K1+K2)/2"
    },
    {
      "id" : "Observation.component:km.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:cornealAstig",
      "path" : "Observation.component",
      "sliceName" : "cornealAstig",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:cornealAstig.code",
      "path" : "Observation.component.code",
      "short" : "Corneal astigmatism - difference between K2 and K1, calculated K2-K1"
    },
    {
      "id" : "Observation.component:cornealAstig.value[x]",
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
      "short" : "Corneal cylinder with axis"
    },
    {
      "id" : "Observation.component:cornealCyl.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:kMax",
      "path" : "Observation.component",
      "sliceName" : "kMax",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:kMax.code",
      "path" : "Observation.component.code",
      "short" : "K Max (front) - maximum keratometry on anterior surface, critical for keratoconus"
    },
    {
      "id" : "Observation.component:kMax.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:simK",
      "path" : "Observation.component",
      "sliceName" : "simK",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:simK.code",
      "path" : "Observation.component.code",
      "short" : "SimK steep / flat - simulated keratometry values"
    },
    {
      "id" : "Observation.component:simK.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:rh",
      "path" : "Observation.component",
      "sliceName" : "rh",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:rh.code",
      "path" : "Observation.component.code",
      "short" : "Rh (horizontal radius) - horizontal corneal radius"
    },
    {
      "id" : "Observation.component:rh.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:rv",
      "path" : "Observation.component",
      "sliceName" : "rv",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:rv.code",
      "path" : "Observation.component.code",
      "short" : "Rv (vertical radius) - vertical corneal radius"
    },
    {
      "id" : "Observation.component:rv.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:rmin",
      "path" : "Observation.component",
      "sliceName" : "rmin",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:rmin.code",
      "path" : "Observation.component.code",
      "short" : "Rmin (minimum radius) - steepest corneal radius"
    },
    {
      "id" : "Observation.component:rmin.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:qFront",
      "path" : "Observation.component",
      "sliceName" : "qFront",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:qFront.code",
      "path" : "Observation.component.code",
      "short" : "Q-value front (asphericity) - anterior surface asphericity, normal ~ -0.26"
    },
    {
      "id" : "Observation.component:qFront.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:elevFront",
      "path" : "Observation.component",
      "sliceName" : "elevFront",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:elevFront.code",
      "path" : "Observation.component.code",
      "short" : "Elevation front BFS - anterior elevation from Best Fit Sphere"
    },
    {
      "id" : "Observation.component:elevFront.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:bfsRadiusFront",
      "path" : "Observation.component",
      "sliceName" : "bfsRadiusFront",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:bfsRadiusFront.code",
      "path" : "Observation.component.code",
      "short" : "BFS radius front - Best Fit Sphere radius anterior"
    },
    {
      "id" : "Observation.component:bfsRadiusFront.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:sri",
      "path" : "Observation.component",
      "sliceName" : "sri",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:sri.code",
      "path" : "Observation.component.code",
      "short" : "Surface Regularity Index (SRI)"
    },
    {
      "id" : "Observation.component:sri.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:sai",
      "path" : "Observation.component",
      "sliceName" : "sai",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:sai.code",
      "path" : "Observation.component.code",
      "short" : "Surface Asymmetry Index (SAI)"
    },
    {
      "id" : "Observation.component:sai.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:isValue",
      "path" : "Observation.component",
      "sliceName" : "isValue",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:isValue.code",
      "path" : "Observation.component.code",
      "short" : "I-S value - Inferior-Superior asymmetry value, keratoconus screening"
    },
    {
      "id" : "Observation.component:isValue.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:kisa",
      "path" : "Observation.component",
      "sliceName" : "kisa",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:kisa.code",
      "path" : "Observation.component.code",
      "short" : "KISA% index - keratoconus screening index"
    },
    {
      "id" : "Observation.component:kisa.value[x]",
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
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:keratIndex.code",
      "path" : "Observation.component.code",
      "short" : "Keratometric index - refractive index for diopter conversion, n=1.3375"
    },
    {
      "id" : "Observation.component:keratIndex.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:pattern",
      "path" : "Observation.component",
      "sliceName" : "pattern",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:pattern.code",
      "path" : "Observation.component.code",
      "short" : "Topographic pattern - map classification (regular, irregular, keratoconus, pellucid, post-LASIK, forme fruste)"
    },
    {
      "id" : "Observation.component:pattern.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Observation.component:tcrp",
      "path" : "Observation.component",
      "sliceName" : "tcrp",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:tcrp.code",
      "path" : "Observation.component.code",
      "short" : "Total Corneal Refractive Power (TCRP) - true corneal power including posterior surface"
    },
    {
      "id" : "Observation.component:tcrp.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:tnp",
      "path" : "Observation.component",
      "sliceName" : "tnp",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:tnp.code",
      "path" : "Observation.component.code",
      "short" : "True Net Power (TNP) - true net corneal power anterior + posterior"
    },
    {
      "id" : "Observation.component:tnp.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:ekr10",
      "path" : "Observation.component",
      "sliceName" : "ekr10",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:ekr10.code",
      "path" : "Observation.component.code",
      "short" : "EKR 1.0mm zone - equivalent keratometry, Holladay EKR"
    },
    {
      "id" : "Observation.component:ekr10.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:ekr30",
      "path" : "Observation.component",
      "sliceName" : "ekr30",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:ekr30.code",
      "path" : "Observation.component.code",
      "short" : "EKR 3.0mm zone - equivalent keratometry, Holladay EKR"
    },
    {
      "id" : "Observation.component:ekr30.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:ekr45",
      "path" : "Observation.component",
      "sliceName" : "ekr45",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:ekr45.code",
      "path" : "Observation.component.code",
      "short" : "EKR 4.5mm zone - equivalent keratometry, Holladay EKR, post-refractive IOL calc"
    },
    {
      "id" : "Observation.component:ekr45.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:zone3MeanPwr",
      "path" : "Observation.component",
      "sliceName" : "zone3MeanPwr",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:zone3MeanPwr.code",
      "path" : "Observation.component.code",
      "short" : "3mm zone Mean Power - mean corneal power in 3mm zone"
    },
    {
      "id" : "Observation.component:zone3MeanPwr.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:zone3AstigPwr",
      "path" : "Observation.component",
      "sliceName" : "zone3AstigPwr",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:zone3AstigPwr.code",
      "path" : "Observation.component.code",
      "short" : "3mm zone Astig Power - astigmatism power in 3mm zone"
    },
    {
      "id" : "Observation.component:zone3AstigPwr.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:zone3SteepAxis",
      "path" : "Observation.component",
      "sliceName" : "zone3SteepAxis",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:zone3SteepAxis.code",
      "path" : "Observation.component.code",
      "short" : "3mm zone Steep Axis"
    },
    {
      "id" : "Observation.component:zone3SteepAxis.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:zone3FlatAxis",
      "path" : "Observation.component",
      "sliceName" : "zone3FlatAxis",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:zone3FlatAxis.code",
      "path" : "Observation.component.code",
      "short" : "3mm zone Flat Axis"
    },
    {
      "id" : "Observation.component:zone3FlatAxis.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:zone5MeanPwr",
      "path" : "Observation.component",
      "sliceName" : "zone5MeanPwr",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:zone5MeanPwr.code",
      "path" : "Observation.component.code",
      "short" : "5mm zone Mean Power - mean corneal power in 5mm zone"
    },
    {
      "id" : "Observation.component:zone5MeanPwr.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:zone5AstigPwr",
      "path" : "Observation.component",
      "sliceName" : "zone5AstigPwr",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:zone5AstigPwr.code",
      "path" : "Observation.component.code",
      "short" : "5mm zone Astig Power - astigmatism power in 5mm zone"
    },
    {
      "id" : "Observation.component:zone5AstigPwr.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:zone5SteepAxis",
      "path" : "Observation.component",
      "sliceName" : "zone5SteepAxis",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:zone5SteepAxis.code",
      "path" : "Observation.component.code",
      "short" : "5mm zone Steep Axis"
    },
    {
      "id" : "Observation.component:zone5SteepAxis.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:zone5FlatAxis",
      "path" : "Observation.component",
      "sliceName" : "zone5FlatAxis",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:zone5FlatAxis.code",
      "path" : "Observation.component.code",
      "short" : "5mm zone Flat Axis"
    },
    {
      "id" : "Observation.component:zone5FlatAxis.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:totalCornealAstig",
      "path" : "Observation.component",
      "sliceName" : "totalCornealAstig",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:totalCornealAstig.code",
      "path" : "Observation.component.code",
      "short" : "Total corneal astigmatism (tWFA) - true corneal astigmatism from wavefront"
    },
    {
      "id" : "Observation.component:totalCornealAstig.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:irregularAstig",
      "path" : "Observation.component",
      "sliceName" : "irregularAstig",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:irregularAstig.code",
      "path" : "Observation.component.code",
      "short" : "Total corneal irregular astigmatism - higher-order corneal irregularity"
    },
    {
      "id" : "Observation.component:irregularAstig.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:cornealHOA",
      "path" : "Observation.component",
      "sliceName" : "cornealHOA",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:cornealHOA.code",
      "path" : "Observation.component.code",
      "short" : "Corneal HOA RMS - corneal higher-order aberrations RMS"
    },
    {
      "id" : "Observation.component:cornealHOA.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:kappaAngle",
      "path" : "Observation.component",
      "sliceName" : "kappaAngle",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:kappaAngle.code",
      "path" : "Observation.component.code",
      "short" : "Kappa angle - angle between visual and pupillary axis"
    },
    {
      "id" : "Observation.component:kappaAngle.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:kappaIntercept",
      "path" : "Observation.component",
      "sliceName" : "kappaIntercept",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:kappaIntercept.code",
      "path" : "Observation.component.code",
      "short" : "Kappa intercept - kappa intercept coordinates (x,y)"
    },
    {
      "id" : "Observation.component:kappaIntercept.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Observation.component:sia",
      "path" : "Observation.component",
      "sliceName" : "sia",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:sia.code",
      "path" : "Observation.component.code",
      "short" : "SIA (Surgically Induced Astigmatism) - expected astigmatism from incision, surgical planning"
    },
    {
      "id" : "Observation.component:sia.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:predictedAstig",
      "path" : "Observation.component",
      "sliceName" : "predictedAstig",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:predictedAstig.code",
      "path" : "Observation.component.code",
      "short" : "Predicted post-op corneal astigmatism - expected residual astigmatism, toric IOL planning"
    },
    {
      "id" : "Observation.component:predictedAstig.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:toricAxis",
      "path" : "Observation.component",
      "sliceName" : "toricAxis",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:toricAxis.code",
      "path" : "Observation.component.code",
      "short" : "Optimal toric IOL axis - recommended axis for toric IOL, toric IOL planning"
    },
    {
      "id" : "Observation.component:toricAxis.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:qs",
      "path" : "Observation.component",
      "sliceName" : "qs",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:qs.code",
      "path" : "Observation.component.code",
      "short" : "QS (quality score) - scan quality score, scan reliability"
    },
    {
      "id" : "Observation.component:qs.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Observation.component:vertexLoc",
      "path" : "Observation.component",
      "sliceName" : "vertexLoc",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:vertexLoc.code",
      "path" : "Observation.component.code",
      "short" : "Corneal vertex location - corneal vertex position coordinates. DICOM (0046,0202)"
    },
    {
      "id" : "Observation.component:vertexLoc.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Observation.component:pupilCentroidX",
      "path" : "Observation.component",
      "sliceName" : "pupilCentroidX",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:pupilCentroidX.code",
      "path" : "Observation.component.code",
      "short" : "Pupil centroid X - X-coordinate of pupil center. DICOM (0046,0203)"
    },
    {
      "id" : "Observation.component:pupilCentroidX.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:pupilCentroidY",
      "path" : "Observation.component",
      "sliceName" : "pupilCentroidY",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:pupilCentroidY.code",
      "path" : "Observation.component.code",
      "short" : "Pupil centroid Y - Y-coordinate of pupil center. DICOM (0046,0204)"
    },
    {
      "id" : "Observation.component:pupilCentroidY.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:pupilRadius",
      "path" : "Observation.component",
      "sliceName" : "pupilRadius",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:pupilRadius.code",
      "path" : "Observation.component.code",
      "short" : "Equivalent pupil radius - radius of equivalent circular pupil. DICOM (0046,0205)"
    },
    {
      "id" : "Observation.component:pupilRadius.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:mapType",
      "path" : "Observation.component",
      "sliceName" : "mapType",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:mapType.code",
      "path" : "Observation.component.code",
      "short" : "Map type - type of topographic map encoded (axial, tangential, elevation, refractive, pachymetry). DICOM (0046,0207)"
    },
    {
      "id" : "Observation.component:mapType.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Observation.component:analyzedArea",
      "path" : "Observation.component",
      "sliceName" : "analyzedArea",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:analyzedArea.code",
      "path" : "Observation.component.code",
      "short" : "Analyzed area - total area of cornea analyzed. DICOM (0046,0227)"
    },
    {
      "id" : "Observation.component:analyzedArea.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:eccentricity",
      "path" : "Observation.component",
      "sliceName" : "eccentricity",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:eccentricity.code",
      "path" : "Observation.component.code",
      "short" : "Corneal eccentricity index - corneal eccentricity (shape factor). DICOM (0046,0234)"
    },
    {
      "id" : "Observation.component:eccentricity.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:kpi",
      "path" : "Observation.component",
      "sliceName" : "kpi",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:kpi.code",
      "path" : "Observation.component.code",
      "short" : "Keratoconus prediction index (KPI) - corneal KC prediction index, different from KISA%. DICOM (0046,0236)"
    },
    {
      "id" : "Observation.component:kpi.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:potentialVA",
      "path" : "Observation.component",
      "sliceName" : "potentialVA",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:potentialVA.code",
      "path" : "Observation.component.code",
      "short" : "Decimal potential visual acuity - estimated potential VA from corneal surface. DICOM (0046,0238)"
    },
    {
      "id" : "Observation.component:potentialVA.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    }]
  }
}

```
