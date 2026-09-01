# sp-imagingstudy-eye - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **sp-imagingstudy-eye**

## SearchParameter: sp-imagingstudy-eye 

| | |
| :--- | :--- |
| *Official URL*:http://fhir4eyes.org/SearchParameter/imagingstudy-eye | *Version*:0.3.0 |
| Active as of 2026-09-01 | *Computable Name*:ImagingStudyEye |

 
Search ophthalmic imaging studies by the laterality of an examined series, expressed via the bodySite extension on ImagingStudy.series referencing an OcularBodyStructure instance. 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "sp-imagingstudy-eye",
  "url" : "http://fhir4eyes.org/SearchParameter/imagingstudy-eye",
  "version" : "0.3.0",
  "name" : "ImagingStudyEye",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-01",
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
  "description" : "Search ophthalmic imaging studies by the laterality of an examined series, expressed via the bodySite extension on ImagingStudy.series referencing an OcularBodyStructure instance.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001",
      "display" : "World"
    }]
  }],
  "code" : "eye",
  "base" : ["ImagingStudy"],
  "type" : "reference",
  "expression" : "ImagingStudy.series.extension('http://hl7.org/fhir/StructureDefinition/bodySite').value",
  "xpathUsage" : "normal",
  "target" : ["BodyStructure"],
  "multipleOr" : true,
  "multipleAnd" : true
}

```
