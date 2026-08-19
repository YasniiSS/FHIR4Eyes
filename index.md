# Home - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.1.0

* [**Table of Contents**](toc.md)
* **Home**

## Home

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/ImplementationGuide/fhir4eyes.core | *Version*:0.1.0 |
| Draft as of 2026-08-19 | *Computable Name*:FHIR4Eyes |

# FHIR4Eyes

## What is this guide for?

**FHIR4Eyes is a proposed Implementation Guide, not an official HL7 standard.** It is an independent, community-driven effort, shared openly for feedback and discussion.

Eye care generates a huge amount of structured clinical data, including visual acuity measurements, eye pressure readings, imaging studies, surgical procedures, and medications injected directly into the eye. However, there is currently no mature, complete international standard for sharing this data electronically between systems.

**FHIR4Eyes** is a FHIR® Implementation Guide that defines how ophthalmology data should be represented and exchanged, so that different software systems, from primary care clinics to hospital ophthalmology departments, imaging systems, and national health registries, can understand each other's eye care data consistently.

This matters because patients with eye conditions are often seen across multiple care settings over years, sometimes decades. A family doctor makes the first referral, a primary eye care clinic follows up, a hospital specialist takes over more complex cases, and an imaging center runs the diagnostic tests. When these systems can't exchange structured data reliably, patients' clinical history gets fragmented, and care teams either repeat tests unnecessarily or make decisions with an incomplete picture.

## Why does this guide exist?

There is an existing early-stage effort at HL7, the [Eye Care Implementation Guide](https://build.fhir.org/ig/HL7/fhir-eyecare-ig/), but as of this writing it is still in ballot, has significant gaps (no diagnosis, imaging, treatment, or device profiles), and is not yet available as a usable package. FHIR4Eyes was built to cover ophthalmology workflows that aren't addressed anywhere yet, such as imaging studies, treatment plans for intravitreal injections, and implantable devices like intraocular lenses (see [Background](background.md) for the full list). It's meant to be usable today, informed by a real hospital pilot implementation connecting primary and hospital secondary care. And wherever the HL7 Eye Care IG already defines a design pattern, FHIR4Eyes tries to stay aligned with it, so the two efforts can converge rather than diverge.

## Who is this guide for?

* **Software developers** building or integrating systems that handle eye care data, such as EHRs, PACS/imaging systems, or ophthalmology-specific applications. This guide's **Profiles** and **Terminology** pages are the normative reference you'll need.
* **Health informatics and interoperability teams** at hospitals, health ministries, or national health systems who are planning how ophthalmology fits into their broader interoperability strategy. The **Background** and **Use Cases** pages give the "why" before the "how".

## Structure

FHIR4Eyes is published as two related Implementation Guides:

* **FHIR4Eyes Core** (this guide) covers international, resource and terminology level content that isn't tied to any country's regulations.
* **[FHIR4Eyes CL](cl/index.md)** is a Chilean extension, adding the constraints and bindings required for use within Chile's national FHIR core profiles ([`hl7.fhir.cl.clcore`](https://simplifier.net/chilehl7)).

If you're implementing outside Chile, you only need FHIR4Eyes Core. If you're implementing in Chile, you need both.

## Getting started

* New to FHIR? Start with the [official FHIR specification](http://hl7.org/fhir/R4/index.html)
* New to this guide? Read [Background](background.md) next, then [Use Cases](usecases.md)
* Looking for a specific resource profile? Go straight to [Profiles](profiles.md)
* Want to know what "must support" means here? See [Guidance](guidance.md)

## Feedback and community

This is an early-stage, community-driven guide. Feedback, questions, and contributions are welcome.

## Author

**Yasna Soto Sánchez**

Medical Technologist in Ophthalmology and Optometry, Universidad de Chile Master's in Medical Informatics, Universidad de Chile, in collaboration with Universidad de Heidelberg Civil Informatics Engineering student, Universidad San Sebastián

I worked for five years in clinical and hospital settings within ophthalmology units, performing a wide range of specialty examinations. I then moved into medical informatics, where my first contribution was standardizing ophthalmic imaging toward the PACS system at Hospital San José, in Independencia, Santiago de Chile. I continue working toward the greatest possible standardization of ophthalmology data, aiming for an interoperable path that allows modality neutrality and a more standardized flow of ophthalmic procedures and records.



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "fhir4eyes.core",
  "url" : "https://YasniiSS.github.io/fhir4eyes/ImplementationGuide/fhir4eyes.core",
  "version" : "0.1.0",
  "name" : "FHIR4Eyes",
  "title" : "FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology",
  "status" : "draft",
  "date" : "2026-08-19T17:13:42+00:00",
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
  "description" : "A proposed international FHIR R4 Implementation Guide for eye care interoperability",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001",
      "display" : "World"
    }]
  }],
  "packageId" : "fhir4eyes.core",
  "license" : "CC0-1.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [{
    "id" : "hl7tx",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
    }],
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology.r4",
    "version" : "7.3.0"
  },
  {
    "id" : "hl7ext",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
    }],
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r4",
    "version" : "5.3.0"
  }],
  "definition" : {
    "extension" : [{
      "extension" : [{
        "url" : "code",
        "valueString" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2025+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "ci-build"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://YasniiSS.github.io/fhir4eyes/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r4#1.1.2"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2025+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "ci-build"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://YasniiSS.github.io/fhir4eyes/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CarePlan"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CarePlan-AvastinInjectionCarePlanExample.html"
      }],
      "reference" : {
        "reference" : "CarePlan/AvastinInjectionCarePlanExample"
      },
      "name" : "Avastin injection scheme - left eye",
      "description" : "3 monthly intravitreal Avastin injections for diabetic macular edema",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-care-plan"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationAdministration"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationAdministration-AvastinDose1AdministrationExample.html"
      }],
      "reference" : {
        "reference" : "MedicationAdministration/AvastinDose1AdministrationExample"
      },
      "name" : "AvastinDose1AdministrationExample",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-medication-administration"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Medication"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Medication-AvastinMedicationExample.html"
      }],
      "reference" : {
        "reference" : "Medication/AvastinMedicationExample"
      },
      "name" : "AvastinMedicationExample",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-medication"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-CataractSurgeryProcedureExample.html"
      }],
      "reference" : {
        "reference" : "Procedure/CataractSurgeryProcedureExample"
      },
      "name" : "CataractSurgeryProcedureExample",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-procedure"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-convergence-assessment.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/convergence-assessment"
      },
      "name" : "Convergence Assessment",
      "description" : "Represents a qualitative assessment of convergence ability (good, fair,\ninsufficient, poor).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-ConvergenceAssessmentExample.html"
      }],
      "reference" : {
        "reference" : "Observation/ConvergenceAssessmentExample"
      },
      "name" : "ConvergenceAssessmentExample",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/convergence-assessment"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-corrected-intraocular-pressure.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/corrected-intraocular-pressure"
      },
      "name" : "Corrected Intraocular Pressure",
      "description" : "Represents an intraocular pressure reading corrected for corneal thickness\r\n(pachymetry). Recorded as a separate Observation from the plain IOP reading, referencing\r\nboth the IOP and pachymetry measurements it was derived from via derivedFrom.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-CorrectedIntraocularPressureLeftEyeExample.html"
      }],
      "reference" : {
        "reference" : "Observation/CorrectedIntraocularPressureLeftEyeExample"
      },
      "name" : "CorrectedIntraocularPressureLeftEyeExample",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/corrected-intraocular-pressure"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-CorrectedIntraocularPressureRightEyeExample.html"
      }],
      "reference" : {
        "reference" : "Observation/CorrectedIntraocularPressureRightEyeExample"
      },
      "name" : "CorrectedIntraocularPressureRightEyeExample",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/corrected-intraocular-pressure"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-cover-test.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/cover-test"
      },
      "name" : "Cover Test",
      "description" : "Represents a cover test result, performed with or without correction, at\r\nnear or far distance. Findings are recorded as open text/coded values for now (PC:\r\northophoria, PL: various movement patterns), since no confirmed SNOMED/LOINC binding has\r\nbeen verified for these specific findings yet.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-CoverTestExample.html"
      }],
      "reference" : {
        "reference" : "Observation/CoverTestExample"
      },
      "name" : "CoverTestExample",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/cover-test"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-DiabeticMacularEdemaConditionExample.html"
      }],
      "reference" : {
        "reference" : "Condition/DiabeticMacularEdemaConditionExample"
      },
      "name" : "DiabeticMacularEdemaConditionExample",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-condition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-EncounterExample.html"
      }],
      "reference" : {
        "reference" : "Encounter/EncounterExample"
      },
      "name" : "EncounterExample",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-encounter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-fhir4eyes-care-plan-category-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/fhir4eyes-care-plan-category-cs"
      },
      "name" : "FHIR4Eyes Care Plan Category Code System",
      "description" : "Proposed FHIR4Eyes-only codes for care plan category, not yet bound to an\nexternal terminology. See the Profiles page of this guide for the design rationale.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-gaze-position-measurement.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/gaze-position-measurement"
      },
      "name" : "Gaze Position Measurement",
      "description" : "A reusable pattern for a single measurement or finding taken at one gaze\r\nposition (e.g. primary position, right gaze, up-and-right gaze). Used by PrismCoverTest and\r\nKrimskyTest for quantitative prism diopter deviation, and by HirschbergTest,\r\nRedFilterLightTest, and Worth4DotTest for a qualitative finding at each position. Each test\r\nuses only the components relevant to it; all components are optional. Not intended to be\r\nused standalone; always referenced via hasMember from one of those panels.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-hirschberg-test.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/hirschberg-test"
      },
      "name" : "Hirschberg Test",
      "description" : "Represents a Hirschberg corneal light reflex test, used to estimate the\r\nangle of deviation when other tests aren't feasible (e.g. young children). Performed across\r\nmultiple gaze positions; each position is recorded as a separate GazePositionMeasurement,\r\nreferenced here via hasMember, using its qualitative finding component.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-intraocular-pressure.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/intraocular-pressure"
      },
      "name" : "Intraocular Pressure",
      "description" : "Represents a single intraocular pressure (IOP) reading, in mmHg. Code is\r\nfixed to SNOMED CT 41633001 (Intraocular pressure).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Device"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Device-IntraocularLensExample.html"
      }],
      "reference" : {
        "reference" : "Device/IntraocularLensExample"
      },
      "name" : "IntraocularLensExample",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-device"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-IntraocularPressureLeftEyeExample.html"
      }],
      "reference" : {
        "reference" : "Observation/IntraocularPressureLeftEyeExample"
      },
      "name" : "IntraocularPressureLeftEyeExample",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/intraocular-pressure"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-IntraocularPressureRightEyeExample.html"
      }],
      "reference" : {
        "reference" : "Observation/IntraocularPressureRightEyeExample"
      },
      "name" : "IntraocularPressureRightEyeExample",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/intraocular-pressure"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-IntravitrealInjectionProcedureExample.html"
      }],
      "reference" : {
        "reference" : "Procedure/IntravitrealInjectionProcedureExample"
      },
      "name" : "IntravitrealInjectionProcedureExample",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-procedure"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-krimsky-test.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/krimsky-test"
      },
      "name" : "Krimsky Test",
      "description" : "Represents a Krimsky test (corneal light reflex test with prism), measuring\r\nocular deviation in prism diopters across multiple gaze positions. Follows the same\r\nstructural pattern as PrismCoverTest: each gaze position is a separate\r\nGazePositionMeasurement, referenced via hasMember.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "BodyStructure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "BodyStructure-LeftEyeStructureExample.html"
      }],
      "reference" : {
        "reference" : "BodyStructure/LeftEyeStructureExample"
      },
      "name" : "LeftEyeStructureExample",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ocular-body-structure"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-low-vision-assessment-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/low-vision-assessment-vs"
      },
      "name" : "Low Vision Assessment Value Set",
      "description" : "Qualitative visual acuity for patients whose vision falls below what any\nchart can measure (ICD-11 blindness categories 4 through 6). All five codes are confirmed\nSNOMED CT concepts, verified directly against the SNOMED CT browser. See Terminology for\nthe full clinical and terminology rationale. The counting-fingers concept below uses the\ngeneric code by default; the more specific distance-based codes may be used instead when\nthat detail is known.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-near-point-of-convergence.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/near-point-of-convergence"
      },
      "name" : "Near Point of Convergence",
      "description" : "Represents the near point of convergence (PPC), recorded either as a\nnumeric distance in centimetres, or, when a precise measurement isn't obtained, as a\nqualitative finding (e.g. 'nasal', 'near nasal').",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-NearPointOfConvergenceExample.html"
      }],
      "reference" : {
        "reference" : "Observation/NearPointOfConvergenceExample"
      },
      "name" : "NearPointOfConvergenceExample",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/near-point-of-convergence"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DiagnosticReport"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "DiagnosticReport-OCTDiagnosticReportExample.html"
      }],
      "reference" : {
        "reference" : "DiagnosticReport/OCTDiagnosticReportExample"
      },
      "name" : "OCTDiagnosticReportExample",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-diagnostic-report"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DiagnosticReport"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "DiagnosticReport-OCTMaculaDiagnosticReportExample.html"
      }],
      "reference" : {
        "reference" : "DiagnosticReport/OCTMaculaDiagnosticReportExample"
      },
      "name" : "OCTMaculaDiagnosticReportExample",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-diagnostic-report"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ImagingStudy"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ImagingStudy-OCTMaculaLeftEyeExample.html"
      }],
      "reference" : {
        "reference" : "ImagingStudy/OCTMaculaLeftEyeExample"
      },
      "name" : "OCTMaculaLeftEyeExample",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-imaging-study"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-OCTMaculaLeftEyeExample2.html"
      }],
      "reference" : {
        "reference" : "Observation/OCTMaculaLeftEyeExample2"
      },
      "name" : "OCTMaculaLeftEyeExample2",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-oct-macula"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-OCTMaculaRightEyeExample.html"
      }],
      "reference" : {
        "reference" : "Observation/OCTMaculaRightEyeExample"
      },
      "name" : "OCTMaculaRightEyeExample",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-oct-macula"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-OCTMaculaServiceRequestExample.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/OCTMaculaServiceRequestExample"
      },
      "name" : "OCTMaculaServiceRequestExample",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-service-request"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ImagingStudy"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ImagingStudy-OCTOpticDiscLeftEyeExample.html"
      }],
      "reference" : {
        "reference" : "ImagingStudy/OCTOpticDiscLeftEyeExample"
      },
      "name" : "OCTOpticDiscLeftEyeExample",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-imaging-study"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-OCTOpticDiscServiceRequestExample.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/OCTOpticDiscServiceRequestExample"
      },
      "name" : "OCTOpticDiscServiceRequestExample",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-service-request"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-OCTProcedureExample.html"
      }],
      "reference" : {
        "reference" : "Procedure/OCTProcedureExample"
      },
      "name" : "OCTProcedureExample",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-procedure"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-OCTRNFLLeftEyeExample.html"
      }],
      "reference" : {
        "reference" : "Observation/OCTRNFLLeftEyeExample"
      },
      "name" : "OCTRNFLLeftEyeExample",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-oct-rnfl"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-OCTRNFLRightEyeExample.html"
      }],
      "reference" : {
        "reference" : "Observation/OCTRNFLRightEyeExample"
      },
      "name" : "OCTRNFLRightEyeExample",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-oct-rnfl"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-OCTServiceRequestExample.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/OCTServiceRequestExample"
      },
      "name" : "OCTServiceRequestExample",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-service-request"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ImagingStudy"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ImagingStudy-OCTStudyLeftEyeExample.html"
      }],
      "reference" : {
        "reference" : "ImagingStudy/OCTStudyLeftEyeExample"
      },
      "name" : "OCTStudyLeftEyeExample",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-imaging-study"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ImagingStudy"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ImagingStudy-OCTStudyRightEyeExample.html"
      }],
      "reference" : {
        "reference" : "ImagingStudy/OCTStudyRightEyeExample"
      },
      "name" : "OCTStudyRightEyeExample",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-imaging-study"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ocular-body-structure.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ocular-body-structure"
      },
      "name" : "Ocular Body Structure",
      "description" : "Represents an anatomical ocular location, used throughout this guide to\nexpress laterality (right eye, left eye, or both eyes) for observations, conditions,\nprocedures, and imaging studies. Follows the same structural pattern as the HL7 Eye Care\nIG's equivalent profile ('Ocular anatomical location' / body-structure-eye): a `location`\nelement identifying the anatomical structure, and a `locationQualifier` element carrying\nlaterality and other qualifiers. The HL7 Eye Care IG defines its own dedicated value sets\nfor these two elements (`ValueSet/body-site-eye` for location, `ValueSet/qualifiers` for\nlocationQualifier), which are the intended reference terminology for this profile. However,\nbecause the HL7 Eye Care IG is not published as a usable FHIR package, those value sets\ncannot be formally imported here; this profile binds to SNOMED CT directly instead (see the\nTerminology page of this guide for the general rationale).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ocular-motility.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ocular-motility"
      },
      "name" : "Ocular Motility",
      "description" : "Represents the assessment of extraocular muscle function (hypofunction or\r\nhyperfunction) for a specific eye and muscle. Recorded per eye, since motility findings can\r\ndiffer between the two eyes independently.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-OcularMotilityLeftEyeExample.html"
      }],
      "reference" : {
        "reference" : "Observation/OcularMotilityLeftEyeExample"
      },
      "name" : "OcularMotilityLeftEyeExample",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ocular-motility"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-OcularMotilityRightEyeExample.html"
      }],
      "reference" : {
        "reference" : "Observation/OcularMotilityRightEyeExample"
      },
      "name" : "OcularMotilityRightEyeExample",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ocular-motility"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ophthalmic-care-plan.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ophthalmic-care-plan"
      },
      "name" : "Ophthalmic Care Plan",
      "description" : "A long-term treatment scheme made up of repeated sessions or\nadministrations, rather than a single event. Covers two schemes identified in this guide's\nUse Cases: intravitreal injection treatment, and vision therapy or orthoptic treatment. Not\nevery planned session is necessarily scheduled at once: some sessions remain planned but\nunscheduled within the CarePlan (via activity), while each session that is actually\nperformed is recorded as a separate OphthalmicProcedure, linked back to this CarePlan via\nProcedure.basedOn.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-ophthalmic-care-plan-category-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/ophthalmic-care-plan-category-vs"
      },
      "name" : "Ophthalmic Care Plan Category Value Set",
      "description" : "The type of ophthalmic treatment scheme. Proposed FHIR4Eyes-only codes,\nopen to revision if a suitable external code is identified later.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ophthalmic-condition.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ophthalmic-condition"
      },
      "name" : "Ophthalmic Condition",
      "description" : "The formal, past or present clinical diagnosis of a specific ophthalmic\ncondition. Follows the same minimalist technical pattern as the HL7 Eye Care IG's\nequivalent profile (condition-base): only code, bodySite, and subject carry real\nconstraints; everything else in the base Condition resource is left as-is. See the\nProfiles page of this guide for the full design rationale, including a note on where\nFHIR4Eyes departs from the Eye Care IG's own narrative documentation.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ophthalmic-device.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ophthalmic-device"
      },
      "name" : "Ophthalmic Device",
      "description" : "An implanted ophthalmic device instance, such as an intraocular lens (IOL),\naffixed to a specific patient. Following the same pattern as US Core's Implantable Device\nProfile, this represents the specific unit already implanted, not a generic catalog item;\npatient is therefore required. Procedure.focalDevice (in OphthalmicProcedure) also\nreferences this Device from the implanting procedure, consistent with US Core's own\nguidance that a procedure involving an implantable device should reference it via\nfocalDevice. A generic device catalog (DeviceDefinition) is out of scope for this guide for\nnow. See the Profiles page of this guide for the full design rationale, including a note\non other implantable devices (such as glaucoma drainage devices) that may also fit this\nprofile.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ophthalmic-diagnostic-report.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ophthalmic-diagnostic-report"
      },
      "name" : "Ophthalmic Diagnostic Report",
      "description" : "Represents the findings, diagnosis, and treatment plan reached after\r\nreviewing an imaging study or structured examination dataset. Unlike a radiology report,\r\nthis is not limited to describing imaging findings: the same clinical act typically also\r\nreaches a diagnosis and defines a treatment plan, recorded as separate Condition and\r\nCarePlan resources referencing this report.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ophthalmic-encounter.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ophthalmic-encounter"
      },
      "name" : "Ophthalmic Encounter",
      "description" : "An ambulatory ophthalmology consultation encounter. Parented on the generic\r\nFHIR Encounter, not the Chilean core Encounter profile (EncounterCL); the Chilean\r\ndependency belongs in the FHIR4Eyes CL extension, not this Core guide.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ophthalmic-imaging-study.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ophthalmic-imaging-study"
      },
      "name" : "Ophthalmic Imaging Study",
      "description" : "An ophthalmic imaging study, such as OCT, retinography, or angiography.\r\nAlways traceable back to the medical order that led to it via basedOn. Laterality is\r\nrepresented both through the native series.bodySite/series.laterality Coding fields (for\r\nstandard DICOM/PACS compatibility) and through an additional extension referencing\r\nOcularBodyStructure (for structured cross-resource navigation, consistent with the rest of\r\nthis guide).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ophthalmic-medication.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ophthalmic-medication"
      },
      "name" : "Ophthalmic Medication",
      "description" : "A medication used in ophthalmology, such as an anti-VEGF agent for\r\nintravitreal injection.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ophthalmic-medication-administration.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ophthalmic-medication-administration"
      },
      "name" : "Ophthalmic Medication Administration",
      "description" : "Records the administration of a medication during an ophthalmic procedure,\r\nmost notably an intravitreal injection. Always linked back to the specific procedure it was\r\nadministered during, via partOf, consistent with FHIR's standard 'larger event of which\r\nthis is a component' pattern.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ophthalmic-oct-macula.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ophthalmic-oct-macula"
      },
      "name" : "Ophthalmic OCT Macula",
      "description" : "Represents an OCT macular thickness analysis using the ETDRS 9-sector grid\n(center, 4 inner, 4 outer subfields), matching typical vendor reports. Real LOINC codes are\nconfirmed for the center point, center subfield, and inner sectors; codes for the outer\nsectors were not found confirmed and are left open pending verification (see component\nnotes below).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ophthalmic-oct-rnfl.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ophthalmic-oct-rnfl"
      },
      "name" : "Ophthalmic OCT RNFL",
      "description" : "Represents an OCT retinal nerve fiber layer (RNFL) thickness analysis, with\nquadrant-level components and an overall classification, matching the structure of typical\nvendor reports (e.g. Heidelberg Spectralis). Real LOINC codes exist for each quadrant, but\nare laterality-specific (a different code for right vs. left eye); implementers should\nselect the correct code for the eye being examined when populating each component. See\nTerminology for the general LOINC-for-structured-panels strategy.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ophthalmic-procedure.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ophthalmic-procedure"
      },
      "name" : "Ophthalmic Procedure",
      "description" : "Any ophthalmic procedure, from minor ambulatory surgeries to individual\nsessions within a longer treatment scheme, such as an intravitreal injection or a vision\ntherapy session. When a procedure involves administering a medication (e.g. an intravitreal\ninjection), the medication administration is recorded as a separate\nOphthalmicMedicationAdministration, linked back to this procedure via\nMedicationAdministration.partOf, not the other way around.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ophthalmic-service-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ophthalmic-service-request"
      },
      "name" : "Ophthalmic Service Request",
      "description" : "A request for an ophthalmic examination and, where relevant, its\ninterpretation or treatment. Covers three scenarios: an order fulfilled locally, an order\nreferred from primary care to a hospital or reference center, and an order originating\ndirectly at a hospital. See the Use Cases and Profiles pages of this guide for the full\nclinical and design rationale.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ophthalmic-visual-acuity.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ophthalmic-visual-acuity"
      },
      "name" : "Ophthalmic Visual Acuity",
      "description" : "Represents a visual acuity measurement, modeled as discrete, independently\r\ncombinable components (distance, correction status, chart/optotype, scale, pinhole) rather\r\nthan as a single pre-coordinated code that bundles all of these together. This follows a\r\nmore granular pattern than the HL7 Eye Care IG's published (2021) approach, aligned with a\r\nnewer proposal discussed within SNOMED International's Eye Care Clinical Reference Group\r\n(2025), which favors flexible, independently recordable components over pre-coordinated\r\ncodes. See Terminology for the underlying terminology strategy, including the\r\nLowVisionAssessment value set for vision below what any chart can measure.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Practitioner-OphthalmologistExample.html"
      }],
      "reference" : {
        "reference" : "Practitioner/OphthalmologistExample"
      },
      "name" : "OphthalmologistExample",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-pachymetry.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/pachymetry"
      },
      "name" : "Pachymetry",
      "description" : "Represents a corneal pachymetry measurement (corneal thickness), typically\r\nin micrometres. Used on its own, and also referenced by CorrectedIntraocularPressure when\r\ncorrecting an IOP reading for corneal thickness.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-PachymetryLeftEyeExample.html"
      }],
      "reference" : {
        "reference" : "Observation/PachymetryLeftEyeExample"
      },
      "name" : "PachymetryLeftEyeExample",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/pachymetry"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-PachymetryRightEyeExample.html"
      }],
      "reference" : {
        "reference" : "Observation/PachymetryRightEyeExample"
      },
      "name" : "PachymetryRightEyeExample",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/pachymetry"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-PacienteEjemplo.html"
      }],
      "reference" : {
        "reference" : "Patient/PacienteEjemplo"
      },
      "name" : "PacienteEjemplo",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-PatientExample.html"
      }],
      "reference" : {
        "reference" : "Patient/PatientExample"
      },
      "name" : "PatientExample",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-prism-cover-test.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/prism-cover-test"
      },
      "name" : "Prism Cover Test",
      "description" : "Represents a prism cover test, measuring ocular deviation in prism diopters\r\nacross multiple gaze positions. Each gaze position is recorded as a separate\r\nGazePositionMeasurement, referenced here via hasMember. Distance and correction status are\r\nrecorded as components on this panel, following the same granular pattern used for\r\nOphthalmicVisualAcuity, rather than being folded into a single pre-coordinated code.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-PrismCoverTestExample.html"
      }],
      "reference" : {
        "reference" : "Observation/PrismCoverTestExample"
      },
      "name" : "PrismCoverTestExample",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/prism-cover-test"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-PrismCoverTestPrimaryPositionExample.html"
      }],
      "reference" : {
        "reference" : "Observation/PrismCoverTestPrimaryPositionExample"
      },
      "name" : "PrismCoverTestPrimaryPositionExample",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/gaze-position-measurement"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-red-filter-light-test.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/red-filter-light-test"
      },
      "name" : "Red Filter Light Test",
      "description" : "Represents a red filter plus light test, assessing fusion, suppression, or\r\ndiplopia. Performed across multiple gaze positions; each position is recorded as a separate\r\nGazePositionMeasurement, referenced here via hasMember, using its qualitative finding\r\ncomponent. Distance and correction status are recorded as components on this panel.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "BodyStructure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "BodyStructure-RightEyeStructureExample.html"
      }],
      "reference" : {
        "reference" : "BodyStructure/RightEyeStructureExample"
      },
      "name" : "RightEyeStructureExample",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ocular-body-structure"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-stereopsis-test.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/stereopsis-test"
      },
      "name" : "Stereopsis Test",
      "description" : "Represents a stereoacuity test result (e.g. Titmus, Randot). The specific\r\ntest used is recorded as a component, since several different stereopsis tests exist in\r\npractice and the test type affects how the result should be interpreted.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-StereopsisTestExample.html"
      }],
      "reference" : {
        "reference" : "Observation/StereopsisTestExample"
      },
      "name" : "StereopsisTestExample",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/stereopsis-test"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-strabismus-exam.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/strabismus-exam"
      },
      "name" : "Strabismus Exam",
      "description" : "Represents a strabismus examination as a panel grouping together whichever\r\nsub-tests were actually performed for this patient (for example, cover test, motility,\r\nnear point of convergence, stereopsis, prism cover test, Krimsky test). Not every possible\r\nsub-test is performed for every patient; this profile does not enforce a fixed checklist.\r\nEach sub-test is recorded as its own Observation, referenced here via hasMember.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-StrabismusExamExample.html"
      }],
      "reference" : {
        "reference" : "Observation/StrabismusExamExample"
      },
      "name" : "StrabismusExamExample",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/strabismus-exam"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-tension-curve.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/tension-curve"
      },
      "name" : "Tension Curve",
      "description" : "Represents an ambulatory tension curve: several intraocular pressure\r\nreadings taken across a single day, grouped together as a single clinical concept rather\r\nthan recorded as unrelated, disconnected observations. This profile was already defined in\r\nan earlier version of this guide's design work and is carried forward here.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-TensionCurveRightEye0800Example.html"
      }],
      "reference" : {
        "reference" : "Observation/TensionCurveRightEye0800Example"
      },
      "name" : "TensionCurveRightEye0800Example",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/intraocular-pressure"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-TensionCurveRightEye1200Example.html"
      }],
      "reference" : {
        "reference" : "Observation/TensionCurveRightEye1200Example"
      },
      "name" : "TensionCurveRightEye1200Example",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/intraocular-pressure"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-TensionCurveRightEye1400Example.html"
      }],
      "reference" : {
        "reference" : "Observation/TensionCurveRightEye1400Example"
      },
      "name" : "TensionCurveRightEye1400Example",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/intraocular-pressure"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-TensionCurveRightEyeExample.html"
      }],
      "reference" : {
        "reference" : "Observation/TensionCurveRightEyeExample"
      },
      "name" : "TensionCurveRightEyeExample",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/tension-curve"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-VisualAcuityBinocularExample.html"
      }],
      "reference" : {
        "reference" : "Observation/VisualAcuityBinocularExample"
      },
      "name" : "VisualAcuityBinocularExample",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-visual-acuity"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-VisualAcuityCorrectedLeftEyeExample.html"
      }],
      "reference" : {
        "reference" : "Observation/VisualAcuityCorrectedLeftEyeExample"
      },
      "name" : "VisualAcuityCorrectedLeftEyeExample",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-visual-acuity"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-VisualAcuityCountingFingersRightEyeExample.html"
      }],
      "reference" : {
        "reference" : "Observation/VisualAcuityCountingFingersRightEyeExample"
      },
      "name" : "VisualAcuityCountingFingersRightEyeExample",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-visual-acuity"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-VisualAcuityPinholeRightEyeExample.html"
      }],
      "reference" : {
        "reference" : "Observation/VisualAcuityPinholeRightEyeExample"
      },
      "name" : "VisualAcuityPinholeRightEyeExample",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-visual-acuity"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-VisualAcuityUncorrectedRightEyeExample.html"
      }],
      "reference" : {
        "reference" : "Observation/VisualAcuityUncorrectedRightEyeExample"
      },
      "name" : "VisualAcuityUncorrectedRightEyeExample",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-visual-acuity"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-worth-4-dot-test.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/worth-4-dot-test"
      },
      "name" : "Worth 4 Dot Test",
      "description" : "Represents a Worth 4 dot test, assessing fusion, suppression, or diplopia.\r\nPerformed across multiple gaze positions; each position is recorded as a separate\r\nGazePositionMeasurement, referenced here via hasMember, using its qualitative finding\r\ncomponent.",
      "exampleBoolean" : false
    }],
    "page" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
        "valueUrl" : "toc.html"
      }],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "index.html"
        }],
        "nameUrl" : "index.html",
        "title" : "Home",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "background.html"
        }],
        "nameUrl" : "background.html",
        "title" : "Background",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "usecases.html"
        }],
        "nameUrl" : "usecases.html",
        "title" : "Use Cases",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "terminology.html"
        }],
        "nameUrl" : "terminology.html",
        "title" : "Terminology",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "profiles.html"
        }],
        "nameUrl" : "profiles.html",
        "title" : "Profiles",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "guidance.html"
        }],
        "nameUrl" : "guidance.html",
        "title" : "Guidance",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "security.html"
        }],
        "nameUrl" : "security.html",
        "title" : "Security and Privacy",
        "generation" : "markdown"
      }]
    },
    "parameter" : [{
      "code" : "path-resource",
      "value" : "input/capabilities"
    },
    {
      "code" : "path-resource",
      "value" : "input/examples"
    },
    {
      "code" : "path-resource",
      "value" : "input/extensions"
    },
    {
      "code" : "path-resource",
      "value" : "input/models"
    },
    {
      "code" : "path-resource",
      "value" : "input/operations"
    },
    {
      "code" : "path-resource",
      "value" : "input/profiles"
    },
    {
      "code" : "path-resource",
      "value" : "input/resources"
    },
    {
      "code" : "path-resource",
      "value" : "input/vocabulary"
    },
    {
      "code" : "path-resource",
      "value" : "input/maps"
    },
    {
      "code" : "path-resource",
      "value" : "input/testing"
    },
    {
      "code" : "path-resource",
      "value" : "input/history"
    },
    {
      "code" : "path-resource",
      "value" : "fsh-generated/resources"
    },
    {
      "code" : "path-pages",
      "value" : "template/config"
    },
    {
      "code" : "path-pages",
      "value" : "input/images"
    },
    {
      "code" : "path-tx-cache",
      "value" : "input-cache/txcache"
    }]
  }
}

```
