Instance: vbp-measurereport104
InstanceOf: MeasureReport
Usage: #example
Description: "This is an example Value-Based Performance MeasureReport for the *VBP MeasureReport* profile."

* meta.profile = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/vbp-performance-measurereport"
* meta.extension[0].url = "http://hl7.org/fhir/StructureDefinition/instance-name"
* meta.extension[=].valueString = "VBP MeasureReport Example 104"
* meta.extension[+].url = "http://hl7.org/fhir/StructureDefinition/instance-description"
* meta.extension[=].valueMarkdown = "This is an example Value-Based Performance MeasureReport for the *VBP MeasureReport* profile."

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
* date = "2023-05-31"
* reporter = Reference(Organization/vbp-payer01)
* period.start = "2022-01-01"
* period.end = "2022-08-31"

* group[0].id = "group-01"
* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric#eligible-member
* group[=].code.text = "Eligible member"
* group[=].measureScore.value = 2914

* group[+].id = "group-02"
//* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric
* group[=].code.text = "Hierarchical Condition Category"
* group[=].measureScore.extension.url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/alternate-measurescore"
* group[=].measureScore.extension.valueMoney.value = 500
* group[=].measureScore.extension.valueMoney.currency = #USD

* group[+].id = "group-03"
//* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric
* group[=].code.text = "Preventive Care Visits"
* group[=].measureScore.extension.url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/alternate-measurescore"
* group[=].measureScore.extension.valueMoney.value = 180
* group[=].measureScore.extension.valueMoney.currency = #USD

* group[+].id = "group-04"
//* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric
* group[=].code.text = "Star Performance"
* group[=].measureScore.extension.url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/alternate-measurescore"
* group[=].measureScore.extension.valueMoney.value = 132884
* group[=].measureScore.extension.valueMoney.currency = #USD

* group[+].id = "group-05"
//* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric
* group[=].code.text = "Advance Care Planning"
* group[=].measureScore.extension.url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/alternate-measurescore"
* group[=].measureScore.extension.valueMoney.value = 100
* group[=].measureScore.extension.valueMoney.currency = #USD

* group[+].id = "group-06"
//* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric
* group[=].code.text = "Encounter Palliative Care"
* group[=].measureScore.extension.url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/alternate-measurescore"
* group[=].measureScore.extension.valueMoney.value = 1200
* group[=].measureScore.extension.valueMoney.currency = #USD

* group[+].id = "group-07"
//* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric
* group[=].code.text = "Supplemental Data"
* group[=].measureScore.extension.url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/alternate-measurescore"
* group[=].measureScore.extension.valueMoney.value = 0
* group[=].measureScore.extension.valueMoney.currency = #USD

* group[+].id = "group-08"
//* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric
* group[=].code.text = "Estimated YTD Grand Total"
* group[=].measureScore.extension.url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/alternate-measurescore"
* group[=].measureScore.extension.valueMoney.value = 134864
* group[=].measureScore.extension.valueMoney.currency = #USD

* group[+].id = "group-09"
//* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric
* group[=].code.text = "Total gaps"
* group[=].measureScore.value = 2

* group[+].id = "group-10"
//* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric
* group[=].code.text = "Cloosed gaps"
* group[=].measureScore.value = 2

* group[+].id = "group-11"
//* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric
* group[=].code.text = "Minimum Base Incentive Target Percentage"
* group[=].measureScore = 80 '%'

* group[+].id = "group-12"
//* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric
* group[=].code.text = "Base Incentive Per Member"
* group[=].measureScore.extension.url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/alternate-measurescore"
* group[=].measureScore.extension.valueMoney.value = 125
* group[=].measureScore.extension.valueMoney.currency = #USD

* group[+].id = "group-13"
//* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric
* group[=].code.text = "Early Performance Bonus Met"
* group[=].measureScore.extension.url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/alternate-measurescore"
* group[=].measureScore.extension.valueBoolean = false

* group[+].id = "group-14"
//* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric
* group[=].code.text = "Estimated Bonus Incentive Per Member"
* group[=].measureScore.extension.url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/alternate-measurescore"
* group[=].measureScore.extension.valueMoney.value = 0
* group[=].measureScore.extension.valueMoney.currency = #USD

* group[+].id = "group-15"
//* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric
* group[=].code.text = "Estimate Incentive"
* group[=].measureScore.extension.url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/alternate-measurescore"
* group[=].measureScore.extension.valueMoney.value = 500
* group[=].measureScore.extension.valueMoney.currency = #USD

* evaluatedResource[0] = Reference(MeasureReport/quality-measurereport30)
* evaluatedResource[+] = Reference(MeasureReport/quality-measurereport31)
* evaluatedResource[+] = Reference(MeasureReport/quality-measurereport32)
* evaluatedResource[+] = Reference(MeasureReport/quality-measurereport33)
