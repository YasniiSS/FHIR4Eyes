# TensionCurveRightEyeExample - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TensionCurveRightEyeExample**

## Example Observation: TensionCurveRightEyeExample

Profile: [Tension Curve](StructureDefinition-tension-curve.md)

**status**: Final

**category**: Exam

**code**: Ambulatory tension curve

**subject**: [Patient Example Female, DoB: 1990-01-01](Patient-PatientExample.md)

**effective**: 2026-08-18 08:00:00+0000 --> 2026-08-18 14:00:00+0000

**bodySite**: 

**hasMember**: 

* [IOP right eye 08:00 - 18 mmHg](Observation-TensionCurveRightEye0800Example.md)
* [IOP right eye 12:00 - 20 mmHg](Observation-TensionCurveRightEye1200Example.md)
* [IOP right eye 14:00 - 19 mmHg](Observation-TensionCurveRightEye1400Example.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "TensionCurveRightEyeExample",
  "meta" : {
    "profile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/tension-curve"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "exam",
      "display" : "Exam"
    }]
  }],
  "code" : {
    "text" : "Ambulatory tension curve"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "effectivePeriod" : {
    "start" : "2026-08-18T08:00:00Z",
    "end" : "2026-08-18T14:00:00Z"
  },
  "bodySite" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/bodySite",
      "valueReference" : {
        "reference" : "BodyStructure/RightEyeStructureExample"
      }
    }]
  },
  "hasMember" : [{
    "reference" : "Observation/TensionCurveRightEye0800Example",
    "display" : "IOP right eye 08:00 - 18 mmHg"
  },
  {
    "reference" : "Observation/TensionCurveRightEye1200Example",
    "display" : "IOP right eye 12:00 - 20 mmHg"
  },
  {
    "reference" : "Observation/TensionCurveRightEye1400Example",
    "display" : "IOP right eye 14:00 - 19 mmHg"
  }]
}

```
