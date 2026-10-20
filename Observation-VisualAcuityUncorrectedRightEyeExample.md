# Visual acuity: uncorrected, right eye - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Visual acuity: uncorrected, right eye**

## Example Observation: Visual acuity: uncorrected, right eye

Profile: [Ophthalmic Visual Acuity](StructureDefinition-ophthalmic-visual-acuity.md)

**status**: Final

**category**: Exam

**code**: Distance visual acuity

**subject**: [Patient Example Female, DoB: 1990-01-01 ( Passport number: PA1234567)](Patient-PatientExample.md)

**effective**: 2026-08-18 09:00:00+0000

**performer**: [Practitioner Ophthalmologist Example ](Practitioner-OphthalmologistExample.md)

**value**: 20 [ft_i] (Details: UCUM code[ft_i] = '[ft_i]')/40 [ft_i] (Details: UCUM code[ft_i] = '[ft_i]')

**bodySite**: 

> **component****code**: Correction status**value**: Without correction

> **component****code**: Testing distance**value**: 6 m (Details: UCUM codem = 'm')

> **component****code**: Chart**value**: Snellen

> **component****code**: Scale**value**: Snellen fraction



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "VisualAcuityUncorrectedRightEyeExample",
  "meta" : {
    "profile" : ["https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-visual-acuity"]
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
      "system" : "http://snomed.info/sct",
      "code" : "363983007",
      "display" : "Visual acuity"
    },
    {
      "system" : "http://loinc.org",
      "code" : "98505-1",
      "display" : "Visual acuity far uncorrected Right eye"
    }],
    "text" : "Distance visual acuity"
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "effectiveDateTime" : "2026-08-18T09:00:00Z",
  "performer" : [{
    "reference" : "Practitioner/OphthalmologistExample"
  }],
  "valueRatio" : {
    "numerator" : {
      "value" : 20,
      "system" : "http://unitsofmeasure.org",
      "code" : "[ft_i]"
    },
    "denominator" : {
      "value" : 40,
      "system" : "http://unitsofmeasure.org",
      "code" : "[ft_i]"
    }
  },
  "bodySite" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/bodySite",
      "valueReference" : {
        "reference" : "BodyStructure/RightEyeStructureExample"
      }
    }]
  },
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "correction-status",
        "display" : "Refractive correction status during test"
      }],
      "text" : "Correction status"
    },
    "valueCodeableConcept" : {
      "text" : "Without correction"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "test-distance",
        "display" : "Testing distance"
      }],
      "text" : "Testing distance"
    },
    "valueQuantity" : {
      "value" : 6,
      "system" : "http://unitsofmeasure.org",
      "code" : "m"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "79908-0",
        "display" : "Type of Visual acuity exam method"
      }],
      "text" : "Chart"
    },
    "valueCodeableConcept" : {
      "text" : "Snellen"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
        "code" : "visual-acuity-scale",
        "display" : "Visual acuity notation scale"
      }],
      "text" : "Scale"
    },
    "valueCodeableConcept" : {
      "text" : "Snellen fraction"
    }
  }]
}

```
