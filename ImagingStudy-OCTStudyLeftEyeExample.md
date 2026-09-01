# OCTStudyLeftEyeExample - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OCTStudyLeftEyeExample**

## Example ImagingStudy: OCTStudyLeftEyeExample

Profile: [Ophthalmic Imaging Study](StructureDefinition-ophthalmic-imaging-study.md)

**status**: Available

**modality**: unknown: OPT (Ophthalmic Tomography)

**subject**: [Patient Example Female, DoB: 1990-01-01 ( PA1234567)](Patient-PatientExample.md)

**started**: 2026-08-18 09:05:00+0000

**basedOn**: [ServiceRequest ](ServiceRequest-OCTServiceRequestExample.md)

**numberOfSeries**: 2

**numberOfInstances**: 2

> **series****BodyStructure Reference**: [BodyStructure: location = Structure of eye proper; locationQualifier = Left](BodyStructure-LeftEyeStructureExample.md)**uid**: 1.2.840.10008.oct.rnfl.left.example**modality**: unknown: OPT (Ophthalmic Tomography)**bodySite**: [SNOMED CT: 81016008](http://snomed.info/id/81016008) (Optic disc)**laterality**: [SNOMED CT: 7771000](http://snomed.info/id/7771000) (Left)

### Instances

| | | |
| :--- | :--- | :--- |
| - | **Uid** | **SopClass** |
| * | 1.2.840.10008.oct.rnfl.left.example.instance1 | unknown: urn:oid:1.2.840.10008.5.1.4.1.1.77.1.5.4 (urn:oid:1.2.840.10008.5.1.4.1.1.77.1.5.4) |


> **series****BodyStructure Reference**: [BodyStructure: location = Structure of eye proper; locationQualifier = Left](BodyStructure-LeftEyeStructureExample.md)**uid**: 1.2.840.10008.oct.macula.left.example**modality**: unknown: OPT (Ophthalmic Tomography)**bodySite**: [SNOMED CT: 39021009](http://snomed.info/id/39021009) (Retina)**laterality**: [SNOMED CT: 7771000](http://snomed.info/id/7771000) (Left)

### Instances

| | | |
| :--- | :--- | :--- |
| - | **Uid** | **SopClass** |
| * | 1.2.840.10008.oct.macula.left.example.instance1 | unknown: urn:oid:1.2.840.10008.5.1.4.1.1.77.1.5.4 (urn:oid:1.2.840.10008.5.1.4.1.1.77.1.5.4) |




## Resource Content

```json
{
  "resourceType" : "ImagingStudy",
  "id" : "OCTStudyLeftEyeExample",
  "meta" : {
    "profile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-imaging-study"]
  },
  "status" : "available",
  "modality" : [{
    "system" : "urn:oid:1.2.840.10008.2.16.4",
    "code" : "OPT",
    "display" : "Ophthalmic Tomography"
  }],
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "started" : "2026-08-18T09:05:00Z",
  "basedOn" : [{
    "reference" : "ServiceRequest/OCTServiceRequestExample"
  }],
  "numberOfSeries" : 2,
  "numberOfInstances" : 2,
  "series" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/bodySite",
      "valueReference" : {
        "reference" : "BodyStructure/LeftEyeStructureExample"
      }
    }],
    "uid" : "1.2.840.10008.oct.rnfl.left.example",
    "modality" : {
      "system" : "urn:oid:1.2.840.10008.2.16.4",
      "code" : "OPT",
      "display" : "Ophthalmic Tomography"
    },
    "bodySite" : {
      "system" : "http://snomed.info/sct",
      "code" : "81016008",
      "display" : "Optic disc"
    },
    "laterality" : {
      "system" : "http://snomed.info/sct",
      "code" : "7771000",
      "display" : "Left"
    },
    "instance" : [{
      "uid" : "1.2.840.10008.oct.rnfl.left.example.instance1",
      "sopClass" : {
        "system" : "urn:ietf:rfc:3986",
        "code" : "urn:oid:1.2.840.10008.5.1.4.1.1.77.1.5.4"
      }
    }]
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/bodySite",
      "valueReference" : {
        "reference" : "BodyStructure/LeftEyeStructureExample"
      }
    }],
    "uid" : "1.2.840.10008.oct.macula.left.example",
    "modality" : {
      "system" : "urn:oid:1.2.840.10008.2.16.4",
      "code" : "OPT",
      "display" : "Ophthalmic Tomography"
    },
    "bodySite" : {
      "system" : "http://snomed.info/sct",
      "code" : "39021009",
      "display" : "Retina"
    },
    "laterality" : {
      "system" : "http://snomed.info/sct",
      "code" : "7771000",
      "display" : "Left"
    },
    "instance" : [{
      "uid" : "1.2.840.10008.oct.macula.left.example.instance1",
      "sopClass" : {
        "system" : "urn:ietf:rfc:3986",
        "code" : "urn:oid:1.2.840.10008.5.1.4.1.1.77.1.5.4"
      }
    }]
  }]
}

```
