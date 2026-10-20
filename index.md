# Home - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* **Home**

## Home

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/ImplementationGuide/fhir4eyes.core | *Version*:0.4.0 |
| Draft as of 2026-10-20 | *Computable Name*:FHIR4Eyes |

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

## How to read this guide

This guide is divided into several pages, listed in the menu bar at the top of each page.

* [Home](index.md): introduction and scope of this guide.
* **Guidance**: the "why" and the "how" before the formal definitions. 
* [Background](background.md): why ophthalmology needs its own profiles, and the current state of standardization.
* [Use Cases](usecases.md): the clinical scenarios this guide supports, and the resources each one uses.
* [General Guidance](guidance.md): patterns shared by all profiles (Must Support, laterality, panels, components, the imaging study hierarchy).
* [Security and Privacy](security.md): considerations specific to eye care data.
 
* **FHIR Artefacts**: detailed descriptions and formal definitions of everything this guide defines. 
* [Artefacts Summary](artifacts.md): every artefact in this guide, grouped by clinical domain.
* [Profiles](profiles.md): the profiles, grouped by clinical domain, with links to their examples. Each profile page includes its narrative, design decisions and formal definition.
* [Search Parameters and Capabilities](search-parameters.md): the search parameters and the capability statement.
* [Terminology](terminology.md): the terminology strategy, value sets and code systems.
 
* [Examples](examples.md): all example instances, grouped by clinical scenario.
* **Support** 
* [Downloads](downloads.md): the package, the examples and the full guide for download.
 
* [Change Log](changes.md): changes across versions of this guide.

## Getting started

* New to FHIR? Start with the [official FHIR specification](http://hl7.org/fhir/R4/index.html)
* New to this guide? Read [Background](background.md) next, then [Use Cases](usecases.md)
* Looking for a specific resource profile? Go straight to [Profiles](profiles.md)
* Want to see real instances? Browse the [Examples](examples.md)
* Want to know what "must support" means here? See [General Guidance](guidance.md)

## Dependencies



## Feedback and community

This is an early-stage, community-driven guide. Feedback, questions, and contributions are welcome.

## Author

**Yasna Soto Sánchez**

Medical Technologist in Ophthalmology and Optometry, Universidad de Chile Master's in Medical Informatics, Universidad de Chile, in collaboration with Universidad de Heidelberg Civil Informatics Engineering student, Universidad San Sebastián

I worked for five years in clinical and hospital settings within ophthalmology units, performing a wide range of specialty examinations and five years in Medical Informatics. I then moved into medical informatics,where my first contribution was standardizing ophthalmic imaging toward the PACS system at Hospital San José, in Independencia, Santiago de Chile. I continue working toward the greatest possible standardization of ophthalmology data, aiming for an interoperable path that allows modality neutrality and a more standardized flow of ophthalmic procedures and records.



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "fhir4eyes.core",
  "url" : "https://YasniiSS.github.io/fhir4eyes/ImplementationGuide/fhir4eyes.core",
  "version" : "0.4.0",
  "name" : "FHIR4Eyes",
  "title" : "FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology",
  "status" : "draft",
  "date" : "2026-10-20T20:13:11-03:00",
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
    "version" : "7.4.0"
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
        "valueString" : "pin-canonicals"
      },
      {
        "url" : "value",
        "valueString" : "pin-multiples"
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
        "valueCode" : "pin-canonicals"
      },
      {
        "url" : "value",
        "valueString" : "pin-multiples"
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
    "grouping" : [{
      "id" : "GroupFoundation",
      "name" : "Foundation: patient, encounter and laterality",
      "description" : "Base profiles reused throughout the guide: the patient, the ophthalmology encounter, and the ocular BodyStructure used to express laterality."
    },
    {
      "id" : "GroupWorkflow",
      "name" : "Clinical workflow: orders, diagnoses, procedures, imaging and reports",
      "description" : "Profiles that chain an ophthalmic episode together: the order, the diagnosis, the procedure, the imaging study and the resulting diagnostic report."
    },
    {
      "id" : "GroupVisualAcuity",
      "name" : "Visual acuity",
      "description" : "Visual acuity measurements, including pinhole and low vision results."
    },
    {
      "id" : "GroupIOP",
      "name" : "Intraocular pressure and pachymetry",
      "description" : "Single IOP readings, central corneal thickness, corrected IOP and the ambulatory tension curve panel."
    },
    {
      "id" : "GroupOCT",
      "name" : "Optical coherence tomography (OCT)",
      "description" : "OCT optic nerve head / RNFL and macular thickness analyses."
    },
    {
      "id" : "GroupCornealTomography",
      "name" : "Corneal tomography",
      "description" : "The corneal tomography report and the six analyses grouped under it."
    },
    {
      "id" : "GroupOtherTests",
      "name" : "Other diagnostic tests",
      "description" : "Visual field and specular microscopy."
    },
    {
      "id" : "GroupBiometry",
      "name" : "Ocular biometry, IOL calculation and implanted devices",
      "description" : "Biometry for cataract surgery planning, IOL power formula results and the implanted intraocular lens."
    },
    {
      "id" : "GroupStrabismus",
      "name" : "Strabismus and binocular vision",
      "description" : "The strabismus exam panel and its family of direct and position-based sub-tests."
    },
    {
      "id" : "GroupTreatment",
      "name" : "Treatment: care plans and medications",
      "description" : "Long-term treatment schemes (e.g. intravitreal injections) and the medications administered."
    },
    {
      "id" : "GroupCapabilities",
      "name" : "Capability statement and search parameters",
      "description" : "The expected server capabilities and the search parameters defined by this guide."
    },
    {
      "id" : "GroupTerminology",
      "name" : "Terminology",
      "description" : "Code systems and value sets defined by this guide."
    },
    {
      "id" : "GroupExFoundation",
      "name" : "Examples: shared actors",
      "description" : "Patient, practitioner, encounter and laterality instances referenced by the other examples."
    },
    {
      "id" : "GroupExVisualAcuity",
      "name" : "Examples: visual acuity",
      "description" : "Visual acuity examples."
    },
    {
      "id" : "GroupExIOP",
      "name" : "Examples: intraocular pressure and tension curve",
      "description" : "IOP, pachymetry, corrected IOP and tension curve examples."
    },
    {
      "id" : "GroupExOCT",
      "name" : "Examples: OCT",
      "description" : "OCT orders, imaging studies, analyses and reports."
    },
    {
      "id" : "GroupExCornealTomography",
      "name" : "Examples: corneal tomography",
      "description" : "Corneal tomography order, report and its six analyses."
    },
    {
      "id" : "GroupExOtherTests",
      "name" : "Examples: other diagnostic tests",
      "description" : "Visual field and specular microscopy examples."
    },
    {
      "id" : "GroupExCataract",
      "name" : "Examples: biometry and cataract surgery",
      "description" : "Biometry, IOL formula results, cataract surgery and the implanted IOL."
    },
    {
      "id" : "GroupExStrabismus",
      "name" : "Examples: strabismus exam",
      "description" : "Strabismus exam panel and its sub-tests."
    },
    {
      "id" : "GroupExIntravitreal",
      "name" : "Examples: intravitreal injection treatment",
      "description" : "Diagnosis, care plan, medication, administration and injection procedure."
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ophthalmic-patient.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ophthalmic-patient"
      },
      "name" : "Ophthalmic Patient",
      "description" : "Represents a patient receiving eye care, extending the base Patient resource\nwith identifier slices for the Chilean national identifier (RUT) and passport number, and\nrequiring the core demographic elements (name, gender, birthDate) needed for clinical\nophthalmic workflows such as scheduling, MWL/DICOM worklist generation, and reporting.",
      "exampleBoolean" : false,
      "groupingId" : "GroupFoundation"
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
      "exampleBoolean" : false,
      "groupingId" : "GroupFoundation"
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
      "exampleBoolean" : false,
      "groupingId" : "GroupFoundation"
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
      "exampleBoolean" : false,
      "groupingId" : "GroupWorkflow"
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
      "exampleBoolean" : false,
      "groupingId" : "GroupWorkflow"
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
      "exampleBoolean" : false,
      "groupingId" : "GroupWorkflow"
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
      "description" : "An ophthalmic imaging study, such as OCT, retinography, or angiography.\nAlways traceable back to the medical order that led to it via basedOn. Laterality is\nrepresented through the native series.bodySite/series.laterality Coding fields (for\nstandard DICOM/PACS compatibility); the core bodySite extension is not allowed on\nImagingStudy.series in FHIR R4.",
      "exampleBoolean" : false,
      "groupingId" : "GroupWorkflow"
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
      "description" : "Represents the findings, diagnosis, and treatment plan reached after\nreviewing an imaging study or structured examination dataset. Unlike a radiology report,\nthis is not limited to describing imaging findings: the same clinical act typically also\nreaches a diagnosis and defines a treatment plan, recorded as separate Condition and\nCarePlan resources referencing this report.",
      "exampleBoolean" : false,
      "groupingId" : "GroupWorkflow"
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
      "description" : "Represents a visual acuity measurement, modeled as discrete, independently\ncombinable components (distance, correction status, chart/optotype, scale, pinhole) rather\nthan as a single pre-coordinated code that bundles all of these together. This follows a\nmore granular pattern than the HL7 Eye Care IG's published (2021) approach, aligned with a\nnewer proposal discussed within SNOMED International's Eye Care Clinical Reference Group\n(2025), which favors flexible, independently recordable components over pre-coordinated\ncodes. See Terminology for the underlying terminology strategy, including the\nLowVisionAssessment value set for vision below what any chart can measure.",
      "exampleBoolean" : false,
      "groupingId" : "GroupVisualAcuity"
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
      "exampleBoolean" : false,
      "groupingId" : "GroupIOP"
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
      "description" : "Represents a corneal pachymetry measurement (corneal thickness), typically\nin micrometres. Used on its own, and also referenced by CorrectedIntraocularPressure when\ncorrecting an IOP reading for corneal thickness.",
      "exampleBoolean" : false,
      "groupingId" : "GroupIOP"
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
      "exampleBoolean" : false,
      "groupingId" : "GroupIOP"
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
      "exampleBoolean" : false,
      "groupingId" : "GroupIOP"
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
      "description" : "Represents an OCT optic nerve head (ONH) and retinal nerve fiber layer (RNFL)\r\nanalysis: cup and disc geometry, cup-to-disc ratios, Disc Damage Likelihood Scale (DDLS),\r\nthe global TSNIT (Temporal-Superior-Nasal-Inferior-Temporal) RNFL profile statistics and\r\nthe quadrant average RNFL thicknesses, alongside acquisition metadata and an overall\r\nnormative classification. Sourced directly from the FHIR4Eyes Observations catalog (OCT\r\nOptic Disc/RNFL section), replacing an earlier, quadrant-thickness-only version of this profile.",
      "exampleBoolean" : false,
      "groupingId" : "GroupOCT"
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
      "description" : "Represents an OCT macular thickness analysis using the ETDRS 9-sector grid,\r\nplus device-reported acquisition metadata (dilation, signal strength), DICOM-aligned\r\nclassification fields (thickness definition, per-subfield deviation category, anatomic\r\nreference point) and an overall normative classification. Sourced directly from the FHIR4Eyes Observations catalog (OCT Macula section),\r\nreplacing an earlier, less complete version of this profile.",
      "exampleBoolean" : false,
      "groupingId" : "GroupOCT"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-corneal-tomography-report.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/corneal-tomography-report"
      },
      "name" : "Corneal Tomography Report",
      "description" : "A specialization of OphthalmicDiagnosticReport for corneal tomography exams\n(e.g. Scheimpflug/Pentacam-style devices), grouping its six component analyses\n(CTAnteriorSurface, CTPosteriorSurface, CTPachymetry, CTAnteriorChamber,\nCTKeratoconusIndices, CTDensitometry) via result, following the same DiagnosticReport\ngrouping pattern already used for OCT (see OphthalmicOCTRNFL and OphthalmicOCTMacula).\n\nOpen question, not yet resolved: in practice, a tomography device may print these as\nseparate reports or 'maps' (an anterior surface map, a posterior surface map, and so on)\nrather than a single integrated report. For now, this guide captures all six as results\nunder a single combined report, since the current priority is representing the underlying\ndata correctly rather than resolving the exact report/printout structure a given device\nproduces. Whether this should instead be split into multiple report profiles is left open\nfor future review.",
      "exampleBoolean" : false,
      "groupingId" : "GroupCornealTomography"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ct-anterior-surface.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ct-anterior-surface"
      },
      "name" : "Corneal Tomography - Anterior Surface",
      "description" : "Represents the anterior corneal surface analysis component of a corneal\ntomography exam (e.g. Scheimpflug/Pentacam-style device), one of six Observations grouped\nunder a single CornealTomographyReport. Sourced directly from the FHIR4Eyes Observations\ncatalog (Corneal Topography: Anterior Surface section). Component codes are local FHIR4Eyes codes, as no confirmed laterality-neutral SNOMED CT/LOINC codes were identified for these device-specific measurements (see Terminology). Informative correspondences to DICOM corneal topography attributes are given in the DICOM mapping.",
      "exampleBoolean" : false,
      "groupingId" : "GroupCornealTomography"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ct-posterior-surface.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ct-posterior-surface"
      },
      "name" : "Corneal Tomography - Posterior Surface",
      "description" : "Represents the posterior corneal surface analysis component of a corneal\ntomography exam, one of six Observations grouped under a single CornealTomographyReport.\nSourced directly from the FHIR4Eyes Observations catalog (Corneal Topography: Posterior\nSurface section). Component codes are local FHIR4Eyes codes, as no confirmed laterality-neutral SNOMED CT/LOINC codes were identified for these device-specific measurements (see Terminology).",
      "exampleBoolean" : false,
      "groupingId" : "GroupCornealTomography"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ct-pachymetry.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ct-pachymetry"
      },
      "name" : "Corneal Tomography - Pachymetry",
      "description" : "Represents the pachymetry (corneal thickness) component of a corneal\ntomography exam, one of six Observations grouped under a single CornealTomographyReport.\nDistinct from the standalone Pachymetry profile used for simple central corneal thickness\nmeasurements outside the tomography context (see Profiles); this profile captures the\nfuller thickness map data a tomography device produces. Sourced directly from the\nFHIR4Eyes Observations catalog (Corneal Topography: Pachymetry section).",
      "exampleBoolean" : false,
      "groupingId" : "GroupCornealTomography"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ct-anterior-chamber.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ct-anterior-chamber"
      },
      "name" : "Corneal Tomography - Anterior Chamber",
      "description" : "Represents the anterior chamber analysis component of a corneal tomography\nexam, one of six Observations grouped under a single CornealTomographyReport. Component codes are local FHIR4Eyes codes, as no confirmed laterality-neutral SNOMED CT/LOINC codes were identified for these device-specific measurements (see Terminology).",
      "exampleBoolean" : false,
      "groupingId" : "GroupCornealTomography"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ct-keratoconus-indices.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ct-keratoconus-indices"
      },
      "name" : "Corneal Tomography - Keratoconus Indices",
      "description" : "Represents the keratoconus screening/classification indices component of a\ncorneal tomography exam, one of six Observations grouped under a single\nCornealTomographyReport. Sourced directly from the FHIR4Eyes Observations catalog\n(Corneal Topography: Keratoconus Indices section). Component codes are local FHIR4Eyes codes, as no confirmed laterality-neutral SNOMED CT/LOINC codes were identified for these device-specific measurements (see Terminology).",
      "exampleBoolean" : false,
      "groupingId" : "GroupCornealTomography"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ct-densitometry.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ct-densitometry"
      },
      "name" : "Corneal Tomography - Densitometry",
      "description" : "Represents the corneal densitometry (light backscatter) component of a\ncorneal tomography exam, one of six Observations grouped under a single\nCornealTomographyReport. Sourced directly from the FHIR4Eyes Observations catalog\n(Corneal Topography: Densitometry section): three radial zones plus total, and a\nper-layer breakdown (anterior, central, posterior). Component codes are local FHIR4Eyes codes, as no confirmed laterality-neutral SNOMED CT/LOINC codes were identified for these device-specific measurements (see Terminology).",
      "exampleBoolean" : false,
      "groupingId" : "GroupCornealTomography"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ophthalmic-humphrey-visual-field.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ophthalmic-humphrey-visual-field"
      },
      "name" : "Ophthalmic Humphrey Visual Field",
      "description" : "Represents an automated static perimetry (Humphrey field analyzer) exam.\r\nSourced directly from the FHIR4Eyes Observations catalog (Automated Visual Field (Humphrey)\r\nsection), with reliability indices (fixation losses, false positive and false negative\r\nerrors) and the Glaucoma Hemifield Test. DICOM-aligned; see the DICOM mapping for\r\ninformative correspondences.",
      "exampleBoolean" : false,
      "groupingId" : "GroupOtherTests"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ophthalmic-specular-microscopy.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ophthalmic-specular-microscopy"
      },
      "name" : "Ophthalmic Specular Microscopy",
      "description" : "Represents a corneal endothelial specular microscopy exam. Sourced directly\nfrom the FHIR4Eyes Observations catalog (Specular Microscopy section).",
      "exampleBoolean" : false,
      "groupingId" : "GroupOtherTests"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ophthalmic-ocular-biometry.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ophthalmic-ocular-biometry"
      },
      "name" : "Ophthalmic Ocular Biometry",
      "description" : "Represents an ocular biometry exam (optical or ultrasonic), used primarily\nfor IOL power calculation ahead of cataract surgery. Sourced directly from the FHIR4Eyes\nObservations catalog (Ocular Biometry section), with informative DICOM correspondences\ngiven in the DICOM mapping. Holds the shared measurements common to the whole exam (axial\nlength, keratometry, and so on) as components; each formula calculated from those shared\nmeasurements, with its own suggested IOL and expected outcome, is a separate\nIOLFormulaResult instance referenced via hasMember, since one biometry exam is typically\nrun through several formulas.",
      "exampleBoolean" : false,
      "groupingId" : "GroupBiometry"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-iol-formula-result.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/iol-formula-result"
      },
      "name" : "IOL Formula Result",
      "description" : "Represents the result of a single IOL power calculation formula (e.g.\nBarrett Universal II, SRK/T, Holladay), including the recommended lens and expected\nrefraction. Not intended to be used standalone: always referenced via hasMember from an\nOphthalmicOcularBiometry instance, since one biometry exam typically has its shared\nmeasurements calculated through several formulas, each with its own suggested lens.",
      "exampleBoolean" : false,
      "groupingId" : "GroupBiometry"
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
      "exampleBoolean" : false,
      "groupingId" : "GroupBiometry"
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
      "exampleBoolean" : false,
      "groupingId" : "GroupStrabismus"
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
      "description" : "Represents a cover test result, performed with or without correction, at\nnear or far distance. Findings are recorded as open text/coded values for now (PC:\northophoria, PL: various movement patterns), since no confirmed SNOMED/LOINC binding has\nbeen verified for these specific findings yet.",
      "exampleBoolean" : false,
      "groupingId" : "GroupStrabismus"
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
      "exampleBoolean" : false,
      "groupingId" : "GroupStrabismus"
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
      "description" : "Represents the near point of convergence (PPC), recorded either as a\r\nnumeric distance in centimetres, or, when a precise measurement isn't obtained, as a\r\nqualitative finding (e.g. 'nasal', 'near nasal').",
      "exampleBoolean" : false,
      "groupingId" : "GroupStrabismus"
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
      "description" : "Represents a qualitative assessment of convergence ability (good, fair,\r\ninsufficient, poor).",
      "exampleBoolean" : false,
      "groupingId" : "GroupStrabismus"
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
      "exampleBoolean" : false,
      "groupingId" : "GroupStrabismus"
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
      "description" : "Represents a prism cover test, measuring ocular deviation in prism diopters\nacross multiple gaze positions. Each gaze position is recorded as a separate\nGazePositionMeasurement, referenced here via hasMember. Distance and correction status are\nrecorded as components on this panel, following the same granular pattern used for\nOphthalmicVisualAcuity, rather than being folded into a single pre-coordinated code.",
      "exampleBoolean" : false,
      "groupingId" : "GroupStrabismus"
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
      "description" : "Represents a Krimsky test (corneal light reflex test with prism), measuring\nocular deviation in prism diopters across multiple gaze positions. Follows the same\nstructural pattern as PrismCoverTest: each gaze position is a separate\nGazePositionMeasurement, referenced via hasMember.",
      "exampleBoolean" : false,
      "groupingId" : "GroupStrabismus"
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
      "description" : "Represents a Hirschberg corneal light reflex test, used to estimate the\r\nangle of deviation when other tests aren't feasible (e.g. young children). Performed across\r\nmultiple gaze positions; each position is recorded as a separate GazePositionMeasurement,\r\nreferenced here via hasMember, using its qualitative finding component. When a\r\nquantitative estimate is made, the per-position horizontalDeviation component (positive\r\nmagnitude, in degrees or prism diopters, with its direction in horizontalDirection) may be\r\nused for the estimated deviation, in addition to the finding.",
      "exampleBoolean" : false,
      "groupingId" : "GroupStrabismus"
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
      "description" : "Represents a red filter plus light test, assessing fusion, suppression, or\ndiplopia. Performed across multiple gaze positions; each position is recorded as a separate\nGazePositionMeasurement, referenced here via hasMember, using its qualitative finding\ncomponent. Distance and correction status are recorded as components on this panel.",
      "exampleBoolean" : false,
      "groupingId" : "GroupStrabismus"
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
      "description" : "Represents a Worth 4 dot test, assessing fusion, suppression, or diplopia.\nPerformed across multiple gaze positions; each position is recorded as a separate\nGazePositionMeasurement, referenced here via hasMember, using its qualitative finding\ncomponent. Distance and correction status are recorded as components on this panel.",
      "exampleBoolean" : false,
      "groupingId" : "GroupStrabismus"
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
      "description" : "A reusable pattern for a single measurement or finding taken at one gaze\nposition (e.g. primary position, right gaze, up-and-right gaze). Used by PrismCoverTest and\nKrimskyTest for quantitative prism diopter deviation (recorded as a positive magnitude\nplus a separate direction component, never as a signed value), and by HirschbergTest,\nRedFilterLightTest, and Worth4DotTest for a qualitative finding at each position. Each test\nuses only the components relevant to it; all components are optional. Not intended to be\nused standalone; always referenced via hasMember from one of those panels.",
      "exampleBoolean" : false,
      "groupingId" : "GroupStrabismus"
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
      "exampleBoolean" : false,
      "groupingId" : "GroupTreatment"
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
      "exampleBoolean" : false,
      "groupingId" : "GroupTreatment"
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
      "description" : "Records the administration of a medication during an ophthalmic procedure,\nmost notably an intravitreal injection. Always linked back to the specific procedure it was\nadministered during, via partOf, consistent with FHIR's standard 'larger event of which\nthis is a component' pattern.",
      "exampleBoolean" : false,
      "groupingId" : "GroupTreatment"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CapabilityStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CapabilityStatement-FHIR4EyesCapabilityStatement.html"
      }],
      "reference" : {
        "reference" : "CapabilityStatement/FHIR4EyesCapabilityStatement"
      },
      "name" : "FHIR4Eyes Server Capability Statement",
      "description" : "Capability Statement for a FHIR4Eyes conformant server supporting ophthalmic clinical data exchange",
      "exampleBoolean" : false,
      "groupingId" : "GroupCapabilities"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-sp-observation-eye.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/sp-observation-eye"
      },
      "name" : "Observation eye (laterality) search parameter",
      "description" : "Search observations (e.g. OphthalmicVisualAcuity, IntraocularPressure, and other ophthalmic Observation profiles in this guide) by eye laterality, expressed via the bodySite extension referencing an OcularBodyStructure instance.",
      "exampleBoolean" : false,
      "groupingId" : "GroupCapabilities"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-sp-condition-eye.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/sp-condition-eye"
      },
      "name" : "Condition eye (laterality) search parameter",
      "description" : "Search ophthalmic conditions/diagnoses by eye laterality, expressed via the bodySite extension referencing an OcularBodyStructure instance.",
      "exampleBoolean" : false,
      "groupingId" : "GroupCapabilities"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-sp-procedure-eye.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/sp-procedure-eye"
      },
      "name" : "Procedure eye (laterality) search parameter",
      "description" : "Search ophthalmic procedures by eye laterality, expressed via the bodySite extension referencing an OcularBodyStructure instance.",
      "exampleBoolean" : false,
      "groupingId" : "GroupCapabilities"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-sp-imagingstudy-eye.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/sp-imagingstudy-eye"
      },
      "name" : "ImagingStudy eye (laterality) search parameter",
      "description" : "Search ophthalmic imaging studies by the laterality of an examined series, using the native ImagingStudy.series.laterality element (SNOMED CT 24028007 Right / 7771000 Left).",
      "exampleBoolean" : false,
      "groupingId" : "GroupCapabilities"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-sp-imagingstudy-modality.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/sp-imagingstudy-modality"
      },
      "name" : "ImagingStudy modality search parameter",
      "description" : "Search ophthalmic imaging studies by the DICOM acquisition modality of their series (e.g. OPT, OP, OPV, OPM, OAM, AR).",
      "exampleBoolean" : false,
      "groupingId" : "GroupCapabilities"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-sp-diagnosticreport-imaging-study.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/sp-diagnosticreport-imaging-study"
      },
      "name" : "DiagnosticReport imaging study search parameter",
      "description" : "Search ophthalmic diagnostic reports by the OphthalmicImagingStudy they interpret.",
      "exampleBoolean" : false,
      "groupingId" : "GroupCapabilities"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-sp-encounter-appointment.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/sp-encounter-appointment"
      },
      "name" : "Encounter appointment search parameter",
      "description" : "Search ophthalmic encounters by the appointment that led to them.",
      "exampleBoolean" : false,
      "groupingId" : "GroupCapabilities"
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
      "exampleBoolean" : false,
      "groupingId" : "GroupTerminology"
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
      "exampleBoolean" : false,
      "groupingId" : "GroupTerminology"
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
      "exampleBoolean" : false,
      "groupingId" : "GroupTerminology"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-fhir4eyes-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/fhir4eyes-cs"
      },
      "name" : "FHIR4Eyes Code System",
      "description" : "Local, laterality-neutral codes for ophthalmic observations and components\ndefined by FHIR4Eyes where no suitable side-neutral LOINC or SNOMED CT code has been\nverified. Open to replacement as external codes become available.",
      "exampleBoolean" : false,
      "groupingId" : "GroupTerminology"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-normative-classification-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/normative-classification-vs"
      },
      "name" : "Normative Classification Value Set",
      "description" : "Classification of an ophthalmic measurement or analysis against the device\nnormative (age-matched reference) database: within normal limits, borderline, or outside\nnormal limits. Used for the overall interpretation of OCT macula and OCT RNFL / optic nerve\nhead analyses, and for the per-subfield deviation category of the OCT macula profile.\nBindings are extensible, so device-specific percentile categories (e.g. p<5%, p<1%) may be\nused when no concept here applies.",
      "exampleBoolean" : false,
      "groupingId" : "GroupTerminology"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-gaze-position-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/gaze-position-vs"
      },
      "name" : "Gaze Position Value Set",
      "description" : "The nine diagnostic positions of gaze at which a strabismus measurement or\nbinocular finding is recorded: primary position, the four secondary positions (up gaze /\nsupraversion, down gaze / infraversion, right gaze / dextroversion, left gaze / levoversion)\nand the four tertiary (oblique) positions. SNOMED CT qualifier values from the Gaze\ndirections hierarchy.",
      "exampleBoolean" : false,
      "groupingId" : "GroupTerminology"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-binocular-finding-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/binocular-finding-vs"
      },
      "name" : "Binocular Finding Value Set",
      "description" : "Qualitative findings recorded at a gaze position: sensory responses on the red\nfilter plus light and Worth 4 dot tests (fusion, suppression of one eye, crossed or\nuncrossed diplopia) and the position of the corneal light reflex on the Hirschberg test\n(centered, or displaced nasally, temporally, superiorly or inferiorly in the eye assessed).\nThe binding is extensible, so other findings (e.g. tropia vs phoria on a prism cover test)\nmay be used when no concept here applies.",
      "exampleBoolean" : false,
      "groupingId" : "GroupTerminology"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-horizontal-deviation-direction-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/horizontal-deviation-direction-vs"
      },
      "name" : "Horizontal Deviation Direction Value Set",
      "description" : "Direction of a horizontal ocular deviation at a gaze position: esodeviation,\nexodeviation, or orthophoria when no horizontal deviation is present. Covers both tropias\nand phorias; the magnitude is recorded separately as a positive value.",
      "exampleBoolean" : false,
      "groupingId" : "GroupTerminology"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-vertical-deviation-direction-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/vertical-deviation-direction-vs"
      },
      "name" : "Vertical Deviation Direction Value Set",
      "description" : "Direction of a vertical ocular deviation of the deviating eye at a gaze\nposition: hyperdeviation or hypodeviation. Covers both tropias and phorias; the magnitude is\nrecorded separately as a positive value.",
      "exampleBoolean" : false,
      "groupingId" : "GroupTerminology"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-test-distance-category-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/test-distance-category-vs"
      },
      "name" : "Test Distance Category Value Set",
      "description" : "Categorical testing distance of a strabismus or binocular vision test: near\n(about 33-40 cm) or far (about 6 m / 20 ft). The binding is extensible, so other categories\n(e.g. intermediate) may be used when needed.",
      "exampleBoolean" : false,
      "groupingId" : "GroupTerminology"
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
      "name" : "Patient (international identifier)",
      "description" : "Example patient identified with a passport number, used across the guide's examples.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-patient",
      "groupingId" : "GroupExFoundation"
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
      "name" : "Patient (Chilean RUT identifier)",
      "description" : "Example patient identified with a Chilean RUT.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-patient",
      "groupingId" : "GroupExFoundation"
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
      "name" : "Ophthalmologist",
      "description" : "Example ophthalmologist referenced as requester and performer.",
      "exampleBoolean" : true,
      "groupingId" : "GroupExFoundation"
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
      "name" : "Ambulatory ophthalmology encounter",
      "description" : "Example ambulatory ophthalmology consultation.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-encounter",
      "groupingId" : "GroupExFoundation"
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
      "name" : "Right eye (laterality)",
      "description" : "OcularBodyStructure for the right eye, referenced via bodySite for laterality.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ocular-body-structure",
      "groupingId" : "GroupExFoundation"
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
      "name" : "Left eye (laterality)",
      "description" : "OcularBodyStructure for the left eye, referenced via bodySite for laterality.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ocular-body-structure",
      "groupingId" : "GroupExFoundation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "BodyStructure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "BodyStructure-BothEyesStructureExample.html"
      }],
      "reference" : {
        "reference" : "BodyStructure/BothEyesStructureExample"
      },
      "name" : "Both eyes (laterality)",
      "description" : "OcularBodyStructure for both eyes, referenced via bodySite for binocular measurements.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ocular-body-structure",
      "groupingId" : "GroupExFoundation"
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
      "name" : "Visual acuity: uncorrected, right eye",
      "description" : "Uncorrected distance visual acuity of the right eye.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-visual-acuity",
      "groupingId" : "GroupExVisualAcuity"
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
      "name" : "Visual acuity: pinhole, right eye",
      "description" : "Pinhole measurement derived from the uncorrected right eye measurement.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-visual-acuity",
      "groupingId" : "GroupExVisualAcuity"
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
      "name" : "Visual acuity: corrected, left eye",
      "description" : "Corrected distance visual acuity of the left eye.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-visual-acuity",
      "groupingId" : "GroupExVisualAcuity"
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
      "name" : "Visual acuity: counting fingers, right eye",
      "description" : "Low vision qualitative result (counting fingers) with testing distance.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-visual-acuity",
      "groupingId" : "GroupExVisualAcuity"
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
      "name" : "Visual acuity: binocular",
      "description" : "Binocular visual acuity measurement.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-visual-acuity",
      "groupingId" : "GroupExVisualAcuity"
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
      "name" : "IOP: right eye",
      "description" : "Single intraocular pressure reading, right eye.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/intraocular-pressure",
      "groupingId" : "GroupExIOP"
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
      "name" : "IOP: left eye",
      "description" : "Single intraocular pressure reading, left eye.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/intraocular-pressure",
      "groupingId" : "GroupExIOP"
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
      "name" : "Pachymetry: right eye",
      "description" : "Central corneal thickness, right eye.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/pachymetry",
      "groupingId" : "GroupExIOP"
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
      "name" : "Pachymetry: left eye",
      "description" : "Central corneal thickness, left eye.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/pachymetry",
      "groupingId" : "GroupExIOP"
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
      "name" : "Corrected IOP: right eye",
      "description" : "IOP corrected for corneal thickness, derived from IOP and pachymetry, right eye.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/corrected-intraocular-pressure",
      "groupingId" : "GroupExIOP"
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
      "name" : "Corrected IOP: left eye",
      "description" : "IOP corrected for corneal thickness, derived from IOP and pachymetry, left eye.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/corrected-intraocular-pressure",
      "groupingId" : "GroupExIOP"
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
      "name" : "Tension curve panel, right eye",
      "description" : "Ambulatory tension curve grouping three IOP readings via hasMember.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/tension-curve",
      "groupingId" : "GroupExIOP"
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
      "name" : "Tension curve reading 08:00, right eye",
      "description" : "IOP reading at 08:00, member of the tension curve.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/intraocular-pressure",
      "groupingId" : "GroupExIOP"
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
      "name" : "Tension curve reading 12:00, right eye",
      "description" : "IOP reading at 12:00, member of the tension curve.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/intraocular-pressure",
      "groupingId" : "GroupExIOP"
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
      "name" : "Tension curve reading 14:00, right eye",
      "description" : "IOP reading at 14:00, member of the tension curve.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/intraocular-pressure",
      "groupingId" : "GroupExIOP"
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
      "name" : "OCT order",
      "description" : "Order for an OCT examination (RNFL and macula).",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-service-request",
      "groupingId" : "GroupExOCT"
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
      "name" : "OCT procedure",
      "description" : "Procedure record for the OCT acquisition.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-procedure",
      "groupingId" : "GroupExOCT"
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
      "name" : "OCT imaging study: right eye",
      "description" : "ImagingStudy for the OCT acquisition of the right eye.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-imaging-study",
      "groupingId" : "GroupExOCT"
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
      "name" : "OCT imaging study: left eye",
      "description" : "ImagingStudy for the OCT acquisition of the left eye.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-imaging-study",
      "groupingId" : "GroupExOCT"
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
      "name" : "OCT RNFL: right eye",
      "description" : "OCT optic nerve head / RNFL analysis, right eye.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-oct-rnfl",
      "groupingId" : "GroupExOCT"
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
      "name" : "OCT RNFL: left eye",
      "description" : "OCT optic nerve head / RNFL analysis, left eye.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-oct-rnfl",
      "groupingId" : "GroupExOCT"
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
      "name" : "OCT macula: right eye",
      "description" : "OCT macular thickness (ETDRS grid), right eye.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-oct-macula",
      "groupingId" : "GroupExOCT"
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
      "name" : "OCT macula: left eye",
      "description" : "OCT macular thickness (ETDRS grid), left eye.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-oct-macula",
      "groupingId" : "GroupExOCT"
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
      "name" : "OCT report (RNFL + macula)",
      "description" : "Diagnostic report grouping the OCT RNFL and macula results.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-diagnostic-report",
      "groupingId" : "GroupExOCT"
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
      "name" : "OCT macula order",
      "description" : "Order for an OCT macula examination.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-service-request",
      "groupingId" : "GroupExOCT"
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
      "name" : "OCT macula imaging study: left eye",
      "description" : "ImagingStudy for an OCT macula acquisition, left eye.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-imaging-study",
      "groupingId" : "GroupExOCT"
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
      "name" : "OCT macula report",
      "description" : "Diagnostic report for an OCT macula examination.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-diagnostic-report",
      "groupingId" : "GroupExOCT"
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
      "name" : "OCT optic disc order",
      "description" : "Order for an OCT optic disc examination.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-service-request",
      "groupingId" : "GroupExOCT"
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
      "name" : "OCT optic disc imaging study: left eye",
      "description" : "ImagingStudy for an OCT optic disc acquisition, left eye.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-imaging-study",
      "groupingId" : "GroupExOCT"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-CornealTomographyServiceRequestExample.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/CornealTomographyServiceRequestExample"
      },
      "name" : "Corneal tomography order",
      "description" : "Order for a corneal tomography examination.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-service-request",
      "groupingId" : "GroupExCornealTomography"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DiagnosticReport"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "DiagnosticReport-CornealTomographyReportRightEyeExample.html"
      }],
      "reference" : {
        "reference" : "DiagnosticReport/CornealTomographyReportRightEyeExample"
      },
      "name" : "Corneal tomography report: right eye",
      "description" : "Report grouping the six corneal tomography analyses of the right eye.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/corneal-tomography-report",
      "groupingId" : "GroupExCornealTomography"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-CTAnteriorSurfaceRightEyeExample.html"
      }],
      "reference" : {
        "reference" : "Observation/CTAnteriorSurfaceRightEyeExample"
      },
      "name" : "CT anterior surface: right eye",
      "description" : "Anterior corneal surface analysis, right eye.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ct-anterior-surface",
      "groupingId" : "GroupExCornealTomography"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-CTPosteriorSurfaceRightEyeExample.html"
      }],
      "reference" : {
        "reference" : "Observation/CTPosteriorSurfaceRightEyeExample"
      },
      "name" : "CT posterior surface: right eye",
      "description" : "Posterior corneal surface analysis, right eye.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ct-posterior-surface",
      "groupingId" : "GroupExCornealTomography"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-CTPachymetryRightEyeExample.html"
      }],
      "reference" : {
        "reference" : "Observation/CTPachymetryRightEyeExample"
      },
      "name" : "CT pachymetry: right eye",
      "description" : "Corneal thickness map analysis, right eye.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ct-pachymetry",
      "groupingId" : "GroupExCornealTomography"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-CTAnteriorChamberRightEyeExample.html"
      }],
      "reference" : {
        "reference" : "Observation/CTAnteriorChamberRightEyeExample"
      },
      "name" : "CT anterior chamber: right eye",
      "description" : "Anterior chamber analysis, right eye.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ct-anterior-chamber",
      "groupingId" : "GroupExCornealTomography"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-CTKeratoconusIndicesRightEyeExample.html"
      }],
      "reference" : {
        "reference" : "Observation/CTKeratoconusIndicesRightEyeExample"
      },
      "name" : "CT keratoconus indices: right eye",
      "description" : "Keratoconus screening indices, right eye.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ct-keratoconus-indices",
      "groupingId" : "GroupExCornealTomography"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-CTDensitometryRightEyeExample.html"
      }],
      "reference" : {
        "reference" : "Observation/CTDensitometryRightEyeExample"
      },
      "name" : "CT densitometry: right eye",
      "description" : "Corneal densitometry, right eye.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ct-densitometry",
      "groupingId" : "GroupExCornealTomography"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-HumphreyVFRightEyeExample.html"
      }],
      "reference" : {
        "reference" : "Observation/HumphreyVFRightEyeExample"
      },
      "name" : "Humphrey visual field: right eye",
      "description" : "Automated static perimetry, right eye.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-humphrey-visual-field",
      "groupingId" : "GroupExOtherTests"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-SpecularMicroscopyRightEyeExample.html"
      }],
      "reference" : {
        "reference" : "Observation/SpecularMicroscopyRightEyeExample"
      },
      "name" : "Specular microscopy: right eye",
      "description" : "Corneal endothelial specular microscopy, right eye.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-specular-microscopy",
      "groupingId" : "GroupExOtherTests"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-BiometryRightEyeExample.html"
      }],
      "reference" : {
        "reference" : "Observation/BiometryRightEyeExample"
      },
      "name" : "Ocular biometry: right eye",
      "description" : "Biometry with shared measurements and IOL formula results as members.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-ocular-biometry",
      "groupingId" : "GroupExCataract"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-IOLFormulaBarrettExample.html"
      }],
      "reference" : {
        "reference" : "Observation/IOLFormulaBarrettExample"
      },
      "name" : "IOL formula: Barrett Universal II",
      "description" : "IOL power calculation result using Barrett Universal II.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/iol-formula-result",
      "groupingId" : "GroupExCataract"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-IOLFormulaSRKTExample.html"
      }],
      "reference" : {
        "reference" : "Observation/IOLFormulaSRKTExample"
      },
      "name" : "IOL formula: SRK/T",
      "description" : "IOL power calculation result using SRK/T.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/iol-formula-result",
      "groupingId" : "GroupExCataract"
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
      "name" : "Cataract surgery with IOL implantation",
      "description" : "Cataract surgery referencing the implanted IOL via focalDevice.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-procedure",
      "groupingId" : "GroupExCataract"
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
      "name" : "Intraocular lens (implanted device)",
      "description" : "Implanted IOL referenced from the cataract surgery procedure.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-device",
      "groupingId" : "GroupExCataract"
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
      "name" : "Strabismus exam panel",
      "description" : "Strabismus examination grouping the sub-tests performed.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/strabismus-exam",
      "groupingId" : "GroupExStrabismus"
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
      "name" : "Cover test: near",
      "description" : "Cover test result at near distance.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/cover-test",
      "groupingId" : "GroupExStrabismus"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-CoverTestFarExample.html"
      }],
      "reference" : {
        "reference" : "Observation/CoverTestFarExample"
      },
      "name" : "Cover test: far",
      "description" : "Cover test result at far distance.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/cover-test",
      "groupingId" : "GroupExStrabismus"
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
      "name" : "Ocular motility: right eye",
      "description" : "Extraocular muscle function assessment, right eye.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ocular-motility",
      "groupingId" : "GroupExStrabismus"
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
      "name" : "Ocular motility: left eye",
      "description" : "Extraocular muscle function assessment, left eye.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ocular-motility",
      "groupingId" : "GroupExStrabismus"
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
      "name" : "Near point of convergence",
      "description" : "Near point of convergence measurement.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/near-point-of-convergence",
      "groupingId" : "GroupExStrabismus"
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
      "name" : "Convergence assessment",
      "description" : "Qualitative convergence assessment.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/convergence-assessment",
      "groupingId" : "GroupExStrabismus"
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
      "name" : "Stereopsis test",
      "description" : "Stereoacuity test result.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/stereopsis-test",
      "groupingId" : "GroupExStrabismus"
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
      "name" : "Prism cover test panel",
      "description" : "Prism cover test grouping per-gaze-position measurements.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/prism-cover-test",
      "groupingId" : "GroupExStrabismus"
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
      "name" : "Prism cover test: primary position",
      "description" : "GazePositionMeasurement for the primary gaze position.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/gaze-position-measurement",
      "groupingId" : "GroupExStrabismus"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-KrimskyTestExample.html"
      }],
      "reference" : {
        "reference" : "Observation/KrimskyTestExample"
      },
      "name" : "Krimsky test panel",
      "description" : "Krimsky test at far, with correction, in the five principal gaze positions fixating each eye: 30 PD exodeviation fixating the right eye (FOD) and 25 PD fixating the left eye (FOI), comitant across positions.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/krimsky-test",
      "groupingId" : "GroupExStrabismus"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-KrimskyPrimaryFODExample.html"
      }],
      "reference" : {
        "reference" : "Observation/KrimskyPrimaryFODExample"
      },
      "name" : "Krimsky test: primary position, FOD",
      "description" : "Krimsky test, primary position, fixating right eye (FOD): 30 PD exodeviation of the left eye.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/gaze-position-measurement",
      "groupingId" : "GroupExStrabismus"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-KrimskyPrimaryFOIExample.html"
      }],
      "reference" : {
        "reference" : "Observation/KrimskyPrimaryFOIExample"
      },
      "name" : "Krimsky test: primary position, FOI",
      "description" : "Krimsky test, primary position, fixating left eye (FOI): 25 PD exodeviation of the right eye.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/gaze-position-measurement",
      "groupingId" : "GroupExStrabismus"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-KrimskyUpFODExample.html"
      }],
      "reference" : {
        "reference" : "Observation/KrimskyUpFODExample"
      },
      "name" : "Krimsky test: up gaze, FOD",
      "description" : "Krimsky test, up gaze (supraversion), fixating right eye (FOD): 30 PD exodeviation of the left eye.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/gaze-position-measurement",
      "groupingId" : "GroupExStrabismus"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-KrimskyUpFOIExample.html"
      }],
      "reference" : {
        "reference" : "Observation/KrimskyUpFOIExample"
      },
      "name" : "Krimsky test: up gaze, FOI",
      "description" : "Krimsky test, up gaze (supraversion), fixating left eye (FOI): 25 PD exodeviation of the right eye.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/gaze-position-measurement",
      "groupingId" : "GroupExStrabismus"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-KrimskyDownFODExample.html"
      }],
      "reference" : {
        "reference" : "Observation/KrimskyDownFODExample"
      },
      "name" : "Krimsky test: down gaze, FOD",
      "description" : "Krimsky test, down gaze (infraversion), fixating right eye (FOD): 30 PD exodeviation of the left eye.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/gaze-position-measurement",
      "groupingId" : "GroupExStrabismus"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-KrimskyDownFOIExample.html"
      }],
      "reference" : {
        "reference" : "Observation/KrimskyDownFOIExample"
      },
      "name" : "Krimsky test: down gaze, FOI",
      "description" : "Krimsky test, down gaze (infraversion), fixating left eye (FOI): 25 PD exodeviation of the right eye.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/gaze-position-measurement",
      "groupingId" : "GroupExStrabismus"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-KrimskyRightFODExample.html"
      }],
      "reference" : {
        "reference" : "Observation/KrimskyRightFODExample"
      },
      "name" : "Krimsky test: right gaze, FOD",
      "description" : "Krimsky test, right gaze (dextroversion), fixating right eye (FOD): 30 PD exodeviation of the left eye.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/gaze-position-measurement",
      "groupingId" : "GroupExStrabismus"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-KrimskyRightFOIExample.html"
      }],
      "reference" : {
        "reference" : "Observation/KrimskyRightFOIExample"
      },
      "name" : "Krimsky test: right gaze, FOI",
      "description" : "Krimsky test, right gaze (dextroversion), fixating left eye (FOI): 25 PD exodeviation of the right eye.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/gaze-position-measurement",
      "groupingId" : "GroupExStrabismus"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-KrimskyLeftFODExample.html"
      }],
      "reference" : {
        "reference" : "Observation/KrimskyLeftFODExample"
      },
      "name" : "Krimsky test: left gaze, FOD",
      "description" : "Krimsky test, left gaze (levoversion), fixating right eye (FOD): 30 PD exodeviation of the left eye.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/gaze-position-measurement",
      "groupingId" : "GroupExStrabismus"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-KrimskyLeftFOIExample.html"
      }],
      "reference" : {
        "reference" : "Observation/KrimskyLeftFOIExample"
      },
      "name" : "Krimsky test: left gaze, FOI",
      "description" : "Krimsky test, left gaze (levoversion), fixating left eye (FOI): 25 PD exodeviation of the right eye.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/gaze-position-measurement",
      "groupingId" : "GroupExStrabismus"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-HirschbergTestExample.html"
      }],
      "reference" : {
        "reference" : "Observation/HirschbergTestExample"
      },
      "name" : "Hirschberg test panel",
      "description" : "Hirschberg corneal light reflex test in the five principal gaze positions fixating each eye: about 15 degrees of exodeviation fixating either eye (FODI).",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/hirschberg-test",
      "groupingId" : "GroupExStrabismus"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-HirschbergPrimaryFODExample.html"
      }],
      "reference" : {
        "reference" : "Observation/HirschbergPrimaryFODExample"
      },
      "name" : "Hirschberg test: primary position, FOD",
      "description" : "Hirschberg test, primary position, fixating right eye (FOD): corneal light reflex of the left eye displaced nasally, about 15 degrees of exodeviation.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/gaze-position-measurement",
      "groupingId" : "GroupExStrabismus"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-HirschbergPrimaryFOIExample.html"
      }],
      "reference" : {
        "reference" : "Observation/HirschbergPrimaryFOIExample"
      },
      "name" : "Hirschberg test: primary position, FOI",
      "description" : "Hirschberg test, primary position, fixating left eye (FOI): corneal light reflex of the right eye displaced nasally, about 15 degrees of exodeviation.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/gaze-position-measurement",
      "groupingId" : "GroupExStrabismus"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-HirschbergUpFODExample.html"
      }],
      "reference" : {
        "reference" : "Observation/HirschbergUpFODExample"
      },
      "name" : "Hirschberg test: up gaze, FOD",
      "description" : "Hirschberg test, up gaze (supraversion), fixating right eye (FOD): corneal light reflex of the left eye displaced nasally, about 15 degrees of exodeviation.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/gaze-position-measurement",
      "groupingId" : "GroupExStrabismus"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-HirschbergUpFOIExample.html"
      }],
      "reference" : {
        "reference" : "Observation/HirschbergUpFOIExample"
      },
      "name" : "Hirschberg test: up gaze, FOI",
      "description" : "Hirschberg test, up gaze (supraversion), fixating left eye (FOI): corneal light reflex of the right eye displaced nasally, about 15 degrees of exodeviation.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/gaze-position-measurement",
      "groupingId" : "GroupExStrabismus"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-HirschbergDownFODExample.html"
      }],
      "reference" : {
        "reference" : "Observation/HirschbergDownFODExample"
      },
      "name" : "Hirschberg test: down gaze, FOD",
      "description" : "Hirschberg test, down gaze (infraversion), fixating right eye (FOD): corneal light reflex of the left eye displaced nasally, about 15 degrees of exodeviation.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/gaze-position-measurement",
      "groupingId" : "GroupExStrabismus"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-HirschbergDownFOIExample.html"
      }],
      "reference" : {
        "reference" : "Observation/HirschbergDownFOIExample"
      },
      "name" : "Hirschberg test: down gaze, FOI",
      "description" : "Hirschberg test, down gaze (infraversion), fixating left eye (FOI): corneal light reflex of the right eye displaced nasally, about 15 degrees of exodeviation.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/gaze-position-measurement",
      "groupingId" : "GroupExStrabismus"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-HirschbergRightFODExample.html"
      }],
      "reference" : {
        "reference" : "Observation/HirschbergRightFODExample"
      },
      "name" : "Hirschberg test: right gaze, FOD",
      "description" : "Hirschberg test, right gaze (dextroversion), fixating right eye (FOD): corneal light reflex of the left eye displaced nasally, about 15 degrees of exodeviation.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/gaze-position-measurement",
      "groupingId" : "GroupExStrabismus"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-HirschbergRightFOIExample.html"
      }],
      "reference" : {
        "reference" : "Observation/HirschbergRightFOIExample"
      },
      "name" : "Hirschberg test: right gaze, FOI",
      "description" : "Hirschberg test, right gaze (dextroversion), fixating left eye (FOI): corneal light reflex of the right eye displaced nasally, about 15 degrees of exodeviation.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/gaze-position-measurement",
      "groupingId" : "GroupExStrabismus"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-HirschbergLeftFODExample.html"
      }],
      "reference" : {
        "reference" : "Observation/HirschbergLeftFODExample"
      },
      "name" : "Hirschberg test: left gaze, FOD",
      "description" : "Hirschberg test, left gaze (levoversion), fixating right eye (FOD): corneal light reflex of the left eye displaced nasally, about 15 degrees of exodeviation.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/gaze-position-measurement",
      "groupingId" : "GroupExStrabismus"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-HirschbergLeftFOIExample.html"
      }],
      "reference" : {
        "reference" : "Observation/HirschbergLeftFOIExample"
      },
      "name" : "Hirschberg test: left gaze, FOI",
      "description" : "Hirschberg test, left gaze (levoversion), fixating left eye (FOI): corneal light reflex of the right eye displaced nasally, about 15 degrees of exodeviation.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/gaze-position-measurement",
      "groupingId" : "GroupExStrabismus"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-RedFilterLightTestExample.html"
      }],
      "reference" : {
        "reference" : "Observation/RedFilterLightTestExample"
      },
      "name" : "Red filter light test panel",
      "description" : "Red filter plus light test at near, with correction, grouping its per-gaze-position assessments.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/red-filter-light-test",
      "groupingId" : "GroupExStrabismus"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-RedFilterPrimaryPositionExample.html"
      }],
      "reference" : {
        "reference" : "Observation/RedFilterPrimaryPositionExample"
      },
      "name" : "Red filter light test: primary position",
      "description" : "GazePositionMeasurement for the red filter plus light test in primary position at near: single light seen (fusion).",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/gaze-position-measurement",
      "groupingId" : "GroupExStrabismus"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-Worth4DotTestExample.html"
      }],
      "reference" : {
        "reference" : "Observation/Worth4DotTestExample"
      },
      "name" : "Worth 4 dot test panel",
      "description" : "Worth 4 dot test at far, with correction, grouping its per-gaze-position assessments.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/worth-4-dot-test",
      "groupingId" : "GroupExStrabismus"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-Worth4DotPrimaryPositionExample.html"
      }],
      "reference" : {
        "reference" : "Observation/Worth4DotPrimaryPositionExample"
      },
      "name" : "Worth 4 dot test: primary position",
      "description" : "GazePositionMeasurement for the Worth 4 dot test in primary position at far: three green lights seen (right eye suppression).",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/gaze-position-measurement",
      "groupingId" : "GroupExStrabismus"
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
      "name" : "Diabetic macular edema diagnosis",
      "description" : "Ophthalmic diagnosis that motivates the intravitreal injection care plan.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-condition",
      "groupingId" : "GroupExIntravitreal"
    },
    {
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
      "name" : "Intravitreal injection care plan",
      "description" : "Treatment scheme of repeated intravitreal anti-VEGF injections.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-care-plan",
      "groupingId" : "GroupExIntravitreal"
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
      "name" : "Bevacizumab (Avastin)",
      "description" : "Anti-VEGF medication used for intravitreal injection.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-medication",
      "groupingId" : "GroupExIntravitreal"
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
      "name" : "Bevacizumab administration: dose 1",
      "description" : "First intravitreal dose administration.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-medication-administration",
      "groupingId" : "GroupExIntravitreal"
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
      "name" : "Intravitreal injection procedure",
      "description" : "One injection session, linked to the care plan via basedOn.",
      "exampleCanonical" : "https://YasniiSS.github.io/fhir4eyes/StructureDefinition/ophthalmic-procedure",
      "groupingId" : "GroupExIntravitreal"
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
          "valueUrl" : "guidance.html"
        }],
        "nameUrl" : "guidance.html",
        "title" : "General Guidance",
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
          "valueUrl" : "search-parameters.html"
        }],
        "nameUrl" : "search-parameters.html",
        "title" : "Search Parameters and Capabilities",
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
          "valueUrl" : "examples.html"
        }],
        "nameUrl" : "examples.html",
        "title" : "Examples",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "downloads.html"
        }],
        "nameUrl" : "downloads.html",
        "title" : "Downloads",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "changes.html"
        }],
        "nameUrl" : "changes.html",
        "title" : "Change Log",
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
