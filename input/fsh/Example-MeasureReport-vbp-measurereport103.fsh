Instance: vbp-measurereport103
InstanceOf: MeasureReport
Usage: #example
Description: "This is an example Value-Based Performance MeasureReport for the *VBP MeasureReport* profile., 
which includes quality measures and alternative measures."

* meta.profile = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/vbp-performance-measurereport"
* meta.extension[0].url = "http://hl7.org/fhir/StructureDefinition/instance-name"
* meta.extension[=].valueString = "VBP MeasureReport Example 103"
* meta.extension[+].url = "http://hl7.org/fhir/StructureDefinition/instance-description"
* meta.extension[=].valueMarkdown = "This is an example Value-Based Performance MeasureReport for the *VBP MeasureReport* profile., which includes quality measures and alternative measures."

//* extension.url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/paid-through-date"
//* extension.valueDate = "2022-12-31"

* extension[0].url = "http://hl7.org/fhir/StructureDefinition/measurereport-category"
* extension[=].valueCodeableConcept = http://hl7.org/fhir/CodeSystem/measurereport-category#vbp

* status = #complete
* type = #summary
* measure = "https://build.fhir.org/ig/HL7/davinci-vbpr/Measure-vbp-measure02"
* subject.display = "Every Hospital"
* subject.extension.url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/organization-subject"
* subject.extension.valueReference = Reference(Organization/vbp-provider02)
* date = "2022-12-31"
* reporter = Reference(Organization/vbp-payer01)
* period.start = "2020-01-01"
* period.end = "2021-03-31"

* evaluatedResource[0] = Reference(MeasureReport/quality-measurereport20)
* evaluatedResource[+] = Reference(MeasureReport/quality-measurereport21)
* evaluatedResource[+] = Reference(MeasureReport/quality-measurereport22)
* evaluatedResource[+] = Reference(MeasureReport/quality-measurereport23)
* evaluatedResource[+] = Reference(MeasureReport/quality-measurereport24)
* evaluatedResource[+] = Reference(MeasureReport/quality-measurereport25)