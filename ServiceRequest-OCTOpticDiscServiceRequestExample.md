# OCTOpticDiscServiceRequestExample - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OCTOpticDiscServiceRequestExample**

## Example ServiceRequest: OCTOpticDiscServiceRequestExample

Profile: [Ophthalmic Service Request](StructureDefinition-ophthalmic-service-request.md)

**status**: Completed

**intent**: Order

**category**: Ophthalmology (qualifier value)

**code**: Optical coherence tomography, RNFL/papilla

**subject**: [Patient Example Female, DoB: 1990-01-01 ( PA1234567)](Patient-PatientExample.md)

**requester**: [Practitioner Ophthalmologist Example ](Practitioner-OphthalmologistExample.md)

**performer**: [Practitioner Ophthalmologist Example ](Practitioner-OphthalmologistExample.md)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "OCTOpticDiscServiceRequestExample",
  "meta" : {
    "profile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-service-request"]
  },
  "status" : "completed",
  "intent" : "order",
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "394594003",
      "display" : "Ophthalmology (qualifier value)"
    }]
  }],
  "code" : {
    "text" : "Optical coherence tomography, RNFL/papilla"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "requester" : {
    "reference" : "Practitioner/OphthalmologistExample"
  },
  "performer" : [{
    "reference" : "Practitioner/OphthalmologistExample"
  }]
}

```
