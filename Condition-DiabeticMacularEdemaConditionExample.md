# DiabeticMacularEdemaConditionExample - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DiabeticMacularEdemaConditionExample**

## Example Condition: DiabeticMacularEdemaConditionExample

Profile: [Ophthalmic Condition](StructureDefinition-ophthalmic-condition.md)

**code**: Diabetic macular edema

**bodySite**: 

**subject**: [Patient Example Female, DoB: 1990-01-01](Patient-PatientExample.md)



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "DiabeticMacularEdemaConditionExample",
  "meta" : {
    "profile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-condition"]
  },
  "code" : {
    "text" : "Diabetic macular edema"
  },
  "bodySite" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/bodySite",
      "valueReference" : {
        "reference" : "BodyStructure/LeftEyeStructureExample"
      }
    }]
  }],
  "subject" : {
    "reference" : "Patient/PatientExample"
  }
}

```
