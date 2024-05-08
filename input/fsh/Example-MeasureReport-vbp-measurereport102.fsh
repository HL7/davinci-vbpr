Instance: vbp-measurereport102
InstanceOf: MeasureReport
Usage: #example
Description: "This is an example Value-Based Performance MeasureReport for the *VBP MeasureReport* profile., which includes utilizations and quality."

* meta.profile = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/vbp-performance-measurereport"
* meta.extension[0].url = "http://hl7.org/fhir/StructureDefinition/instance-name"
* meta.extension[=].valueString = "VBP MeasureReport Example 102"
* meta.extension[+].url = "http://hl7.org/fhir/StructureDefinition/instance-description"
* meta.extension[=].valueMarkdown = "This is an example Value-Based Performance MeasureReport for the *VBP MeasureReport* profile., which includes utilization and quality."
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
* period.start = "2022-10-01"
* period.end = "2022-12-31"

// ====inpatient admission ====
* group[0].id = "ubip-group-01"
* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric#inpatient-admission
* group[=].code.text = "In patient admission"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/payment-stream"
* group[=].extension[=].extension[0].url = "type"
* group[=].extension[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/payment-stream#ubip
* group[=].extension[=].extension[=].valueCodeableConcept.text = "Utilization incentive payment"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/baseline"
* group[=].extension[=].extension[0].url = "baseline"
* group[=].extension[=].extension[=].valueQuantity = 250 '/10*3'
* group[=].extension[=].extension[+].url = "period"
* group[=].extension[=].extension[=].valuePeriod.start = "2021-01-01"
* group[=].extension[=].extension[=].valuePeriod.end = "2021-12-31"
* group[=].measureScore = 400 '/10*3'

// ====inpatient acute ====
* group[+].id = "ubip-group-02"
* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric#inpatient-acute
* group[=].code.text = "In patient acute"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/payment-stream"
* group[=].extension[=].extension[0].url = "type"
* group[=].extension[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/payment-stream#ubip
* group[=].extension[=].extension[=].valueCodeableConcept.text = "Utilization incentive payment"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/baseline"
* group[=].extension[=].extension[0].url = "baseline"
* group[=].extension[=].extension[=].valueQuantity = 180 '/10*3'
* group[=].extension[=].extension[+].url = "period"
* group[=].extension[=].extension[=].valuePeriod.start = "2021-01-01"
* group[=].extension[=].extension[=].valuePeriod.end = "2021-12-31"
* group[=].measureScore = 350 '/10*3'

// ====readmission====
* group[+].id = "ubip-group-03"
* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric#readmission
* group[=].code.text = "Readmission"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/payment-stream"
* group[=].extension[=].extension[0].url = "type"
* group[=].extension[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/payment-stream#ubip
* group[=].extension[=].extension[=].valueCodeableConcept.text = "Utilization incentive payment"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/baseline"
* group[=].extension[=].extension[0].url = "baseline"
* group[=].extension[=].extension[=].valueQuantity = 51 '/10*3'
* group[=].extension[=].extension[+].url = "period"
* group[=].extension[=].extension[=].valuePeriod.start = "2021-01-01"
* group[=].extension[=].extension[=].valuePeriod.end = "2021-12-31"
* group[=].measureScore = 120 '/10*3'

// ====ED visit====
* group[+].id = "ubip-group-04"
* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric#ed-visit
* group[=].code.text = "ED visit"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/payment-stream"
* group[=].extension[=].extension[0].url = "type"
* group[=].extension[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/payment-stream#ubip
* group[=].extension[=].extension[=].valueCodeableConcept.text = "Utilization incentive payment"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/baseline"
* group[=].extension[=].extension[0].url = "baseline"
* group[=].extension[=].extension[=].valueQuantity = 350 '/100' "per 100"
* group[=].extension[=].extension[+].url = "period"
* group[=].extension[=].extension[=].valuePeriod.start = "2021-01-01"
* group[=].extension[=].extension[=].valuePeriod.end = "2021-12-31"
* group[=].measureScore = 300 '/100'

// ====SNF Admission====
* group[+].id = "ubip-group-05"
* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric#snf-admission
* group[=].code.text = "Skilled Nursing Facility admission"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/payment-stream"
* group[=].extension[=].extension[0].url = "type"
* group[=].extension[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/payment-stream#ubip
* group[=].extension[=].extension[=].valueCodeableConcept.text = "Utilization incentive payment"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/baseline"
* group[=].extension[=].extension[0].url = "baseline"
* group[=].extension[=].extension[=].valueQuantity = 51 '/10*3'
//* group[=].extension[=].extension[=].valueQuantity.value = 51
//* group[=].extension[=].extension[=].valueQuantity.unit = '/10*3'
* group[=].extension[=].extension[+].url = "period"
* group[=].extension[=].extension[=].valuePeriod.start = "2021-01-01"
* group[=].extension[=].extension[=].valuePeriod.end = "2021-12-31"
* group[=].measureScore = 50 '/10*3'

// ====SNF Average Length of Stay====
* group[+].id = "ubip-group-06"
* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric#snf-avg-los
* group[=].code.text = "Skilled Nursing Facility average length of stay"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/payment-stream"
* group[=].extension[=].extension[0].url = "type"
* group[=].extension[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/payment-stream#ubip
* group[=].extension[=].extension[=].valueCodeableConcept.text = "Utilization incentive payment"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/baseline"
* group[=].extension[=].extension[0].url = "baseline"
* group[=].extension[=].extension[=].valueQuantity = 22 'd'
* group[=].extension[=].extension[+].url = "period"
* group[=].extension[=].extension[=].valuePeriod.start = "2021-01-01"
* group[=].extension[=].extension[=].valuePeriod.end = "2021-12-31"
* group[=].measureScore = 15 'd'

// ====Weighted Average Star====
* group[+].id = "ssq-group-starscore"
* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric#weighted-avg-star
* group[=].code.text = "Weighted average star"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/payment-stream"
* group[=].extension[=].extension[0].url = "type"
* group[=].extension[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/payment-stream#ssq
* group[=].extension[=].extension[=].valueCodeableConcept.text = "Shared savings gated on quality"
* group[=].measureScore.value = 2.5

// ====Medical Cost PMPM====
* group[+].id = "financial-group-01"
* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric#med-cost-pmpm
* group[=].code.text = "Total medical expense PMPM"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/payment-stream"
* group[=].extension[=].extension[0].url = "type"
* group[=].extension[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/payment-stream#ubip
* group[=].extension[=].extension[=].valueCodeableConcept.text = "Utilization incentive payment"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/baseline"
* group[=].extension[=].extension[0].url = "baseline"
* group[=].extension[=].extension[=].valueMoney.value = 800 
* group[=].extension[=].extension[=].valueMoney.currency = #USD
* group[=].extension[=].extension[+].url = "period"
* group[=].extension[=].extension[=].valuePeriod.start = "2021-01-01"
* group[=].extension[=].extension[=].valuePeriod.end = "2021-12-31"
* group[=].measureScore.extension.url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/alternate-measurescore"
* group[=].measureScore.extension.valueMoney.value = 800
* group[=].measureScore.extension.valueMoney.currency = #USD

// ====IBNR PMPM====
* group[+].id = "financial-group-02"
* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric#ibnr-pmpm
* group[=].code.text = "Total medical expense PMPM"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/payment-stream"
* group[=].extension[=].extension[0].url = "type"
* group[=].extension[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/payment-stream#ubip
* group[=].extension[=].extension[=].valueCodeableConcept.text = "Utilization incentive payment"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/baseline"
* group[=].extension[=].extension[0].url = "baseline"
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
