# Hirschberg test panel - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Hirschberg test panel**

## Example Observation: Hirschberg test panel

Profile: [Hirschberg Test](StructureDefinition-hirschberg-test.md)

**status**: Final

**category**: Exam

**code**: Hirschberg test

**subject**: [Patient Example Female, DoB: 1990-01-01 ( Passport number: PA1234567)](Patient-PatientExample.md)

**effective**: 2026-08-18 09:00:00+0000

**performer**: [Practitioner Ophthalmologist Example ](Practitioner-OphthalmologistExample.md)

**note**: 

> 

Exotropia of about 15 degrees fixating either eye (FODI), comitant in the five principal gaze positions.


**hasMember**: 

* [Primary position - FOD, about 15 degrees exodeviation](Observation-HirschbergPrimaryFODExample.md)
* [Primary position - FOI, about 15 degrees exodeviation](Observation-HirschbergPrimaryFOIExample.md)
* [Up gaze (supraversion) - FOD, about 15 degrees exodeviation](Observation-HirschbergUpFODExample.md)
* [Up gaze (supraversion) - FOI, about 15 degrees exodeviation](Observation-HirschbergUpFOIExample.md)
* [Down gaze (infraversion) - FOD, about 15 degrees exodeviation](Observation-HirschbergDownFODExample.md)
* [Down gaze (infraversion) - FOI, about 15 degrees exodeviation](Observation-HirschbergDownFOIExample.md)
* [Right gaze (dextroversion) - FOD, about 15 degrees exodeviation](Observation-HirschbergRightFODExample.md)
* [Right gaze (dextroversion) - FOI, about 15 degrees exodeviation](Observation-HirschbergRightFOIExample.md)
* [Left gaze (levoversion) - FOD, about 15 degrees exodeviation](Observation-HirschbergLeftFODExample.md)
* [Left gaze (levoversion) - FOI, about 15 degrees exodeviation](Observation-HirschbergLeftFOIExample.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "HirschbergTestExample",
  "meta" : {
    "profile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/hirschberg-test"]
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
    "coding" : [{
      "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
      "code" : "hirschberg-test",
      "display" : "Hirschberg test"
    }],
    "text" : "Hirschberg test"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "effectiveDateTime" : "2026-08-18T09:00:00Z",
  "performer" : [{
    "reference" : "Practitioner/OphthalmologistExample"
  }],
  "note" : [{
    "text" : "Exotropia of about 15 degrees fixating either eye (FODI), comitant in the five principal gaze positions."
  }],
  "hasMember" : [{
    "reference" : "Observation/HirschbergPrimaryFODExample",
    "display" : "Primary position - FOD, about 15 degrees exodeviation"
  },
  {
    "reference" : "Observation/HirschbergPrimaryFOIExample",
    "display" : "Primary position - FOI, about 15 degrees exodeviation"
  },
  {
    "reference" : "Observation/HirschbergUpFODExample",
    "display" : "Up gaze (supraversion) - FOD, about 15 degrees exodeviation"
  },
  {
    "reference" : "Observation/HirschbergUpFOIExample",
    "display" : "Up gaze (supraversion) - FOI, about 15 degrees exodeviation"
  },
  {
    "reference" : "Observation/HirschbergDownFODExample",
    "display" : "Down gaze (infraversion) - FOD, about 15 degrees exodeviation"
  },
  {
    "reference" : "Observation/HirschbergDownFOIExample",
    "display" : "Down gaze (infraversion) - FOI, about 15 degrees exodeviation"
  },
  {
    "reference" : "Observation/HirschbergRightFODExample",
    "display" : "Right gaze (dextroversion) - FOD, about 15 degrees exodeviation"
  },
  {
    "reference" : "Observation/HirschbergRightFOIExample",
    "display" : "Right gaze (dextroversion) - FOI, about 15 degrees exodeviation"
  },
  {
    "reference" : "Observation/HirschbergLeftFODExample",
    "display" : "Left gaze (levoversion) - FOD, about 15 degrees exodeviation"
  },
  {
    "reference" : "Observation/HirschbergLeftFOIExample",
    "display" : "Left gaze (levoversion) - FOI, about 15 degrees exodeviation"
  }]
}

```
