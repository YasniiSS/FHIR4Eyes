# Corrected IOP: left eye - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Corrected IOP: left eye**

## Example Observation: Corrected IOP: left eye

Profile: [Corrected Intraocular Pressure](StructureDefinition-corrected-intraocular-pressure.md)

**status**: Final

**category**: Exam

**code**: Corrected intraocular pressure

**subject**: [Patient Example Female, DoB: 1990-01-01 ( Passport number: PA1234567)](Patient-PatientExample.md)

**effective**: 2026-08-18 09:00:00+0000

**performer**: [Practitioner Ophthalmologist Example ](Practitioner-OphthalmologistExample.md)

**value**: 16 mm[Hg] (Details: UCUM codemm[Hg] = 'mm[Hg]')

**bodySite**: 

**derivedFrom**: 

* [Observation Intraocular pressure](Observation-IntraocularPressureLeftEyeExample.md)
* [Observation Central corneal thickness](Observation-PachymetryLeftEyeExample.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "CorrectedIntraocularPressureLeftEyeExample",
  "meta" : {
    "profile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/corrected-intraocular-pressure"]
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
      "code" : "corrected-intraocular-pressure",
      "display" : "Intraocular pressure corrected for central corneal thickness"
    }],
    "text" : "Corrected intraocular pressure"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "effectiveDateTime" : "2026-08-18T09:00:00Z",
  "performer" : [{
    "reference" : "Practitioner/OphthalmologistExample"
  }],
  "valueQuantity" : {
    "value" : 16,
    "system" : "http://unitsofmeasure.org",
    "code" : "mm[Hg]"
  },
  "bodySite" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/bodySite",
      "valueReference" : {
        "reference" : "BodyStructure/LeftEyeStructureExample"
      }
    }]
  },
  "derivedFrom" : [{
    "reference" : "Observation/IntraocularPressureLeftEyeExample"
  },
  {
    "reference" : "Observation/PachymetryLeftEyeExample"
  }]
}

```
