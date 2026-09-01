# Security and Privacy - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.3.0

* [**Table of Contents**](toc.md)
* **Security and Privacy**

## Security and Privacy

# Security and Privacy

This guide does not define its own security or authentication mechanisms. Implementers should rely on the security and privacy guidance already established by the base FHIR specification, and by whichever access framework their deployment uses (for example, SMART on FHIR, or a national health information exchange's own authentication and authorization layer).

This page highlights considerations specific to ophthalmology data, on top of that general guidance.

## Sensitivity of the data in scope

Most resources profiled in this guide (visual acuity, intraocular pressure, imaging studies, diagnoses, procedures, treatment plans) are standard clinical data, and should be protected under the same access controls as any other clinical record: role-based access tied to an active care relationship, and audit logging of access, consistent with [FHIR's general security guidance](http://hl7.org/fhir/R4/security.html).

Two areas in this guide warrant closer attention:

**Low vision and blindness status.** The `LowVisionAssessment` value set (see [Terminology](terminology.md)) and the ICD-11 blindness categories it is anchored to represent a disability status. In many jurisdictions, disability status is treated as sensitive personal information subject to additional legal protection, separate from ordinary clinical data. Implementers should confirm the applicable legal requirements for their deployment before exposing this data through broad-access APIs.

**Genetic and hereditary implications.** Some ophthalmic conditions this guide's profiles can represent (for example, certain forms of glaucoma or retinal disease documented via `OphthalmicCondition`) carry hereditary implications for a patient's biological relatives. This guide does not model family history or genetic data directly, but implementers building on top of it should be aware that a diagnosis recorded here may have downstream privacy implications beyond the individual patient.

## Imaging data

`OphthalmicImagingStudy` and its underlying DICOM instances may contain metadata (device identifiers, facility information, technician identifiers) beyond the clinical image itself. Implementers should apply the same de-identification and access control considerations used for other DICOM-based imaging data in their environment; this guide does not introduce ophthalmology-specific imaging privacy concerns beyond what already applies to `ImagingStudy` generally.

## Chilean-specific considerations

FHIR4Eyes CL, the Chilean extension to this guide, is expected to layer Chile's own national health data protection requirements (governed by Chile's applicable health data and personal data protection legislation) on top of the general guidance on this page. Those requirements are out of scope for this Core guide and will be addressed in the CL extension when it is developed.

## What this guide does not cover

This guide does not define consent management, break-glass access procedures, or patient- facing data access controls. These are deployment-level concerns that depend on the broader health information system this guide's profiles are used within, not something a resource-level Implementation Guide can resolve on its own.

