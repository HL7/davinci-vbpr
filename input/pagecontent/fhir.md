
This implementation guide uses terminology, notations and design principles that are specific to FHIR. Before reading this implementation guide, it is important to be familiar with some of the basic principles of FHIR as well as general guidance on how to read FHIR specifications. Readers who are unfamiliar with FHIR are encouraged to read (or at least skim) the following prior to reading the rest of this implementation guide.

* [FHIR overview]({{site.data.fhir.path}}overview.html)
* [Developer's introduction]({{site.data.fhir.path}}overview-dev.html) (or [Clinical introduction]({{site.data.fhir.path}}overview-clinical.html))
* [FHIR data types]({{site.data.fhir.path}}datatypes.html)
* [Using codes]({{site.data.fhir.path}}terminologies.html)
* [References between resources]({{site.data.fhir.path}}references.html)
* [How to read resource & profile definitions]({{site.data.fhir.path}}formats.html) and additional [IG reading guidance](https://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html)
* [Base resource]({{site.data.fhir.path}}resource.html)

This implementation guide supports the [R4]({{site.data.fhir.path}}index.html) version of the FHIR standard.
* A complete list of the FHIR resources in the core specification can be found [here]({{site.data.fhir.path}}resourcelist.html). 

This implementation guide utilizes the following profiles. Implementers therefore need to familiarize themselves with those profiles as well. 

* profiles from the [US Core 6.1 (FHIR R4)]({{site.data.fhir.ver.uscore6}}) implementation guide,
* the [DEQM Summary MeasureReport](https://hl7.org/fhir/us/davinci-deqm/StructureDefinition-summary-measurereport-deqm.html) profile from the [Da Vinci Data Exchange for Quality Measures (DEQM)](http://hl7.org/fhir/us/davinci-deqm/ImplementationGuide/hl7.fhir.us.davinci-deqm) implementation guide STU5.0.0, and 
* the [CRMI Sharable Measure](https://hl7.org/fhir/uv/crmi/StructureDefinition-crmi-shareablemeasure.html) profile from the [Canonical Resource Management Infrastructure (CRMI)](https://hl7.org/fhir/uv/crmi/) (CRMI) implementation Guide STU1.0.0. 

The table below lists the resources profiled or otherwise used in this specification. Implementers should review the general descriptions and usage notes for these resources for additional implementation guidance.

<table class="grid">
  <thead>
    <tr>
      <th>Resource</th>
      <th>Usage</th>
    </tr>
  </thead>
  <tbody>
    <tr><td><a href="{{site.data.fhir.path}}capabilitystatement.html">CapabilityStatement</a></td><td>Used to define conformance expectations for this guide</td></tr>
    <tr><td><a href="{{site.data.fhir.path}}codesystem.html">CodeSystem</a></td><td>Used to define custom codes specific to this guide</td></tr>
    <tr><td><a href="{{site.data.fhir.path}}measure.html">Measure</a></td><td></td>Used to represent a VBP contract. Also used in example quality measure reports for measures.</tr>
    <tr><td><a href="{{site.data.fhir.path}}measurereport.html">MeasureReport</a></td><td>Used for value-based performance reports and for quality measure reports.</td></tr>
    <tr><td><a href="{{site.data.fhir.path}}organization.html">Organization</a></td><td>TODO: </td></a></td></tr>    
    <tr><td><a href="{{site.data.fhir.path}}searchparameter.html">SearchParameter</a></td><td>Used in defining additional search parameters used by this IG</td></tr>
    <tr><td><a href="{{site.data.fhir.path}}structuredefinition.html">StructureDefinition</a></td><td>Used when defining profiles and extensions in this guide</td></tr>
    <tr><td><a href="{{site.data.fhir.path}}valueset.html">ValueSet</a></td><td>Used to define a list of codes used by VBPR profiles and extensions</td></tr>    
  </tbody>
</table>


