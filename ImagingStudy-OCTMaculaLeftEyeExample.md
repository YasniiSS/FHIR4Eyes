# OCTMaculaLeftEyeExample - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OCTMaculaLeftEyeExample**

## Example ImagingStudy: OCTMaculaLeftEyeExample

Profile: [Ophthalmic Imaging Study](StructureDefinition-ophthalmic-imaging-study.md)

**status**: Available

**modality**: unknown: OCT (Optical Coherence Tomography Scanner)

**subject**: [Patient Example Female, DoB: 1990-01-01](Patient-PatientExample.md)

**started**: 2026-08-18 10:00:00+0000

**basedOn**: [ServiceRequest ](ServiceRequest-OCTMaculaServiceRequestExample.md)

**numberOfSeries**: 1

**numberOfInstances**: 1

> **series****BodyStructure Reference**: [BodyStructure: location = Structure of eye proper; locationQualifier = Left](BodyStructure-LeftEyeStructureExample.md)**uid**: 1.2.840.10008.oct.macula.example**modality**: unknown: OCT (Optical Coherence Tomography Scanner)**bodySite**: [not stated]: (Macula)**laterality**: [not stated]: (Left)

### Instances

| | | |
| :--- | :--- | :--- |
| - | **Uid** | **SopClass** |
| * | 1.2.840.10008.oct.macula.example.instance1 | unknown: urn:oid:1.2.840.10008.5.1.4.1.1.77.1.5.4 (urn:oid:1.2.840.10008.5.1.4.1.1.77.1.5.4) |




## Resource Content

```json
{
  "resourceType" : "ImagingStudy",
  "id" : "OCTMaculaLeftEyeExample",
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
  "started" : "2026-08-18T10:00:00Z",
  "basedOn" : [{
    "reference" : "ServiceRequest/OCTMaculaServiceRequestExample"
  }],
  "numberOfSeries" : 1,
  "numberOfInstances" : 1,
  "series" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/bodySite",
      "valueReference" : {
        "reference" : "BodyStructure/LeftEyeStructureExample"
      }
    }],
    "uid" : "1.2.840.10008.oct.macula.example",
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
      "uid" : "1.2.840.10008.oct.macula.example.instance1",
      "sopClass" : {
        "system" : "urn:ietf:rfc:3986",
        "code" : "urn:oid:1.2.840.10008.5.1.4.1.1.77.1.5.4"
      }
    }]
  }]
}

```
