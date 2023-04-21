Instance: vbp-measurereport102
InstanceOf: MeasureReport
Usage: #example
Description: "This is an example Value-Based Performance MeasureReport for the *VBP MeasureReport* profile., which includes utilizations and quality."

* meta.profile = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/vbp-performance-measurereport"
* meta.extension[0].url = "http://hl7.org/fhir/StructureDefinition/instance-name"
* meta.extension[=].valueString = "VBP Quality MeasureReport Example 102"
* meta.extension[+].url = "http://hl7.org/fhir/StructureDefinition/instance-description"
* meta.extension[=].valueMarkdown = "This is an example Value-Based Performance MeasureReport for the *VBP MeasureReport* profile., which includes utilization and quality."

//* extension.url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/paid-through-date"
//* extension.valueDate = "2022-12-31"
* status = #complete
* type = #summary
* measure = "https://build.fhir.org/ig/HL7/davinci-vbpr/Measure-vbp-measure02"
* subject.extension.url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/organization-subject"
* subject.extension.valueReference = Reference(Organization/vbp-provider01)
* date = "2022-12-31"
* reporter = Reference(Organization/vbp-payer01)
* period.start = "2022-10-01"
* period.end = "2022-12-31"
* group[0].id = "ubip-group-01"
* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric-type#inpatient-admission
* group[=].code.text = "In patient admission"
* group[=].extension[0].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/payment-stream"
* group[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/payment-stream#ubip
* group[=].extension[=].valueCodeableConcept.text = "Utilization incentive payment"
//* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/service-period"
//* group[=].extension[=].valuePeriod.start = "2022-01-01"
//* group[=].extension[=].valuePeriod.end = "2022-11-30"
//* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/paid-through-date"
//* group[=].extension[=].valueDate = "2022-12-31"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/baseline"
* group[=].extension[=].extension[0].url = "value"
* group[=].extension[=].extension[=].valueQuantity = 250 '{/1000}'
* group[=].extension[=].extension[+].url = "period"
* group[=].extension[=].extension[=].valuePeriod.start = "2021-01-01"
* group[=].extension[=].extension[=].valuePeriod.end = "2021-12-31"
* group[=].measureScore = 400 '{/1000}'

* group[+].id = "ubip-group-02"
* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric-type#inpatient-acute
* group[=].code.text = "In patient acute"
* group[=].extension[0].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/payment-stream"
* group[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/payment-stream#ubip
* group[=].extension[=].valueCodeableConcept.text = "Utilization incentive payment"
//* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/service-period"
//* group[=].extension[=].valuePeriod.start = "2022-01-01"
//* group[=].extension[=].valuePeriod.end = "2022-11-30"
//* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/paid-through-date"
//* group[=].extension[=].valueDate = "2022-12-31"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/baseline"
* group[=].extension[=].extension[0].url = "value"
* group[=].extension[=].extension[=].valueQuantity = 180 '{/1000}'
* group[=].extension[=].extension[+].url = "period"
* group[=].extension[=].extension[=].valuePeriod.start = "2021-01-01"
* group[=].extension[=].extension[=].valuePeriod.end = "2021-12-31"
* group[=].measureScore = 350 '{/1000}'

* group[+].id = "ubip-group-03"
* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric-type#readmission
* group[=].code.text = "Readmission"
* group[=].extension[0].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/payment-stream"
* group[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/payment-stream#ubip
* group[=].extension[=].valueCodeableConcept.text = "Utilization incentive payment"
//* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/service-period"
//* group[=].extension[=].valuePeriod.start = "2022-01-01"
//* group[=].extension[=].valuePeriod.end = "2022-11-30"
//* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/paid-through-date"
//* group[=].extension[=].valueDate = "2022-12-31"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/baseline"
* group[=].extension[=].extension[0].url = "value"
* group[=].extension[=].extension[=].valueQuantity = 51 '{/1000}'
* group[=].extension[=].extension[+].url = "period"
* group[=].extension[=].extension[=].valuePeriod.start = "2021-01-01"
* group[=].extension[=].extension[=].valuePeriod.end = "2021-12-31"
* group[=].measureScore = 120 '{/1000}'

* group[+].id = "ubip-group-04"
* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric-type#ed-visit
* group[=].code.text = "ED visit"
* group[=].extension[0].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/payment-stream"
* group[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/payment-stream#ubip
* group[=].extension[=].valueCodeableConcept.text = "Utilization incentive payment"
//* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/service-period"
//* group[=].extension[=].valuePeriod.start = "2022-01-01"
//* group[=].extension[=].valuePeriod.end = "2022-11-30"
//* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/paid-through-date"
//* group[=].extension[=].valueDate = "2022-12-31"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/baseline"
* group[=].extension[=].extension[0].url = "value"
* group[=].extension[=].extension[=].valueQuantity = 500 '{/100}'
* group[=].extension[=].extension[+].url = "period"
* group[=].extension[=].extension[=].valuePeriod.start = "2021-01-01"
* group[=].extension[=].extension[=].valuePeriod.end = "2021-12-31"
* group[=].measureScore = 300 '{/100}'

* group[+].id = "ubip-group-05"
* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric-type#snf-admission
* group[=].code.text = "Skilled Nursing Facility admission"
* group[=].extension[0].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/payment-stream"
* group[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/payment-stream#ubip
* group[=].extension[=].valueCodeableConcept.text = "Utilization incentive payment"
//* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/service-period"
//* group[=].extension[=].valuePeriod.start = "2022-01-01"
//* group[=].extension[=].valuePeriod.end = "2022-11-30"
//* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/paid-through-date"
//* group[=].extension[=].valueDate = "2022-12-31"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/baseline"
* group[=].extension[=].extension[0].url = "value"
* group[=].extension[=].extension[=].valueQuantity = 51 '{/1000}'
* group[=].extension[=].extension[+].url = "period"
* group[=].extension[=].extension[=].valuePeriod.start = "2021-01-01"
* group[=].extension[=].extension[=].valuePeriod.end = "2021-12-31"
* group[=].measureScore = 50 '{/1000}'

* group[+].id = "ubip-group-06"
* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric-type#snf-avg-los
* group[=].code.text = "Skilled Nursing Facility average length of stay"
* group[=].extension[0].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/payment-stream"
* group[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/payment-stream#ubip
* group[=].extension[=].valueCodeableConcept.text = "Utilization incentive payment"
//* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/service-period"
//* group[=].extension[=].valuePeriod.start = "2022-01-01"
//* group[=].extension[=].valuePeriod.end = "2022-11-30"
//* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/paid-through-date"
//* group[=].extension[=].valueDate = "2022-12-31"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/baseline"
* group[=].extension[=].extension[0].url = "value"
* group[=].extension[=].extension[=].valueQuantity = 15 'd'
* group[=].extension[=].extension[+].url = "period"
* group[=].extension[=].extension[=].valuePeriod.start = "2021-01-01"
* group[=].extension[=].extension[=].valuePeriod.end = "2021-12-31"
* group[=].measureScore = 22 'd'

* group[+].id = "ssq-group-starscore"
* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric-type#weighted-avg-star
* group[=].code.text = "Weighted average star"
* group[=].extension[0].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/payment-stream"
* group[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/payment-stream#ssq
* group[=].extension[=].valueCodeableConcept.text = "Shared savings gated on quality"
//* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/service-period"
//* group[=].extension[=].valuePeriod.start = "2022-01-01"
//* group[=].extension[=].valuePeriod.end = "2022-11-30"
//* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/paid-through-date"
//* group[=].extension[=].valueDate = "2022-12-31"
* group[=].measureScore.value = 2.5

* group[+].id = "financial-group-01"
* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric-type#med-cost-pmpm
* group[=].code.text = "Total medical expense PMPM"
* group[=].extension[0].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/payment-stream"
* group[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/payment-stream#ubip
* group[=].extension[=].valueCodeableConcept.text = "Utilization incentive payment"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/baseline"
* group[=].extension[=].extension[0].url = "value"
* group[=].extension[=].extension[=].valueMoney.value = 800 
* group[=].extension[=].extension[=].valueMoney.currency = #USD
* group[=].extension[=].extension[+].url = "period"
* group[=].extension[=].extension[=].valuePeriod.start = "2021-01-01"
* group[=].extension[=].extension[=].valuePeriod.end = "2021-12-31"
* group[=].measureScore.extension.url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/alternate-measurescore"
* group[=].measureScore.extension.valueMoney.value = 800
* group[=].measureScore.extension.valueMoney.currency = #USD

* group[+].id = "financial-group-02"
* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric-type#ibnr-pmpm
* group[=].code.text = "Total medical expense PMPM"
* group[=].extension[0].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/payment-stream"
* group[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/payment-stream#ubip
* group[=].extension[=].valueCodeableConcept.text = "Utilization incentive payment"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/baseline"
* group[=].extension[=].extension[0].url = "value"
* group[=].extension[=].extension[=].valueMoney.value = 800 
* group[=].extension[=].extension[=].valueMoney.currency = #USD
* group[=].extension[=].extension[+].url = "period"
* group[=].extension[=].extension[=].valuePeriod.start = "2021-01-01"
* group[=].extension[=].extension[=].valuePeriod.end = "2021-12-31"
* group[=].measureScore.extension.url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/alternate-measurescore"
* group[=].measureScore.extension.valueMoney.value = 800
* group[=].measureScore.extension.valueMoney.currency = #USD



* evaluatedResource[0] = Reference(MeasureReport/quality-measurereport11)
* evaluatedResource[=].extension.url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/group-reference"
* evaluatedResource[=].extension.valueString = "ssq-group-starscore"
* evaluatedResource[+] = Reference(MeasureReport/quality-measurereport12)
* evaluatedResource[=].extension.url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/group-reference"
* evaluatedResource[=].extension.valueString = "ssq-group-starscore"
* evaluatedResource[+] = Reference(MeasureReport/quality-measurereport13)
* evaluatedResource[=].extension.url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/group-reference"
* evaluatedResource[=].extension.valueString = "ssq-group-starscore"
* evaluatedResource[+] = Reference(MeasureReport/quality-measurereport14)
* evaluatedResource[=].extension.url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/group-reference"
* evaluatedResource[=].extension.valueString = "ssq-group-starscore"
* evaluatedResource[+] = Reference(MeasureReport/quality-measurereport15)
* evaluatedResource[=].extension.url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/group-reference"
* evaluatedResource[=].extension.valueString = "ssq-group-starscore"
