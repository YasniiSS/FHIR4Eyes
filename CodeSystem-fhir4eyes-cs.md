# FHIR4Eyes Code System - FHIR4Eyes - A Proposed FHIR Implementation Guide for Ophthalmology v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FHIR4Eyes Code System**

## CodeSystem: FHIR4Eyes Code System 

| | |
| :--- | :--- |
| *Official URL*:https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs | *Version*:0.4.0 |
| Draft as of 2026-10-20 | *Computable Name*:FHIR4EyesCS |

 
Local, laterality-neutral codes for ophthalmic observations and components defined by FHIR4Eyes where no suitable side-neutral LOINC or SNOMED CT code has been verified. Open to replacement as external codes become available. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Binocular Finding Value Set](ValueSet-binocular-finding-vs.md)
* [Horizontal Deviation Direction Value Set](ValueSet-horizontal-deviation-direction-vs.md)
* [Normative Classification Value Set](ValueSet-normative-classification-vs.md)
* [Test Distance Category Value Set](ValueSet-test-distance-category-vs.md)
* [Vertical Deviation Direction Value Set](ValueSet-vertical-deviation-direction-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fhir4eyes-cs",
  "url" : "https://YasniiSS.github.io/fhir4eyes/CodeSystem/fhir4eyes-cs",
  "version" : "0.4.0",
  "name" : "FHIR4EyesCS",
  "title" : "FHIR4Eyes Code System",
  "status" : "draft",
  "experimental" : false,
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
  "description" : "Local, laterality-neutral codes for ophthalmic observations and components\ndefined by FHIR4Eyes where no suitable side-neutral LOINC or SNOMED CT code has been\nverified. Open to replacement as external codes become available.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001",
      "display" : "World"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 239,
  "concept" : [{
    "code" : "central-corneal-thickness",
    "display" : "Central corneal thickness",
    "definition" : "Central corneal thickness, independent of the eye measured. Eye-specific LOINC: 79825-6 (right) / 79826-4 (left)."
  },
  {
    "code" : "specular-microscopy-panel",
    "display" : "Corneal endothelial specular microscopy",
    "definition" : "Panel code for a corneal endothelial specular microscopy exam."
  },
  {
    "code" : "specular-capture-position",
    "display" : "Specular microscopy capture position",
    "definition" : "Location of the corneal capture (central, paracentral, peripheral)."
  },
  {
    "code" : "specular-analysis-method",
    "display" : "Specular microscopy analysis method",
    "definition" : "Type of analysis method. Eye-specific LOINC: 100086-8 (right) / 100155-1 (left)."
  },
  {
    "code" : "endothelial-cell-density",
    "display" : "Corneal endothelial cell density",
    "definition" : "Eye-specific LOINC: 100070-2 (right) / 100071-0 (left)."
  },
  {
    "code" : "endothelial-cells-counted",
    "display" : "Corneal endothelial cells counted",
    "definition" : "Eye-specific LOINC: 100076-9 (right) / 100077-7 (left)."
  },
  {
    "code" : "endothelial-cell-area-cv",
    "display" : "Corneal endothelial cell area coefficient of variation",
    "definition" : "Eye-specific LOINC: 100072-8 (right) / 100073-6 (left)."
  },
  {
    "code" : "endothelial-hexagonality",
    "display" : "Corneal endothelial hexagonality",
    "definition" : "Eye-specific LOINC: 100074-4 (right) / 100075-1 (left)."
  },
  {
    "code" : "endothelial-cell-area-min",
    "display" : "Corneal endothelial cell area, minimum",
    "definition" : "Eye-specific LOINC: 100078-5 (right) / 100079-3 (left)."
  },
  {
    "code" : "endothelial-cell-area-max",
    "display" : "Corneal endothelial cell area, maximum",
    "definition" : "Eye-specific LOINC: 100080-1 (right) / 100081-9 (left)."
  },
  {
    "code" : "endothelial-cell-area-mean",
    "display" : "Corneal endothelial cell area, mean",
    "definition" : "Eye-specific LOINC: 100082-7 (right) / 100083-5 (left)."
  },
  {
    "code" : "endothelial-cell-area-sd",
    "display" : "Corneal endothelial cell area, standard deviation",
    "definition" : "Eye-specific LOINC: 100084-3 (right) / 100085-0 (left)."
  },
  {
    "code" : "axial-length",
    "display" : "Axial length",
    "definition" : "Anteroposterior length of the eye (corneal vertex to retina/RPE), e.g. by optical or ultrasound biometry."
  },
  {
    "code" : "anterior-chamber-depth",
    "display" : "Anterior chamber depth",
    "definition" : "Distance from the cornea to the anterior lens surface."
  },
  {
    "code" : "lens-thickness",
    "display" : "Lens thickness",
    "definition" : "Axial thickness of the crystalline lens."
  },
  {
    "code" : "white-to-white",
    "display" : "White-to-white corneal diameter",
    "definition" : "Horizontal visible corneal diameter (limbus to limbus)."
  },
  {
    "code" : "keratometry-k1",
    "display" : "Keratometry K1 (flat)",
    "definition" : "Corneal power of the flattest meridian of the anterior corneal surface, in dioptres."
  },
  {
    "code" : "keratometry-k2",
    "display" : "Keratometry K2 (steep)",
    "definition" : "Corneal power of the steepest meridian of the anterior corneal surface, in dioptres."
  },
  {
    "code" : "keratometry-k1-radius",
    "display" : "Keratometry K1 radius of curvature",
    "definition" : "Radius of curvature of the flattest meridian of the anterior corneal surface, in millimetres."
  },
  {
    "code" : "keratometry-k2-radius",
    "display" : "Keratometry K2 radius of curvature",
    "definition" : "Radius of curvature of the steepest meridian of the anterior corneal surface, in millimetres."
  },
  {
    "code" : "corneal-astigmatism",
    "display" : "Corneal astigmatism (cylinder)",
    "definition" : "Corneal (keratometric) astigmatism, the difference between steep and flat meridian powers (K2 - K1) in dioptres, reported as a positive magnitude (plus-cylinder notation) at the steep meridian."
  },
  {
    "code" : "keratometric-index",
    "display" : "Keratometric index",
    "definition" : "Refractive index used to convert corneal radius of curvature into corneal power (e.g. 1.3375)."
  },
  {
    "code" : "pupil-diameter",
    "display" : "Pupil diameter",
    "definition" : "Diameter of the pupil at the time of the measurement."
  },
  {
    "code" : "pupil-dilated",
    "display" : "Pupil dilated",
    "definition" : "Whether the pupil was pharmacologically dilated at the time of the measurement."
  },
  {
    "code" : "mydriatic-agent",
    "display" : "Mydriatic agent",
    "definition" : "Mydriatic agent used to dilate the pupil, if any."
  },
  {
    "code" : "test-distance",
    "display" : "Testing distance",
    "definition" : "Distance between the patient and the test target (chart, fixation target) during the test, as a measured quantity. For a near/far category use test-distance-category."
  },
  {
    "code" : "correction-status",
    "display" : "Refractive correction status during test",
    "definition" : "Whether the test was performed with or without the patient's refractive correction."
  },
  {
    "code" : "ocular-biometry",
    "display" : "Ocular biometry",
    "definition" : "Panel code for an ocular biometry exam (optical or ultrasound), typically for IOL power calculation. Formula results are separate IOL formula result observations."
  },
  {
    "code" : "axial-length-measurement-type",
    "display" : "Axial length measurement type",
    "definition" : "Technique used to measure axial length: optical, ultrasound immersion or ultrasound contact."
  },
  {
    "code" : "axial-length-snr",
    "display" : "Axial length signal-to-noise ratio",
    "definition" : "Signal-to-noise ratio of the optical axial length measurement, a quality indicator."
  },
  {
    "code" : "axial-length-selection-method",
    "display" : "Axial length selection method",
    "definition" : "Method used to select the reported axial length from multiple measurements."
  },
  {
    "code" : "anterior-chamber-depth-definition",
    "display" : "Anterior chamber depth definition",
    "definition" : "Reference surfaces used for the ACD measurement (corneal epithelium or endothelium to anterior lens)."
  },
  {
    "code" : "lens-status",
    "display" : "Lens status",
    "definition" : "Status of the crystalline lens: phakic, pseudophakic or aphakic."
  },
  {
    "code" : "vitreous-status",
    "display" : "Vitreous status",
    "definition" : "Status of the vitreous body, relevant to the sound velocity used in ultrasound biometry."
  },
  {
    "code" : "keratometry-mean-radius",
    "display" : "Keratometry mean radius of curvature (R/SE)",
    "definition" : "Mean radius of curvature of the anterior corneal surface in mm, (K1 radius + K2 radius)/2, as reported in the R part of the biometer R/SE field. The dioptric mean (SE) is keratometry-km."
  },
  {
    "code" : "refractive-surgery-history",
    "display" : "Refractive surgery history",
    "definition" : "Prior corneal or refractive surgery of the eye, critical for IOL formula selection."
  },
  {
    "code" : "target-refraction",
    "display" : "Target refraction",
    "definition" : "Desired postoperative refraction used for IOL power calculation."
  },
  {
    "code" : "refractive-error-type",
    "display" : "Refractive error type",
    "definition" : "Type of refractive error of the eye."
  },
  {
    "code" : "measurement-data-source",
    "display" : "Measurement data source",
    "definition" : "Origin of the biometry measurement data (e.g. automatic, manually entered, from another device)."
  },
  {
    "code" : "vertex-distance",
    "display" : "Vertex distance",
    "definition" : "Distance between the back surface of a spectacle lens and the corneal apex."
  },
  {
    "code" : "iol-formula-result",
    "display" : "IOL power calculation formula result",
    "definition" : "Panel code for the result of one IOL power calculation formula applied to an ocular biometry exam."
  },
  {
    "code" : "iol-formula",
    "display" : "IOL power calculation formula",
    "definition" : "Formula used for the IOL power calculation (e.g. Barrett Universal II, SRK/T, Holladay 2, Kane)."
  },
  {
    "code" : "iol-lens-constant-type",
    "display" : "IOL lens constant type",
    "definition" : "Type of IOL optimization constant (e.g. A-constant, surgeon factor, ACD constant)."
  },
  {
    "code" : "iol-lens-constant-value",
    "display" : "IOL lens constant value",
    "definition" : "Value of the IOL optimization constant used for the calculation."
  },
  {
    "code" : "iol-model",
    "display" : "Suggested IOL model",
    "definition" : "Intraocular lens model suggested by this formula calculation."
  },
  {
    "code" : "iol-power",
    "display" : "Recommended IOL power",
    "definition" : "IOL power, in dioptres, recommended by this formula calculation."
  },
  {
    "code" : "iol-expected-refraction",
    "display" : "Predicted postoperative refraction",
    "definition" : "Refraction predicted by the formula for the recommended IOL power."
  },
  {
    "code" : "iol-power-table",
    "display" : "IOL power table",
    "definition" : "Range of IOL powers with the predicted refraction for each, as listed in the biometry report for this formula."
  },
  {
    "code" : "visual-acuity-scale",
    "display" : "Visual acuity notation scale",
    "definition" : "Notation in which the visual acuity value is expressed (e.g. Snellen fraction, decimal, LogMAR)."
  },
  {
    "code" : "pinhole-used",
    "display" : "Pinhole occluder used",
    "definition" : "Whether the visual acuity measurement was taken through a pinhole occluder."
  },
  {
    "code" : "corrected-intraocular-pressure",
    "display" : "Intraocular pressure corrected for central corneal thickness",
    "definition" : "Intraocular pressure adjusted for central corneal thickness, derived from an IOP reading and a pachymetry measurement. LOINC 96093-0/96092-2 (compensated IOP) exist but may not be equivalent to CCT-based correction; not used."
  },
  {
    "code" : "tension-curve",
    "display" : "Diurnal intraocular pressure tension curve",
    "definition" : "Panel grouping several intraocular pressure readings taken across a single day (diurnal / ambulatory tension curve)."
  },
  {
    "code" : "corneal-tomography-anterior-surface",
    "display" : "Corneal tomography, anterior surface analysis",
    "definition" : "Anterior corneal surface analysis component of a corneal tomography exam."
  },
  {
    "code" : "keratometry-kmax",
    "display" : "Maximum keratometry (Kmax)",
    "definition" : "Maximum keratometric power on the anterior corneal surface; key parameter for keratoconus detection and progression."
  },
  {
    "code" : "simulated-keratometry",
    "display" : "Simulated keratometry (SimK)",
    "definition" : "Simulated keratometry values (steep/flat) derived from the topographic/tomographic map."
  },
  {
    "code" : "corneal-radius-horizontal",
    "display" : "Horizontal corneal radius of curvature (Rh)",
    "definition" : "Corneal radius of curvature along the horizontal (0-180 degree) meridian; not necessarily a principal (K1/K2) meridian."
  },
  {
    "code" : "corneal-radius-vertical",
    "display" : "Vertical corneal radius of curvature (Rv)",
    "definition" : "Corneal radius of curvature along the vertical (90 degree) meridian; not necessarily a principal (K1/K2) meridian."
  },
  {
    "code" : "corneal-asphericity-q-anterior",
    "display" : "Corneal asphericity (Q-value), anterior surface",
    "definition" : "Asphericity (Q-value) of the anterior corneal surface; typical normal value about -0.26."
  },
  {
    "code" : "elevation-anterior",
    "display" : "Corneal elevation relative to best fit sphere, anterior surface",
    "definition" : "Elevation of the anterior corneal surface relative to its best fit sphere."
  },
  {
    "code" : "best-fit-sphere-radius-anterior",
    "display" : "Best fit sphere radius, anterior surface",
    "definition" : "Radius of the best fit sphere of the anterior corneal surface."
  },
  {
    "code" : "surface-regularity-index",
    "display" : "Surface Regularity Index (SRI)",
    "definition" : "Topographic index of local corneal surface regularity within the central zone."
  },
  {
    "code" : "surface-asymmetry-index",
    "display" : "Surface Asymmetry Index (SAI)",
    "definition" : "Topographic index of corneal power asymmetry between opposite hemimeridians."
  },
  {
    "code" : "inferior-superior-asymmetry",
    "display" : "Inferior-superior asymmetry value (I-S)",
    "definition" : "Difference in mean corneal power between inferior and superior regions; keratoconus screening value."
  },
  {
    "code" : "kisa-index",
    "display" : "KISA% index",
    "definition" : "KISA% keratoconus screening index combining central K, I-S value, astigmatism and skewed radial axis."
  },
  {
    "code" : "topographic-pattern",
    "display" : "Topographic pattern",
    "definition" : "Classification of the corneal topographic map pattern (regular, irregular, keratoconus, pellucid, post-LASIK, forme fruste)."
  },
  {
    "code" : "total-corneal-refractive-power",
    "display" : "Total corneal refractive power (TCRP)",
    "definition" : "Total corneal refractive power calculated by ray tracing through anterior and posterior corneal surfaces."
  },
  {
    "code" : "true-net-power",
    "display" : "True net corneal power (TNP)",
    "definition" : "True net corneal power calculated from anterior and posterior corneal curvature using Gaussian optics."
  },
  {
    "code" : "equivalent-keratometry-1mm",
    "display" : "Equivalent K reading (EKR), 1.0 mm zone",
    "definition" : "Holladay equivalent keratometry reading over a 1.0 mm zone."
  },
  {
    "code" : "equivalent-keratometry-3mm",
    "display" : "Equivalent K reading (EKR), 3.0 mm zone",
    "definition" : "Holladay equivalent keratometry reading over a 3.0 mm zone."
  },
  {
    "code" : "equivalent-keratometry-4-5mm",
    "display" : "Equivalent K reading (EKR), 4.5 mm zone",
    "definition" : "Holladay equivalent keratometry reading over a 4.5 mm zone; used for IOL calculation after refractive surgery."
  },
  {
    "code" : "corneal-mean-power-3mm-zone",
    "display" : "Mean corneal power, 3 mm zone",
    "definition" : "Mean corneal power within the central 3 mm zone."
  },
  {
    "code" : "corneal-astigmatism-power-3mm-zone",
    "display" : "Corneal astigmatism power, 3 mm zone",
    "definition" : "Corneal astigmatism power within the central 3 mm zone."
  },
  {
    "code" : "corneal-steep-axis-3mm-zone",
    "display" : "Corneal steep axis, 3 mm zone",
    "definition" : "Steep meridian axis within the central 3 mm zone."
  },
  {
    "code" : "corneal-flat-axis-3mm-zone",
    "display" : "Corneal flat axis, 3 mm zone",
    "definition" : "Flat meridian axis within the central 3 mm zone."
  },
  {
    "code" : "corneal-mean-power-5mm-zone",
    "display" : "Mean corneal power, 5 mm zone",
    "definition" : "Mean corneal power within the central 5 mm zone."
  },
  {
    "code" : "corneal-astigmatism-power-5mm-zone",
    "display" : "Corneal astigmatism power, 5 mm zone",
    "definition" : "Corneal astigmatism power within the central 5 mm zone."
  },
  {
    "code" : "corneal-steep-axis-5mm-zone",
    "display" : "Corneal steep axis, 5 mm zone",
    "definition" : "Steep meridian axis within the central 5 mm zone."
  },
  {
    "code" : "corneal-flat-axis-5mm-zone",
    "display" : "Corneal flat axis, 5 mm zone",
    "definition" : "Flat meridian axis within the central 5 mm zone."
  },
  {
    "code" : "total-corneal-astigmatism",
    "display" : "Total corneal astigmatism (tWFA)",
    "definition" : "Total corneal astigmatism including the posterior surface, derived from corneal wavefront analysis."
  },
  {
    "code" : "corneal-irregular-astigmatism",
    "display" : "Total corneal irregular astigmatism",
    "definition" : "Higher-order (irregular) component of total corneal astigmatism."
  },
  {
    "code" : "corneal-hoa-rms",
    "display" : "Corneal higher-order aberrations RMS",
    "definition" : "Root mean square of corneal higher-order wavefront aberrations."
  },
  {
    "code" : "angle-kappa",
    "display" : "Angle kappa",
    "definition" : "Angle between the visual axis and the pupillary axis."
  },
  {
    "code" : "angle-kappa-intercept",
    "display" : "Angle kappa intercept",
    "definition" : "Coordinates (x,y) of the angle kappa intercept relative to the pupil centre."
  },
  {
    "code" : "surgically-induced-astigmatism",
    "display" : "Surgically induced astigmatism (SIA)",
    "definition" : "Expected corneal astigmatism induced by the surgical incision, used in surgical planning."
  },
  {
    "code" : "predicted-postoperative-corneal-astigmatism",
    "display" : "Predicted postoperative corneal astigmatism",
    "definition" : "Expected residual corneal astigmatism after surgery, used in toric IOL planning."
  },
  {
    "code" : "toric-iol-optimal-axis",
    "display" : "Optimal toric IOL axis",
    "definition" : "Recommended implantation axis for a toric intraocular lens."
  },
  {
    "code" : "corneal-vertex-location",
    "display" : "Corneal vertex location",
    "definition" : "Position coordinates of the corneal vertex."
  },
  {
    "code" : "pupil-centroid-x",
    "display" : "Pupil centroid X coordinate",
    "definition" : "X-coordinate of the pupil centre."
  },
  {
    "code" : "pupil-centroid-y",
    "display" : "Pupil centroid Y coordinate",
    "definition" : "Y-coordinate of the pupil centre."
  },
  {
    "code" : "equivalent-pupil-radius",
    "display" : "Equivalent pupil radius",
    "definition" : "Radius of the equivalent circular pupil."
  },
  {
    "code" : "corneal-topography-map-type",
    "display" : "Corneal topography map type",
    "definition" : "Type of topographic map encoded (axial, tangential, elevation, refractive, pachymetry)."
  },
  {
    "code" : "corneal-analyzed-area",
    "display" : "Corneal analyzed area",
    "definition" : "Total area of the cornea analyzed."
  },
  {
    "code" : "corneal-eccentricity-index",
    "display" : "Corneal eccentricity index",
    "definition" : "Corneal eccentricity (shape factor)."
  },
  {
    "code" : "keratoconus-prediction-index",
    "display" : "Keratoconus prediction index (KPI)",
    "definition" : "Corneal keratoconus prediction index, distinct from KISA%."
  },
  {
    "code" : "potential-visual-acuity-decimal",
    "display" : "Decimal potential visual acuity",
    "definition" : "Estimated potential visual acuity (decimal) from the corneal surface."
  },
  {
    "code" : "corneal-tomography-posterior-surface",
    "display" : "Corneal tomography, posterior surface analysis",
    "definition" : "Posterior corneal surface analysis component of a corneal tomography exam."
  },
  {
    "code" : "posterior-keratometry-k1",
    "display" : "Posterior keratometry K1 (flat)",
    "definition" : "Keratometric power of the flattest meridian of the posterior corneal surface; a negative value in dioptres."
  },
  {
    "code" : "posterior-keratometry-k2",
    "display" : "Posterior keratometry K2 (steep)",
    "definition" : "Keratometric power of the steepest meridian of the posterior corneal surface; a negative value in dioptres."
  },
  {
    "code" : "posterior-keratometry-km",
    "display" : "Posterior keratometry Km (mean)",
    "definition" : "Mean keratometric power of the posterior corneal surface; a negative value in dioptres."
  },
  {
    "code" : "corneal-astigmatism-posterior",
    "display" : "Corneal astigmatism, posterior surface",
    "definition" : "Astigmatism of the posterior corneal surface, reported as a positive magnitude in dioptres (difference between posterior K2 and K1) with the posterior steep meridian as axis."
  },
  {
    "code" : "corneal-asphericity-q-posterior",
    "display" : "Corneal asphericity (Q-value), posterior surface",
    "definition" : "Asphericity (Q-value) of the posterior corneal surface."
  },
  {
    "code" : "elevation-posterior",
    "display" : "Corneal elevation relative to best fit sphere, posterior surface",
    "definition" : "Elevation of the posterior corneal surface relative to its best fit sphere."
  },
  {
    "code" : "best-fit-sphere-radius-posterior",
    "display" : "Best fit sphere radius, posterior surface",
    "definition" : "Radius of the best fit sphere of the posterior corneal surface."
  },
  {
    "code" : "corneal-tomography-pachymetry",
    "display" : "Corneal tomography, pachymetry analysis",
    "definition" : "Pachymetry (corneal thickness map) component of a corneal tomography exam."
  },
  {
    "code" : "corneal-thickness-pupil-centre",
    "display" : "Corneal thickness at pupil centre",
    "definition" : "Corneal thickness measured at the pupil centre; may differ from the thickness at the corneal apex."
  },
  {
    "code" : "corneal-thickness-thinnest",
    "display" : "Thinnest corneal thickness",
    "definition" : "Corneal thickness at the thinnest point of the pachymetry map."
  },
  {
    "code" : "corneal-thinnest-point-location",
    "display" : "Thinnest corneal point location",
    "definition" : "Location (x,y) of the thinnest corneal point relative to the reference centre."
  },
  {
    "code" : "corneal-volume",
    "display" : "Corneal volume",
    "definition" : "Total corneal volume within the analysed diameter."
  },
  {
    "code" : "corneal-tomography-anterior-chamber",
    "display" : "Corneal tomography, anterior chamber analysis",
    "definition" : "Anterior chamber analysis component of a corneal tomography exam."
  },
  {
    "code" : "anterior-chamber-volume",
    "display" : "Anterior chamber volume",
    "definition" : "Volume of the anterior chamber."
  },
  {
    "code" : "anterior-chamber-angle",
    "display" : "Anterior chamber angle",
    "definition" : "Iridocorneal (anterior chamber) angle width in degrees, as measured by the tomographer."
  },
  {
    "code" : "keratoconus-indices",
    "display" : "Keratoconus indices",
    "definition" : "Keratoconus screening and classification indices component of a corneal tomography exam."
  },
  {
    "code" : "bad-d",
    "display" : "Belin-Ambrosio total deviation (BAD-D)",
    "definition" : "Final overall deviation index (D) of the Belin-Ambrosio Enhanced Ectasia Display; key keratoconus screening index."
  },
  {
    "code" : "bad-df",
    "display" : "Belin-Ambrosio front elevation deviation (Df)",
    "definition" : "Deviation of anterior elevation relative to the enhanced best fit sphere (BAD component Df)."
  },
  {
    "code" : "bad-db",
    "display" : "Belin-Ambrosio back elevation deviation (Db)",
    "definition" : "Deviation of posterior elevation relative to the enhanced best fit sphere (BAD component Db)."
  },
  {
    "code" : "bad-dt",
    "display" : "Belin-Ambrosio thinnest point deviation (Dt)",
    "definition" : "Deviation of the thinnest corneal thickness from normal (BAD component Dt)."
  },
  {
    "code" : "bad-dy",
    "display" : "Belin-Ambrosio vertical asymmetry deviation (Dy)",
    "definition" : "Deviation of the Y-coordinate (vertical displacement) of the thinnest point (BAD component Dy)."
  },
  {
    "code" : "bad-classification",
    "display" : "Belin-Ambrosio classification",
    "definition" : "Classification of the Belin-Ambrosio display result (normal, suspicious, abnormal)."
  },
  {
    "code" : "enhanced-best-fit-sphere-radius-anterior",
    "display" : "Enhanced best fit sphere radius, anterior surface",
    "definition" : "Radius of the enhanced best fit sphere of the anterior corneal surface (BAD enhanced reference)."
  },
  {
    "code" : "enhanced-best-fit-sphere-radius-posterior",
    "display" : "Enhanced best fit sphere radius, posterior surface",
    "definition" : "Radius of the enhanced best fit sphere of the posterior corneal surface (BAD enhanced reference)."
  },
  {
    "code" : "amsler-krumeich-stage",
    "display" : "Amsler-Krumeich keratoconus stage",
    "definition" : "Classic Amsler-Krumeich keratoconus staging (I-IV)."
  },
  {
    "code" : "belin-abcd-grade",
    "display" : "Belin ABCD keratoconus grade",
    "definition" : "Belin ABCD keratoconus grading (anterior and posterior radius of curvature, thinnest pachymetry, distance visual acuity)."
  },
  {
    "code" : "index-surface-variance",
    "display" : "Index of surface variance (ISV)",
    "definition" : "Topometric index of the deviation of individual corneal radii from the mean."
  },
  {
    "code" : "index-vertical-asymmetry",
    "display" : "Index of vertical asymmetry (IVA)",
    "definition" : "Topometric index of superior-inferior corneal curvature asymmetry."
  },
  {
    "code" : "keratoconus-index",
    "display" : "Keratoconus index (KI)",
    "definition" : "Topometric ratio of central to peripheral corneal curvature."
  },
  {
    "code" : "center-keratoconus-index",
    "display" : "Center keratoconus index (CKI)",
    "definition" : "Topometric central corneal curvature index."
  },
  {
    "code" : "index-height-asymmetry",
    "display" : "Index of height asymmetry (IHA)",
    "definition" : "Topometric index of superior-inferior corneal elevation asymmetry."
  },
  {
    "code" : "index-height-decentration",
    "display" : "Index of height decentration (IHD)",
    "definition" : "Topometric index of the degree of vertical decentration of corneal elevation."
  },
  {
    "code" : "topographic-keratoconus-classification",
    "display" : "Topographic keratoconus classification (TKC)",
    "definition" : "Automated topographic keratoconus classification provided by the tomographer."
  },
  {
    "code" : "corneal-densitometry",
    "display" : "Corneal densitometry",
    "definition" : "Corneal densitometry (light backscatter) component of a corneal tomography exam."
  },
  {
    "code" : "corneal-densitometry-zone-0-2mm",
    "display" : "Corneal densitometry, 0-2 mm zone",
    "definition" : "Corneal light backscatter (densitometry, grayscale units) in the central 0-2 mm annular zone."
  },
  {
    "code" : "corneal-densitometry-zone-2-6mm",
    "display" : "Corneal densitometry, 2-6 mm zone",
    "definition" : "Corneal light backscatter (densitometry, grayscale units) in the paracentral 2-6 mm annular zone."
  },
  {
    "code" : "corneal-densitometry-zone-6-10mm",
    "display" : "Corneal densitometry, 6-10 mm zone",
    "definition" : "Corneal light backscatter (densitometry, grayscale units) in the peripheral 6-10 mm annular zone."
  },
  {
    "code" : "corneal-densitometry-total",
    "display" : "Corneal densitometry, total",
    "definition" : "Overall corneal light backscatter (densitometry, grayscale units)."
  },
  {
    "code" : "corneal-densitometry-anterior-layer",
    "display" : "Corneal densitometry, anterior layer",
    "definition" : "Corneal light backscatter (densitometry, grayscale units) of the anterior 120 um layer."
  },
  {
    "code" : "corneal-densitometry-central-layer",
    "display" : "Corneal densitometry, central layer",
    "definition" : "Corneal light backscatter (densitometry, grayscale units) of the central stromal layer."
  },
  {
    "code" : "corneal-densitometry-posterior-layer",
    "display" : "Corneal densitometry, posterior layer",
    "definition" : "Corneal light backscatter (densitometry, grayscale units) of the posterior 60 um layer."
  },
  {
    "code" : "keratometry-k1-axis",
    "display" : "Keratometry K1 axis",
    "definition" : "Orientation of the flat meridian."
  },
  {
    "code" : "keratometry-k2-axis",
    "display" : "Keratometry K2 axis",
    "definition" : "Orientation of the steep meridian."
  },
  {
    "code" : "keratometry-km",
    "display" : "Keratometry Km (mean)",
    "definition" : "Mean keratometry, (K1+K2)/2."
  },
  {
    "code" : "pachymetric-progression",
    "display" : "Pachymetric progression index (BAD Dp)",
    "definition" : "Rate of corneal thickness increase from the thinnest point toward the periphery; the pachymetric progression deviation (Dp) of the Belin-Ambrosio display."
  },
  {
    "code" : "radius-minimum-curvature",
    "display" : "Minimum radius of curvature (Rmin)",
    "definition" : "Radius of curvature at the steepest point of the corneal surface."
  },
  {
    "code" : "radius-minimum-sagittal",
    "display" : "Minimum sagittal radius of curvature (Rmin)",
    "definition" : "Minimum radius of sagittal (axial) curvature, i.e. the steepest point of the sagittal curvature map (Pentacam topometric index Rmin)."
  },
  {
    "code" : "signal-strength",
    "display" : "Scan signal strength / quality",
    "definition" : "Device-reported scan signal strength or quality score."
  },
  {
    "code" : "retinal-thickness-definition",
    "display" : "Retinal thickness definition",
    "definition" : "Boundaries used to define a retinal or RNFL thickness measurement (e.g. ILM to RPE, ILM to Bruch's membrane, ILM to RNFL outer boundary)."
  },
  {
    "code" : "normative-deviation-category",
    "display" : "Normative database deviation category",
    "definition" : "Classification of a measurement against the device normative database (e.g. within normal limits, borderline, outside normal limits)."
  },
  {
    "code" : "pupil-dilation-degree",
    "display" : "Degree of pupil dilation",
    "definition" : "Degree of pupil dilation, expressed as pupil diameter in mm."
  },
  {
    "code" : "central-subfield-thickness-min",
    "display" : "Central subfield thickness, minimum",
    "definition" : "Minimum retinal thickness measured within the central (1 mm) ETDRS subfield."
  },
  {
    "code" : "central-subfield-thickness-max",
    "display" : "Central subfield thickness, maximum",
    "definition" : "Maximum retinal thickness measured within the central (1 mm) ETDRS subfield."
  },
  {
    "code" : "macular-subfield-volume",
    "display" : "Macular ETDRS subfield volume",
    "definition" : "Retinal volume of a single ETDRS grid subfield; the subfield is identified by the component context. For the total grid volume use LOINC 57118-2."
  },
  {
    "code" : "etdrs-grid-diameters",
    "display" : "ETDRS grid circle diameters",
    "definition" : "Diameters of the concentric circles of the ETDRS measurement grid used for the analysis (usually 1, 3 and 6 mm)."
  },
  {
    "code" : "anatomic-reference-point",
    "display" : "Ophthalmic anatomic reference point",
    "definition" : "Anatomic structure used as the reference point to centre the measurement grid (e.g. fovea, optic disc centre)."
  },
  {
    "code" : "optic-cup-area",
    "display" : "Optic cup area",
    "definition" : "Area of the optic cup from optic nerve head analysis, in mm2."
  },
  {
    "code" : "optic-cup-volume",
    "display" : "Optic cup volume",
    "definition" : "Volume of the optic cup from optic nerve head analysis, in mm3."
  },
  {
    "code" : "neuroretinal-rim-volume",
    "display" : "Neuroretinal rim volume",
    "definition" : "Volume of the neuroretinal rim from optic nerve head analysis, in mm3."
  },
  {
    "code" : "cup-disc-ratio-horizontal",
    "display" : "Cup-to-disc ratio, horizontal",
    "definition" : "Ratio of horizontal optic cup diameter to horizontal optic disc diameter."
  },
  {
    "code" : "cup-disc-ratio-vertical",
    "display" : "Cup-to-disc ratio, vertical",
    "definition" : "Ratio of vertical optic cup diameter to vertical optic disc diameter."
  },
  {
    "code" : "optic-disc-diameter-horizontal",
    "display" : "Optic disc diameter, horizontal",
    "definition" : "Horizontal diameter of the optic disc, in mm."
  },
  {
    "code" : "optic-disc-diameter-vertical",
    "display" : "Optic disc diameter, vertical",
    "definition" : "Vertical diameter of the optic disc, in mm."
  },
  {
    "code" : "optic-disc-diameter-mean",
    "display" : "Optic disc diameter, mean",
    "definition" : "Mean diameter of the optic disc, in mm."
  },
  {
    "code" : "optic-cup-diameter-horizontal",
    "display" : "Optic cup diameter, horizontal",
    "definition" : "Horizontal diameter of the optic cup, in mm."
  },
  {
    "code" : "optic-cup-diameter-vertical",
    "display" : "Optic cup diameter, vertical",
    "definition" : "Vertical diameter of the optic cup, in mm."
  },
  {
    "code" : "optic-cup-diameter-mean",
    "display" : "Optic cup diameter, mean",
    "definition" : "Mean diameter of the optic cup, in mm."
  },
  {
    "code" : "optic-cup-depth-mean",
    "display" : "Optic cup depth, mean",
    "definition" : "Mean depth of the optic cup from optic nerve head analysis, in mm."
  },
  {
    "code" : "optic-cup-depth-max",
    "display" : "Optic cup depth, maximum",
    "definition" : "Maximum depth of the optic cup from optic nerve head analysis, in mm."
  },
  {
    "code" : "optic-disc-vertical-horizontal-ratio",
    "display" : "Optic disc vertical-to-horizontal diameter ratio",
    "definition" : "Ratio of vertical to horizontal optic disc diameter (disc ovality)."
  },
  {
    "code" : "optic-cup-vertical-horizontal-ratio",
    "display" : "Optic cup vertical-to-horizontal diameter ratio",
    "definition" : "Ratio of vertical to horizontal optic cup diameter."
  },
  {
    "code" : "rim-disc-area-ratio",
    "display" : "Neuroretinal rim-to-disc area ratio",
    "definition" : "Ratio of neuroretinal rim area to optic disc area."
  },
  {
    "code" : "neuroretinal-rim-absence-extent",
    "display" : "Angular extent of neuroretinal rim absence",
    "definition" : "Angular (circumferential) extent, in degrees, over which the neuroretinal rim is absent; input to DDLS staging."
  },
  {
    "code" : "disc-damage-likelihood-scale",
    "display" : "Disc Damage Likelihood Scale (DDLS) stage",
    "definition" : "Disc Damage Likelihood Scale stage (1-10), based on the narrowest rim width or angular extent of rim absence, adjusted for disc size."
  },
  {
    "code" : "rnfl-symmetry",
    "display" : "RNFL inter-eye symmetry",
    "definition" : "Symmetry of the RNFL thickness profile between right and left eyes (e.g. Cirrus RNFL symmetry)."
  },
  {
    "code" : "rnfl-thickness-mean-tsnit",
    "display" : "Mean RNFL thickness (TSNIT average)",
    "definition" : "Average peripapillary RNFL thickness across the temporal-superior-nasal-inferior-temporal (TSNIT) profile, laterality-neutral. Instances may add an eye-specific LOINC as an optional second coding (candidates 86301-9 right / 86290-4 left, to be verified)."
  },
  {
    "code" : "rnfl-thickness-tsnit-sd",
    "display" : "RNFL TSNIT profile standard deviation",
    "definition" : "Standard deviation of peripapillary RNFL thickness across the TSNIT profile."
  },
  {
    "code" : "visual-field-static-perimetry",
    "display" : "Automated static perimetry (visual field)",
    "definition" : "Panel code for an automated static threshold perimetry exam (e.g. Humphrey Field Analyzer)."
  },
  {
    "code" : "visual-field-test-pattern",
    "display" : "Visual field test pattern",
    "definition" : "Pattern of tested points (e.g. 24-2, 30-2, 10-2, Esterman)."
  },
  {
    "code" : "visual-field-mean-deviation",
    "display" : "Visual field mean deviation (MD)",
    "definition" : "Weighted average deviation of measured threshold sensitivity from age-corrected normal values, in dB."
  },
  {
    "code" : "visual-field-pattern-standard-deviation",
    "display" : "Visual field pattern standard deviation (PSD)",
    "definition" : "Index of localized sensitivity loss (non-uniformity of the deviation from normal), in dB."
  },
  {
    "code" : "visual-field-index",
    "display" : "Visual field index (VFI)",
    "definition" : "Global index of visual function expressed as a percentage of age-normal field."
  },
  {
    "code" : "visual-field-screening-mode",
    "display" : "Visual field screening test mode",
    "definition" : "Type of screening test mode used."
  },
  {
    "code" : "visual-field-fixation-strategy",
    "display" : "Visual field fixation strategy",
    "definition" : "Method used to monitor patient fixation (e.g. blind spot monitoring, gaze tracking)."
  },
  {
    "code" : "perimetry-stimulus-size",
    "display" : "Perimetry stimulus size",
    "definition" : "Size of the test stimulus (e.g. Goldmann III)."
  },
  {
    "code" : "perimetry-stimulus-color",
    "display" : "Perimetry stimulus color",
    "definition" : "Color of the test stimulus light."
  },
  {
    "code" : "perimetry-background-luminance",
    "display" : "Perimetry background luminance",
    "definition" : "Luminance of the perimeter bowl background (standard 31.5 asb)."
  },
  {
    "code" : "perimetry-max-stimulus-luminance",
    "display" : "Perimetry maximum stimulus luminance",
    "definition" : "Maximum luminance of the test stimulus."
  },
  {
    "code" : "perimetry-stimulus-duration",
    "display" : "Perimetry stimulus presentation time",
    "definition" : "Presentation time of each stimulus (standard 200 ms)."
  },
  {
    "code" : "visual-field-horizontal-extent",
    "display" : "Visual field horizontal extent",
    "definition" : "Horizontal extent of the tested visual field, in degrees."
  },
  {
    "code" : "visual-field-vertical-extent",
    "display" : "Visual field vertical extent",
    "definition" : "Vertical extent of the tested visual field, in degrees."
  },
  {
    "code" : "visual-field-shape",
    "display" : "Visual field shape",
    "definition" : "Shape of the tested visual field (circle or rectangle)."
  },
  {
    "code" : "foveal-sensitivity",
    "display" : "Foveal threshold sensitivity",
    "definition" : "Threshold sensitivity measured at the fovea, in dB."
  },
  {
    "code" : "visual-field-test-duration",
    "display" : "Visual field test duration",
    "definition" : "Total duration of the visual field test."
  },
  {
    "code" : "visual-field-test-point-count",
    "display" : "Number of visual field test points",
    "definition" : "Total number of points tested; depends on the test pattern."
  },
  {
    "code" : "correction-lens-power",
    "display" : "Correction lens power",
    "definition" : "Spherical power of the trial/correction lens used during the test, in diopters."
  },
  {
    "code" : "fixating-eye",
    "display" : "Fixating eye",
    "definition" : "The eye that was fixating the target during the measurement. Answer is the eye (e.g. SNOMED CT 24028007 Right / 7771000 Left)."
  },
  {
    "code" : "strabismus-exam",
    "display" : "Strabismus examination",
    "definition" : "Panel code for a strabismus examination grouping whichever sub-tests were performed (cover test, motility, near point of convergence, stereopsis, prism cover test, Krimsky, etc.) via hasMember."
  },
  {
    "code" : "cover-test",
    "display" : "Cover test",
    "definition" : "Cover test (cover-uncover and/or alternate cover) assessing the presence and type of manifest or latent ocular deviation."
  },
  {
    "code" : "ocular-motility",
    "display" : "Ocular motility assessment",
    "definition" : "Assessment of extraocular muscle function (e.g. hypofunction or hyperfunction) of a specific muscle of one eye."
  },
  {
    "code" : "near-point-of-convergence",
    "display" : "Near point of convergence",
    "definition" : "Near point of convergence (PPC), recorded as a distance in centimetres or as a qualitative finding."
  },
  {
    "code" : "convergence-assessment",
    "display" : "Convergence assessment",
    "definition" : "Qualitative assessment of convergence ability (e.g. good, fair, insufficient, poor)."
  },
  {
    "code" : "stereopsis-test",
    "display" : "Stereopsis test",
    "definition" : "Stereoacuity test result (e.g. Titmus, Randot), qualitative or in seconds of arc."
  },
  {
    "code" : "prism-cover-test",
    "display" : "Prism cover test",
    "definition" : "Panel code for a prism cover test measuring ocular deviation in prism diopters across one or more gaze positions."
  },
  {
    "code" : "krimsky-test",
    "display" : "Krimsky test",
    "definition" : "Panel code for a Krimsky test (corneal light reflex centred with prisms) measuring ocular deviation in prism diopters across one or more gaze positions."
  },
  {
    "code" : "hirschberg-test",
    "display" : "Hirschberg test",
    "definition" : "Panel code for a Hirschberg corneal light reflex test estimating the angle of deviation across one or more gaze positions."
  },
  {
    "code" : "red-filter-light-test",
    "display" : "Red filter plus light test",
    "definition" : "Panel code for a red filter plus light test assessing fusion, suppression or diplopia across one or more gaze positions."
  },
  {
    "code" : "worth-4-dot-test",
    "display" : "Worth 4 dot test",
    "definition" : "Panel code for a Worth 4 dot test assessing fusion, suppression or diplopia across one or more gaze positions."
  },
  {
    "code" : "gaze-position-measurement",
    "display" : "Gaze position measurement",
    "definition" : "A single measurement or finding taken at one gaze position (e.g. primary position, right gaze) within a prism cover, Krimsky, Hirschberg, red filter or Worth 4 dot test."
  },
  {
    "code" : "extraocular-muscle",
    "display" : "Extraocular muscle assessed",
    "definition" : "The extraocular muscle being assessed (one of the four rectus or two oblique muscles). Answer is a CodeableConcept naming the muscle."
  },
  {
    "code" : "extraocular-muscle-function",
    "display" : "Extraocular muscle function",
    "definition" : "Functional finding for the assessed extraocular muscle (e.g. normal, hypofunction, hyperfunction)."
  },
  {
    "code" : "stereopsis-test-type",
    "display" : "Stereopsis test type",
    "definition" : "Which stereoacuity test was used (e.g. Titmus fly, Randot, Lang, TNO); affects interpretation of the result."
  },
  {
    "code" : "horizontal-deviation",
    "display" : "Horizontal ocular deviation",
    "definition" : "Magnitude of the horizontal ocular deviation at a gaze position, always a positive magnitude, in prism diopters (or degrees for a Hirschberg estimate); the direction (eso/exo) is recorded separately."
  },
  {
    "code" : "vertical-deviation",
    "display" : "Vertical ocular deviation",
    "definition" : "Magnitude of the vertical ocular deviation at a gaze position, always a positive magnitude, in prism diopters; the direction (hyper/hypo) is recorded separately."
  },
  {
    "code" : "gaze-position",
    "display" : "Gaze position",
    "definition" : "The gaze position (direction of gaze) at which a strabismus measurement was taken, e.g. primary position, right gaze, up-and-right gaze."
  },
  {
    "code" : "gaze-position-finding",
    "display" : "Finding at gaze position",
    "definition" : "Qualitative finding at a gaze position (e.g. Hirschberg reflex displacement, fusion, suppression or diplopia on red filter or Worth 4 dot testing)."
  },
  {
    "code" : "within-normal-limits",
    "display" : "Within normal limits",
    "definition" : "The measurement or analysis falls within the normal range of the device normative (age-matched reference) database (typically p >= 5%)."
  },
  {
    "code" : "borderline",
    "display" : "Borderline",
    "definition" : "The measurement or analysis falls in the borderline range of the device normative database (typically 1% <= p < 5%)."
  },
  {
    "code" : "outside-normal-limits",
    "display" : "Outside normal limits",
    "definition" : "The measurement or analysis falls outside the normal range of the device normative database (typically p < 1%)."
  },
  {
    "code" : "rnfl-thickness-superior",
    "display" : "RNFL average thickness, superior quadrant",
    "definition" : "Average peripapillary retinal nerve fiber layer thickness in the superior quadrant of the circumpapillary scan."
  },
  {
    "code" : "rnfl-thickness-inferior",
    "display" : "RNFL average thickness, inferior quadrant",
    "definition" : "Average peripapillary retinal nerve fiber layer thickness in the inferior quadrant of the circumpapillary scan."
  },
  {
    "code" : "rnfl-thickness-nasal",
    "display" : "RNFL average thickness, nasal quadrant",
    "definition" : "Average peripapillary retinal nerve fiber layer thickness in the nasal quadrant of the circumpapillary scan."
  },
  {
    "code" : "rnfl-thickness-temporal",
    "display" : "RNFL average thickness, temporal quadrant",
    "definition" : "Average peripapillary retinal nerve fiber layer thickness in the temporal quadrant of the circumpapillary scan."
  },
  {
    "code" : "glaucoma-hemifield-test",
    "display" : "Glaucoma Hemifield Test result",
    "definition" : "Result of the Glaucoma Hemifield Test, comparing mirror-image superior and inferior sectors of the visual field (within normal limits, borderline, outside normal limits, general reduction of sensitivity, abnormally high sensitivity)."
  },
  {
    "code" : "fixation-losses",
    "display" : "Fixation losses",
    "definition" : "Number of fixation losses (responses to stimuli presented in the physiological blind spot) relative to the number of fixation checks performed."
  },
  {
    "code" : "false-positive-errors",
    "display" : "False positive errors",
    "definition" : "Percentage of false positive responses (responses without a stimulus being presented); a reliability index of the visual field test."
  },
  {
    "code" : "false-negative-errors",
    "display" : "False negative errors",
    "definition" : "Percentage of false negative responses (no response to a supra-threshold stimulus at a previously seen location); a reliability index of the visual field test."
  },
  {
    "code" : "test-distance-category",
    "display" : "Testing distance category (near/far)",
    "definition" : "Categorical testing distance (near or far) at which a strabismus or binocular vision test was performed. Answer is a CodeableConcept (near / far). Distinct from test-distance, which records the testing distance as a Quantity."
  },
  {
    "code" : "near",
    "display" : "Near",
    "definition" : "Near testing distance, approximately 33-40 cm."
  },
  {
    "code" : "far",
    "display" : "Far",
    "definition" : "Far (distance) testing distance, approximately 6 m (20 ft)."
  },
  {
    "code" : "horizontal-deviation-direction",
    "display" : "Horizontal deviation direction",
    "definition" : "Direction of the horizontal ocular deviation at a gaze position (esodeviation, exodeviation, or orthophoria when no horizontal deviation is present). The magnitude is recorded separately as a positive value in horizontal-deviation."
  },
  {
    "code" : "vertical-deviation-direction",
    "display" : "Vertical deviation direction",
    "definition" : "Direction of the vertical ocular deviation of the deviating eye at a gaze position (hyperdeviation or hypodeviation). The magnitude is recorded separately as a positive value in vertical-deviation."
  },
  {
    "code" : "esodeviation",
    "display" : "Esodeviation",
    "definition" : "Inward (nasal) horizontal deviation of the eye; covers esotropia and esophoria."
  },
  {
    "code" : "exodeviation",
    "display" : "Exodeviation",
    "definition" : "Outward (temporal) horizontal deviation of the eye; covers exotropia and exophoria."
  },
  {
    "code" : "orthophoria",
    "display" : "Orthophoria",
    "definition" : "Absence of any manifest or latent ocular deviation; the visual axes remain aligned under cover testing."
  },
  {
    "code" : "hyperdeviation",
    "display" : "Hyperdeviation",
    "definition" : "Upward vertical deviation of the deviating eye relative to the fellow eye; covers hypertropia and hyperphoria."
  },
  {
    "code" : "hypodeviation",
    "display" : "Hypodeviation",
    "definition" : "Downward vertical deviation of the deviating eye relative to the fellow eye; covers hypotropia and hypophoria."
  },
  {
    "code" : "fusion",
    "display" : "Fusion",
    "definition" : "Sensory fusion: the images of both eyes are combined into a single percept (e.g. a single pinkish light on the red filter plus light test, four lights on the Worth 4 dot test). SNOMED CT 78513008 Fusion binocular vision is an observable entity, not a finding, so it is not used as an answer."
  },
  {
    "code" : "corneal-reflex-centered",
    "display" : "Corneal light reflex centered",
    "definition" : "On corneal light reflex (Hirschberg) testing, the reflex is centered on the pupil of the eye assessed, consistent with no manifest deviation of that eye."
  },
  {
    "code" : "corneal-reflex-displaced-nasal",
    "display" : "Corneal light reflex displaced nasally",
    "definition" : "On corneal light reflex (Hirschberg) testing, the reflex in the eye assessed is displaced nasally from the pupil centre, indicating an exodeviation of that eye."
  },
  {
    "code" : "corneal-reflex-displaced-temporal",
    "display" : "Corneal light reflex displaced temporally",
    "definition" : "On corneal light reflex (Hirschberg) testing, the reflex in the eye assessed is displaced temporally from the pupil centre, indicating an esodeviation of that eye."
  },
  {
    "code" : "corneal-reflex-displaced-superior",
    "display" : "Corneal light reflex displaced superiorly",
    "definition" : "On corneal light reflex (Hirschberg) testing, the reflex in the eye assessed is displaced superiorly from the pupil centre, indicating a hypodeviation of that eye."
  },
  {
    "code" : "corneal-reflex-displaced-inferior",
    "display" : "Corneal light reflex displaced inferiorly",
    "definition" : "On corneal light reflex (Hirschberg) testing, the reflex in the eye assessed is displaced inferiorly from the pupil centre, indicating a hyperdeviation of that eye."
  }]
}

```
