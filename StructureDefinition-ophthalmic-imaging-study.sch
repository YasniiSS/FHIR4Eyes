<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile ImagingStudy
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:ImagingStudy</sch:title>
    <sch:rule context="f:ImagingStudy">
      <sch:assert test="count(f:modality) &gt;= 1">modality: minimum cardinality of 'modality' is 1</sch:assert>
      <sch:assert test="count(f:started) &gt;= 1">started: minimum cardinality of 'started' is 1</sch:assert>
      <sch:assert test="count(f:basedOn) &gt;= 1">basedOn: minimum cardinality of 'basedOn' is 1</sch:assert>
      <sch:assert test="count(f:basedOn) &lt;= 1">basedOn: maximum cardinality of 'basedOn' is 1</sch:assert>
      <sch:assert test="count(f:series) &gt;= 1">series: minimum cardinality of 'series' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
