# OCT macula imaging study: left eye - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OCT macula imaging study: left eye**

## Example ImagingStudy: OCT macula imaging study: left eye

Profile: [Ophthalmic Imaging Study](StructureDefinition-ophthalmic-imaging-study.md)

**status**: Available

**modality**: [DICOM: OPT](http://hl7.org/fhir/R4/codesystem-dicom-dcim.html#dicom-dcim-OPT) (Ophthalmic Tomography)

**subject**: [Patient Example Female, DoB: 1990-01-01 ( Passport number: PA1234567)](Patient-PatientExample.md)

**started**: 2026-08-18 10:00:00+0000

**basedOn**: [ServiceRequest ](ServiceRequest-OCTMaculaServiceRequestExample.md)

**numberOfSeries**: 1

**numberOfInstances**: 1

> **series****uid**: 1.2.840.10008.oct.macula.example**modality**: [DICOM: OPT](http://hl7.org/fhir/R4/codesystem-dicom-dcim.html#dicom-dcim-OPT) (Ophthalmic Tomography)**bodySite**: [SNOMED CT: 82859000](http://snomed.info/id/82859000) (Macula lutea structure)**laterality**: [SNOMED CT: 7771000](http://snomed.info/id/7771000) (Left)

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
    "system" : "http://dicom.nema.org/resources/ontology/DCM",
    "code" : "OPT",
    "display" : "Ophthalmic Tomography"
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
    "uid" : "1.2.840.10008.oct.macula.example",
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
      "code" : "7771000",
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
