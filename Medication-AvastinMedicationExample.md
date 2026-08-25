# AvastinMedicationExample - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AvastinMedicationExample**

## Example Medication: AvastinMedicationExample

Profile: [Ophthalmic Medication](StructureDefinition-ophthalmic-medication.md)

**code**: Bevacizumab (Avastin), intravitreal

**manufacturer**: Genentech / Roche

**form**: Injection solution

### Batches

| | | |
| :--- | :--- | :--- |
| - | **LotNumber** | **ExpirationDate** |
| * | LOT-B456 | 2027-06-30 |



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "AvastinMedicationExample",
  "meta" : {
    "profile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-medication"]
  },
  "code" : {
    "text" : "Bevacizumab (Avastin), intravitreal"
  },
  "manufacturer" : {
    "display" : "Genentech / Roche"
  },
  "form" : {
    "text" : "Injection solution"
  },
  "batch" : {
    "lotNumber" : "LOT-B456",
    "expirationDate" : "2027-06-30"
  }
}

```
