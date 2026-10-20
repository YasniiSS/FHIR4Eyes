# Intraocular lens (implanted device) - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Intraocular lens (implanted device)**

## Example Device: Intraocular lens (implanted device)

Profile: [Ophthalmic Device](StructureDefinition-ophthalmic-device.md)

**identifier**: LIO-2026-00123

**manufacturer**: Alcon

**lotNumber**: LOT-A123

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | AcrySof IQ | Manufacturer name |

**type**: Intraocular lens, monofocal

### Properties

| | | |
| :--- | :--- | :--- |
| - | **Type** | **ValueQuantity** |
| * | Diopter power | 21 [diop] (Details: UCUM code[diop] = '[diop]') |

**patient**: [Patient Example Female, DoB: 1990-01-01 ( Passport number: PA1234567)](Patient-PatientExample.md)



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "IntraocularLensExample",
  "meta" : {
    "profile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-device"]
  },
  "identifier" : [{
    "value" : "LIO-2026-00123"
  }],
  "manufacturer" : "Alcon",
  "lotNumber" : "LOT-A123",
  "deviceName" : [{
    "name" : "AcrySof IQ",
    "type" : "manufacturer-name"
  }],
  "type" : {
    "text" : "Intraocular lens, monofocal"
  },
  "property" : [{
    "type" : {
      "text" : "Diopter power"
    },
    "valueQuantity" : [{
      "value" : 21,
      "system" : "http://unitsofmeasure.org",
      "code" : "[diop]"
    }]
  }],
  "patient" : {
    "reference" : "Patient/PatientExample"
  }
}

```
