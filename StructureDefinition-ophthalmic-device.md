# Ophthalmic Device - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ophthalmic Device**

## Resource Profile: Ophthalmic Device 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-device | *Version*:0.1.0 |
| Draft as of 2026-08-19 | *Computable Name*:OphthalmicDevice |

 
An implanted ophthalmic device instance, such as an intraocular lens (IOL), affixed to a specific patient. Following the same pattern as US Core's Implantable Device Profile, this represents the specific unit already implanted, not a generic catalog item; patient is therefore required. Procedure.focalDevice (in OphthalmicProcedure) also references this Device from the implanting procedure, consistent with US Core's own guidance that a procedure involving an implantable device should reference it via focalDevice. A generic device catalog (DeviceDefinition) is out of scope for this guide for now. See the Profiles page of this guide for the full design rationale, including a note on other implantable devices (such as glaucoma drainage devices) that may also fit this profile. 

**Usages:**

* Refer to this Profile: [Ophthalmic Procedure](StructureDefinition-ophthalmic-procedure.md)
* Examples for this Profile: [Device/IntraocularLensExample](Device-IntraocularLensExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir4eyes.core|current/StructureDefinition/StructureDefinition-ophthalmic-device.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ophthalmic-device.csv), [Excel](StructureDefinition-ophthalmic-device.xlsx), [Schematron](StructureDefinition-ophthalmic-device.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ophthalmic-device",
  "url" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-device",
  "version" : "0.1.0",
  "name" : "OphthalmicDevice",
  "title" : "Ophthalmic Device",
  "status" : "draft",
  "date" : "2026-08-19T17:13:42+00:00",
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
  "description" : "An implanted ophthalmic device instance, such as an intraocular lens (IOL),\naffixed to a specific patient. Following the same pattern as US Core's Implantable Device\nProfile, this represents the specific unit already implanted, not a generic catalog item;\npatient is therefore required. Procedure.focalDevice (in OphthalmicProcedure) also\nreferences this Device from the implanting procedure, consistent with US Core's own\nguidance that a procedure involving an implantable device should reference it via\nfocalDevice. A generic device catalog (DeviceDefinition) is out of scope for this guide for\nnow. See the Profiles page of this guide for the full design rationale, including a note\non other implantable devices (such as glaucoma drainage devices) that may also fit this\nprofile.",
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "udi",
    "uri" : "http://fda.gov/UDI",
    "name" : "UDI Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Device",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Device",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Device",
      "path" : "Device"
    },
    {
      "id" : "Device.identifier",
      "path" : "Device.identifier",
      "short" : "External identifier for this device, if applicable (e.g. catalog/lot number)",
      "mustSupport" : true
    },
    {
      "id" : "Device.udiCarrier",
      "path" : "Device.udiCarrier",
      "mustSupport" : true
    },
    {
      "id" : "Device.manufacturer",
      "path" : "Device.manufacturer",
      "short" : "The manufacturer of the device (e.g. Alcon, Johnson & Johnson)",
      "mustSupport" : true
    },
    {
      "id" : "Device.lotNumber",
      "path" : "Device.lotNumber",
      "mustSupport" : true
    },
    {
      "id" : "Device.serialNumber",
      "path" : "Device.serialNumber",
      "mustSupport" : true
    },
    {
      "id" : "Device.deviceName",
      "path" : "Device.deviceName",
      "short" : "The name of the device as given by the manufacturer, indicating its specific model",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Device.type",
      "path" : "Device.type",
      "short" : "The kind of device (e.g. intraocular lens)",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Device.property",
      "path" : "Device.property",
      "short" : "Technical specifications, such as diopter power, material, or diameter",
      "mustSupport" : true
    },
    {
      "id" : "Device.patient",
      "path" : "Device.patient",
      "short" : "The patient to whom this device is affixed (required, since this represents an already-implanted instance)",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
