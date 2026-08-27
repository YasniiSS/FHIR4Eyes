# Ophthalmic Ocular Biometry - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ophthalmic Ocular Biometry**

## Resource Profile: Ophthalmic Ocular Biometry 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-ocular-biometry | *Version*:0.2.0 |
| Draft as of 2026-08-25 | *Computable Name*:OphthalmicOcularBiometry |

 
Represents an ocular biometry exam (optical or ultrasonic), used primarily for IOL power calculation ahead of cataract surgery. Sourced directly from the FHIR4Eyes Observations catalog (Ocular Biometry section), DICOM-aligned per CIDs 4230-4243 where a CID reference is noted. Holds the shared measurements common to the whole exam (axial length, keratometry, and so on) as components; each formula calculated from those shared measurements, with its own suggested IOL and expected outcome, is a separate IOLFormulaResult instance referenced via hasMember, since one biometry exam is typically run through several formulas. 

**Usages:**

* Examples for this Profile: [Observation/BiometryRightEyeExample](Observation-BiometryRightEyeExample.md)

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
  "version" : "0.2.0",
  "name" : "OphthalmicOcularBiometry",
  "title" : "Ophthalmic Ocular Biometry",
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
  "description" : "Represents an ocular biometry exam (optical or ultrasonic), used primarily\nfor IOL power calculation ahead of cataract surgery. Sourced directly from the FHIR4Eyes\nObservations catalog (Ocular Biometry section), DICOM-aligned per CIDs 4230-4243 where a\nCID reference is noted. Holds the shared measurements common to the whole exam (axial\nlength, keratometry, and so on) as components; each formula calculated from those shared\nmeasurements, with its own suggested IOL and expected outcome, is a separate\nIOLFormulaResult instance referenced via hasMember, since one biometry exam is typically\nrun through several formulas.",
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
      "short" : "Identifies this as an ocular biometry exam",
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
      "short" : "Biometry type: optical (IOLMaster, Lenstar) or ultrasonic (A-scan). DICOM CID 4240 (Data Source)",
      "min" : 1,
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
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:al.code",
      "path" : "Observation.component.code",
      "short" : "Axial length (AL) - anteroposterior eye distance. DICOM tag (0022,1019)"
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
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:alType.code",
      "path" : "Observation.component.code",
      "short" : "AL measurement type - optical, ultrasonic immersion, or ultrasonic contact. DICOM CID 4230"
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
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:alSNR.code",
      "path" : "Observation.component.code",
      "short" : "AL signal-to-noise ratio (SNR) - quality of AL measurement, >2.0 acceptable. DICOM CID 4243"
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
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:alSelection.code",
      "path" : "Observation.component.code",
      "short" : "AL selection method - how axial length was selected. DICOM CID 4241"
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
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:acd.code",
      "path" : "Observation.component.code",
      "short" : "Anterior chamber depth (ACD)"
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
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:acdDef.code",
      "path" : "Observation.component.code",
      "short" : "ACD definition - endothelium to lens or epithelium to lens. DICOM CID 4239"
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
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:lt.code",
      "path" : "Observation.component.code",
      "short" : "Lens thickness (LT) - crystalline lens thickness"
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
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:lensStatus.code",
      "path" : "Observation.component.code",
      "short" : "Lens status - phakic, pseudophakic, or aphakic. DICOM CID 4231"
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
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:vitreousStatus.code",
      "path" : "Observation.component.code",
      "short" : "Vitreous status. DICOM CID 4232"
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
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:k1.code",
      "path" : "Observation.component.code",
      "short" : "K1 (flat keratometry) - flat meridian K with axis. DICOM CID 4235"
    },
    {
      "id" : "Observation.component:k1.value[x]",
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
      "short" : "K1 radius - flat meridian radius"
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
      "short" : "K2 (steep keratometry) - steep meridian K with axis. DICOM CID 4235"
    },
    {
      "id" : "Observation.component:k2.value[x]",
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
      "short" : "K2 radius - steep meridian radius"
    },
    {
      "id" : "Observation.component:k2Radius.value[x]",
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
      "short" : "R/SE (mean radius / sph equiv)"
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
      "short" : "Corneal cylinder - corneal astigmatism from biometer"
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
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:keratIndex.code",
      "path" : "Observation.component.code",
      "short" : "Keratometric index (n) - refractive index for K conversion"
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
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:wtw.code",
      "path" : "Observation.component.code",
      "short" : "White-to-white (WTW) - horizontal corneal diameter"
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
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:pupilDiam.code",
      "path" : "Observation.component.code",
      "short" : "Pupil diameter"
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
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:mydriaticAgent.code",
      "path" : "Observation.component.code",
      "short" : "Mydriatic agent used, if applicable. DICOM (0022,000D)"
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
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:pupilDilated.code",
      "path" : "Observation.component.code",
      "short" : "Pupil dilated - whether pupil was dilated"
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
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:refSurgeryHx.code",
      "path" : "Observation.component.code",
      "short" : "Refractive surgery history - critical for formula selection. DICOM CID 4234"
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
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:targetRef.code",
      "path" : "Observation.component.code",
      "short" : "Target refraction - desired post-surgical refraction"
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
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:refErrorType.code",
      "path" : "Observation.component.code",
      "short" : "Refractive error type. DICOM CID 4238"
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
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:dataSource.code",
      "path" : "Observation.component.code",
      "short" : "Data source - origin of measurement data. DICOM CID 4240"
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
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:vertex.code",
      "path" : "Observation.component.code",
      "short" : "Vertex distance - distance from lens to cornea"
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
