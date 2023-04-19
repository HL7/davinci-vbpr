Instance: vbp-payer01
InstanceOf: Organization
Usage: #example
Description: "This is an example payer"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization"
* meta.extension[0].url = "http://hl7.org/fhir/StructureDefinition/instance-name"
* meta.extension[=].valueString = "Payer"
* meta.extension[+].url = "http://hl7.org/fhir/StructureDefinition/instance-description"
* meta.extension[=].valueMarkdown = "This is an example payer."

* active = true
* type = http://terminology.hl7.org/CodeSystem/organization-type#pay "payer"
* name = "ABC Payer"
* telecom[0].system = #phone
* telecom[=].value = "(+1) 800-123-4567"
* telecom[+].system = #email
* telecom[=].value = "contact@ABCPayer.com"
* address.line = "100 ABC Payer Lane"
* address.city = "Amherst"
* address.state = "MA"
* address.postalCode = "01002"
* address.country = "USA"