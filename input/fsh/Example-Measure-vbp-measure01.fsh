Instance: vbp-measure01
InstanceOf: Measure
Usage: #example
Description: "This is an example measure for the *VBP Measure* profile."
* meta.profile = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/vbp-measure"
* meta.extension[0].url = "http://hl7.org/fhir/StructureDefinition/instance-name"
* meta.extension[=].valueString = "Payer"
* meta.extension[+].url = "http://hl7.org/fhir/StructureDefinition/instance-description"
* meta.extension[=].valueMarkdown = "This is an example measure for the *VBP Measure* profile."

* url = "https://build.fhir.org/ig/HL7/davinci-vbpr/Measure-vbp-measure01"
* identifier.use = #temp
* identifier.system = "http://example.org/fhir/server"
* identifier.value = "ex-vbp-measure01"
* version = "1"
* name = "VbprMeasureExample01"
* title = "Example Value-Based Contract - ABC Payer and GoodHealth"
* status = #active
* description = "Example Value-Based Contract between ABC Payer and GoodHealth"
* effectivePeriod.start = "2022-01-01"
* effectivePeriod.end = "2024-12-31"
* extension[0].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/lob"
* extension[=].valueCodeableConcept = https://nahdo.org/sopt#1 "MEDICARE"
* extension[=].valueCodeableConcept.text = "MEDICARE"
* extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/program-model"
* extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/hcplan-framework#3A "Category 3A"
* extension[=].valueCodeableConcept.text = "Category 3A"
* extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/payment-stream"
* extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/payment-stream#ssq
* extension[=].valueCodeableConcept.text = "Shared savings gated on quality"
* extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/payment-stream"
* extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/payment-stream#ccf
* extension[=].valueCodeableConcept.text = "Care coordination fee"
* extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/payment-stream"
* extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/payment-stream#qip
* extension[=].valueCodeableConcept.text = "Quality incentive payment"
//* extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/payment-stream"
//* extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/payment-stream#p4p
//* extension[=].valueCodeableConcept.text = "Pay for performance"