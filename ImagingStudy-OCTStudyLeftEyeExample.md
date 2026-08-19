# OCTStudyLeftEyeExample - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OCTStudyLeftEyeExample**

## Example ImagingStudy: OCTStudyLeftEyeExample

Profile: [Ophthalmic Imaging Study](StructureDefinition-ophthalmic-imaging-study.md)

**status**: Available

**modality**: unknown: OCT (Optical Coherence Tomography Scanner)

**subject**: [Patient Example Female, DoB: 1990-01-01](Patient-PatientExample.md)

**started**: 2018-02-06 09:05:00+0000

**basedOn**: [ServiceRequest ](ServiceRequest-OCTServiceRequestExample.md)

**numberOfSeries**: 2

**numberOfInstances**: 2

> **series****BodyStructure Reference**: [BodyStructure: location = Structure of eye proper; locationQualifier = Left](BodyStructure-LeftEyeStructureExample.md)**uid**: 1.2.840.10008.oct.rnfl.left.example**modality**: unknown: OCT (Optical Coherence Tomography Scanner)**bodySite**: [not stated]: (Optic disc / RNFL)**laterality**: [not stated]: (Left)

### Instances

| | | |
| :--- | :--- | :--- |
| - | **Uid** | **SopClass** |
| * | 1.2.840.10008.oct.rnfl.left.example.instance1 | unknown: urn:oid:1.2.840.10008.5.1.4.1.1.77.1.5.4 (urn:oid:1.2.840.10008.5.1.4.1.1.77.1.5.4) |


> **series****BodyStructure Reference**: [BodyStructure: location = Structure of eye proper; locationQualifier = Left](BodyStructure-LeftEyeStructureExample.md)**uid**: 1.2.840.10008.oct.macula.left.example**modality**: unknown: OCT (Optical Coherence Tomography Scanner)**bodySite**: [not stated]: (Macula)**laterality**: [not stated]: (Left)

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
    "code" : "OCT",
    "display" : "Optical Coherence Tomography Scanner"
  }],
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "started" : "2018-02-06T09:05:00Z",
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
      "code" : "OCT",
      "display" : "Optical Coherence Tomography Scanner"
    },
    "bodySite" : {
      "display" : "Optic disc / RNFL"
    },
    "laterality" : {
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
      "code" : "OCT",
      "display" : "Optical Coherence Tomography Scanner"
    },
    "bodySite" : {
      "display" : "Macula"
    },
    "laterality" : {
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
