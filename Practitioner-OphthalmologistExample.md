# OphthalmologistExample - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OphthalmologistExample**

## Example Practitioner: OphthalmologistExample

**name**: Ophthalmologist Example 

### Qualifications

| | |
| :--- | :--- |
| - | **Code** |
| * | Ophthalmologist |



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "OphthalmologistExample",
  "name" : [{
    "family" : "Example",
    "given" : ["Ophthalmologist"]
  }],
  "qualification" : [{
    "code" : {
      "text" : "Ophthalmologist"
    }
  }]
}

```
