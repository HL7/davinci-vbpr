Instance: vbp-provider02
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
* name = "Every Hospital"
* telecom[0].system = #phone
* telecom[=].value = "(+1) 456-123-7890"
* telecom[+].system = #email
* telecom[=].value = "contact@everyhospital.com"
* address.line = "100 Every Hospital Lane"
* address.city = "Amherst"
* address.state = "MA"
* address.postalCode = "01002"
* address.country = "USA"