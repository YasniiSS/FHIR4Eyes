# OCT imaging study: right eye - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OCT imaging study: right eye**

## Example ImagingStudy: OCT imaging study: right eye

Profile: [Ophthalmic Imaging Study](StructureDefinition-ophthalmic-imaging-study.md)

**status**: Available

**modality**: [DICOM: OPT](http://hl7.org/fhir/R4/codesystem-dicom-dcim.html#dicom-dcim-OPT) (Ophthalmic Tomography)

**subject**: [Patient Example Female, DoB: 1990-01-01 ( Passport number: PA1234567)](Patient-PatientExample.md)

**started**: 2026-08-18 09:00:00+0000

**basedOn**: [ServiceRequest ](ServiceRequest-OCTServiceRequestExample.md)

**numberOfSeries**: 2

**numberOfInstances**: 2

> **series****uid**: 1.2.840.10008.oct.rnfl.right.example**modality**: [DICOM: OPT](http://hl7.org/fhir/R4/codesystem-dicom-dcim.html#dicom-dcim-OPT) (Ophthalmic Tomography)**bodySite**: [SNOMED CT: 81016008](http://snomed.info/id/81016008) (Optic disc)**laterality**: [SNOMED CT: 24028007](http://snomed.info/id/24028007) (Right)

### Instances

| | | |
| :--- | :--- | :--- |
| - | **Uid** | **SopClass** |
| * | 1.2.840.10008.oct.rnfl.right.example.instance1 | unknown: urn:oid:1.2.840.10008.5.1.4.1.1.77.1.5.4 (urn:oid:1.2.840.10008.5.1.4.1.1.77.1.5.4) |


> **series****uid**: 1.2.840.10008.oct.macula.right.example**modality**: [DICOM: OPT](http://hl7.org/fhir/R4/codesystem-dicom-dcim.html#dicom-dcim-OPT) (Ophthalmic Tomography)**bodySite**: [SNOMED CT: 82859000](http://snomed.info/id/82859000) (Macula lutea structure)**laterality**: [SNOMED CT: 24028007](http://snomed.info/id/24028007) (Right)

### Instances

| | | |
| :--- | :--- | :--- |
| - | **Uid** | **SopClass** |
| * | 1.2.840.10008.oct.macula.right.example.instance1 | unknown: urn:oid:1.2.840.10008.5.1.4.1.1.77.1.5.4 (urn:oid:1.2.840.10008.5.1.4.1.1.77.1.5.4) |




## Resource Content

```json
{
  "resourceType" : "ImagingStudy",
  "id" : "OCTStudyRightEyeExample",
  "meta" : {
    "profile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-imaging-study"]
  },
  "status" : "available",
  "modality" : [{
    "system" : "http://dicom.nema.org/resources/ontology/DCM",
    "code" : "OPT",
    "display" : "Ophthalmic Tomography"
  }],
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "started" : "2026-08-18T09:00:00Z",
  "basedOn" : [{
    "reference" : "ServiceRequest/OCTServiceRequestExample"
  }],
  "numberOfSeries" : 2,
  "numberOfInstances" : 2,
  "series" : [{
    "uid" : "1.2.840.10008.oct.rnfl.right.example",
    "modality" : {
      "system" : "http://dicom.nema.org/resources/ontology/DCM",
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
      "code" : "24028007",
      "display" : "Right"
    },
    "instance" : [{
      "uid" : "1.2.840.10008.oct.rnfl.right.example.instance1",
      "sopClass" : {
        "system" : "urn:ietf:rfc:3986",
        "code" : "urn:oid:1.2.840.10008.5.1.4.1.1.77.1.5.4"
      }
    }]
  },
  {
    "uid" : "1.2.840.10008.oct.macula.right.example",
    "modality" : {
      "system" : "http://dicom.nema.org/resources/ontology/DCM",
      "code" : "OPT",
      "display" : "Ophthalmic Tomography"
    },
    "bodySite" : {
      "system" : "http://snomed.info/sct",
      "code" : "82859000",
      "display" : "Macula lutea structure"
    },
    "laterality" : {
      "system" : "http://snomed.info/sct",
      "code" : "24028007",
      "display" : "Right"
    },
    "instance" : [{
      "uid" : "1.2.840.10008.oct.macula.right.example.instance1",
      "sopClass" : {
        "system" : "urn:ietf:rfc:3986",
        "code" : "urn:oid:1.2.840.10008.5.1.4.1.1.77.1.5.4"
      }
    }]
  }]
}

```
