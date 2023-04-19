Instance: vbp-provider01
InstanceOf: Organization
Usage: #example
Description: "This is an example of Provider organization the Value-Based Performance Report is for."

* meta.extension[0].url = "http://hl7.org/fhir/StructureDefinition/instance-name"
* meta.extension[=].valueString = "Provider"
* meta.extension[+].url = "http://hl7.org/fhir/StructureDefinition/instance-description"
* meta.extension[=].valueMarkdown = "Provider organization the Value-Based Performance Report is for."
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization"
* active = true
* type = http://terminology.hl7.org/CodeSystem/organization-type#prov "Healthcare Provider"
* name = "GoodHealth"
* telecom[0].system = #phone
* telecom[=].value = "(+1) 123-456-7890"
* telecom[+].system = #email
* telecom[=].value = "contact@goodhealth.com"
* address.line = "100 Good Health Lane"
* address.city = "Amherst"
* address.state = "MA"
* address.postalCode = "01002"
* address.country = "USA"