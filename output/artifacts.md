# Artifacts Summary - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.1.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Ocular Body Structure](StructureDefinition-ocular-body-structure.md) | Represents an anatomical ocular location, used throughout this guide to express laterality (right eye, left eye, or both eyes) for observations, conditions, procedures, and imaging studies. Follows the same structural pattern as the HL7 Eye Care IG's equivalent profile ('Ocular anatomical location' / body-structure-eye): a `location` element identifying the anatomical structure, and a `locationQualifier` element carrying laterality and other qualifiers. The HL7 Eye Care IG defines its own dedicated value sets for these two elements (`ValueSet/body-site-eye` for location, `ValueSet/qualifiers` for locationQualifier), which are the intended reference terminology for this profile. However, because the HL7 Eye Care IG is not published as a usable FHIR package, those value sets cannot be formally imported here; this profile binds to SNOMED CT directly instead (see the Terminology page of this guide for the general rationale). |
| [Ophthalmic Condition](StructureDefinition-ophthalmic-condition.md) | The formal, past or present clinical diagnosis of a specific ophthalmic condition. Follows the same minimalist technical pattern as the HL7 Eye Care IG's equivalent profile (condition-base): only code, bodySite, and subject carry real constraints; everything else in the base Condition resource is left as-is. See the Profiles page of this guide for the full design rationale, including a note on where FHIR4Eyes departs from the Eye Care IG's own narrative documentation. |
| [Ophthalmic Service Request](StructureDefinition-ophthalmic-service-request.md) | A request for an ophthalmic examination and, where relevant, its interpretation or treatment. Covers three scenarios: an order fulfilled locally, an order referred from primary care to a hospital or reference center, and an order originating directly at a hospital. See the Use Cases and Profiles pages of this guide for the full clinical and design rationale. |

