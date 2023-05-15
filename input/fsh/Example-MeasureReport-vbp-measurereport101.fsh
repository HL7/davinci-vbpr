Instance: vbp-measurereport101
InstanceOf: MeasureReport
Usage: #example
Description: "This is an example Value-Based Performance MeasureReport for the *VBP MeasureReport* profile., which includes examples for payment streams shared savings - gated on quality, care coordination fee, quality incentive payment for the chronic care management incentive program, and quality incentive payment for the annual office visits."

* meta.profile = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/vbp-performance-measurereport"
* meta.extension[0].url = "http://hl7.org/fhir/StructureDefinition/instance-name"
* meta.extension[=].valueString = "VBP Quality MeasureReport Example 101"
* meta.extension[+].url = "http://hl7.org/fhir/StructureDefinition/instance-description"
* meta.extension[=].valueMarkdown = "This is an example Value-Based Performance MeasureReport for the *VBP MeasureReport* profile., which includes examples for payment streams shared savings - gated on quality, care coordination fee, quality incentive payment for the chronic care management incentive program, quality incentive payment for the annual office visits, and quality measure performance."

* extension.url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/paid-through-date"
* extension.valueDate = "2022-12-31"
* status = #complete
* type = #summary
* measure = "https://build.fhir.org/ig/HL7/davinci-vbpr/Measure-vbp-measure01"
* subject
* subject.extension.url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/organization-subject"
* subject.extension.valueReference = Reference(Organization/vbp-provider01)
* date = "2023-01-15"
* reporter = Reference(Organization/vbp-payer01)
* period.start = "2022-01-01"
* period.end = "2022-12-31"

* group[0].id = "ccf-group-01"
* group[=].extension[0].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/payment-stream"
* group[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/payment-stream#ccf
* group[=].extension[=].valueCodeableConcept.text = "Care coordination fee"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/service-period"
* group[=].extension[=].valuePeriod.start = "2022-01-01"
* group[=].extension[=].valuePeriod.end = "2022-11-30"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/paid-through-date"
* group[=].extension[=].valueDate = "2022-12-31"
* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric#ccf
* group[=].code.text = "Care coordination fee"
//* group[=].measureScore.value = 5
* group[=].measureScore.extension.url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/alternate-measurescore"
* group[=].measureScore.extension.valueMoney.value = 5
* group[=].measureScore.extension.valueMoney.currency = #USD

* group[=].stratifier.stratum[0].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 1"
//* group[=].stratifier.stratum[=].measureScore.value = 1000
* group[=].measureScore.extension.url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/alternate-measurescore"
* group[=].measureScore.extension.valueMoney.value = 1000
* group[=].measureScore.extension.valueMoney.currency = #USD
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 2"
//* group[=].stratifier.stratum[=].measureScore.value = 500
* group[=].measureScore.extension.url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/alternate-measurescore"
* group[=].measureScore.extension.valueMoney.value = 500
* group[=].measureScore.extension.valueMoney.currency = #USD
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 1"
//* group[=].stratifier.stratum[=].measureScore.value = 1000
* group[=].measureScore.extension.url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/alternate-measurescore"
* group[=].measureScore.extension.valueMoney.value = 1000
* group[=].measureScore.extension.valueMoney.currency = #USD
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 2"
//* group[=].stratifier.stratum[=].measureScore.value = 500
* group[=].measureScore.extension.url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/alternate-measurescore"
* group[=].measureScore.extension.valueMoney.value = 500
* group[=].measureScore.extension.valueMoney.currency = #USD

* group[+].id = "ssq-group-starscore"
* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric#weighted-avg-star
* group[=].code.text = "Weighted average star"
* group[=].extension[0].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/payment-stream"
* group[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/payment-stream#ssq
* group[=].extension[=].valueCodeableConcept.text = "Shared savings gated on quality"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/service-period"
* group[=].extension[=].valuePeriod.start = "2022-01-01"
* group[=].extension[=].valuePeriod.end = "2022-11-30"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/paid-through-date"
* group[=].extension[=].valueDate = "2022-12-31"
* group[=].measureScore.value = 3.8
* group[+].id = "ssq-group-01"
* group[=].extension[0].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/payment-stream"
* group[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/payment-stream#ssq
* group[=].extension[=].valueCodeableConcept.text = "Shared savings gated on quality"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/service-period"
* group[=].extension[=].valuePeriod.start = "2022-01-01"
* group[=].extension[=].valuePeriod.end = "2022-11-30"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/paid-through-date"
* group[=].extension[=].valueDate = "2022-12-31"
* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric#member-months
* group[=].code.text = "Member months"
* group[=].measureScore.value = 300
* group[=].stratifier.stratum[0].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group[=].stratifier.stratum[=].measureScore.value = 100
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 1"
* group[=].stratifier.stratum[=].measureScore.value = 50
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 2"
* group[=].stratifier.stratum[=].measureScore.value = 50
* group[=].stratifier.stratum[+].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group[=].stratifier.stratum[=].measureScore.value = 200
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 1"
* group[=].stratifier.stratum[=].measureScore.value = 150
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 2"
* group[=].stratifier.stratum[=].measureScore.value = 50
* group[+].id = "ssq-group-02"
* group[=].extension[0].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/payment-stream"
* group[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/payment-stream#ssq
* group[=].extension[=].valueCodeableConcept.text = "Shared savings gated on quality"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/service-period"
* group[=].extension[=].valuePeriod.start = "2022-01-01"
* group[=].extension[=].valuePeriod.end = "2022-11-30"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/paid-through-date"
* group[=].extension[=].valueDate = "2022-12-31"
* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric#avg-risk-score
* group[=].code.text = "Average risk score"
* group[=].measureScore.value = 0.7
* group[=].stratifier.stratum[0].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group[=].stratifier.stratum[=].measureScore.value = 0.8
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 1"
* group[=].stratifier.stratum[=].measureScore.value = 0.9
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 2"
* group[=].stratifier.stratum[=].measureScore.value = 1
* group[=].stratifier.stratum[+].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group[=].stratifier.stratum[=].measureScore.value = 1.1
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 1"
* group[=].stratifier.stratum[=].measureScore.value = 1.2
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 2"
* group[=].stratifier.stratum[=].measureScore.value = 1.3
* group[+].id = "ssq-group-03"
* group[=].extension[0].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/payment-stream"
* group[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/payment-stream#ssq
* group[=].extension[=].valueCodeableConcept.text = "Shared savings gated on quality"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/service-period"
* group[=].extension[=].valuePeriod.start = "2022-01-01"
* group[=].extension[=].valuePeriod.end = "2022-11-30"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/paid-through-date"
* group[=].extension[=].valueDate = "2022-12-31"
* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric#revenue
* group[=].code.text = "Total revenue"
* group[=].measureScore.value = 10000
* group[=].stratifier.stratum[0].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group[=].stratifier.stratum[=].measureScore.value = 6000
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 1"
* group[=].stratifier.stratum[=].measureScore.value = 3000
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 2"
* group[=].stratifier.stratum[=].measureScore.value = 3000
* group[=].stratifier.stratum[+].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group[=].stratifier.stratum[=].measureScore.value = 4000
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 1"
* group[=].stratifier.stratum[=].measureScore.value = 2000
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 2"
* group[=].stratifier.stratum[=].measureScore.value = 2000
* group[+].id = "ssq-group-04"
* group[=].extension[0].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/payment-stream"
* group[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/payment-stream#ssq
* group[=].extension[=].valueCodeableConcept.text = "Shared savings gated on quality"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/service-period"
* group[=].extension[=].valuePeriod.start = "2022-01-01"
* group[=].extension[=].valuePeriod.end = "2022-11-30"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/paid-through-date"
* group[=].extension[=].valueDate = "2022-12-31"
* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric#revenue-pmpm
* group[=].code.text = "Revenue PMPM"
* group[=].measureScore.value = 33
* group[=].stratifier.stratum[0].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group[=].stratifier.stratum[=].measureScore.value = 60
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 1"
* group[=].stratifier.stratum[=].measureScore.value = 60
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 2"
* group[=].stratifier.stratum[=].measureScore.value = 60
* group[=].stratifier.stratum[+].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group[=].stratifier.stratum[=].measureScore.value = 20
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 1"
* group[=].stratifier.stratum[=].measureScore.value = 13
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 2"
* group[=].stratifier.stratum[=].measureScore.value = 40
* group[+].id = "ssq-group-05"
* group[=].extension[0].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/payment-stream"
* group[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/payment-stream#ssq
* group[=].extension[=].valueCodeableConcept.text = "Shared savings gated on quality"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/service-period"
* group[=].extension[=].valuePeriod.start = "2022-01-01"
* group[=].extension[=].valuePeriod.end = "2022-11-30"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/paid-through-date"
* group[=].extension[=].valueDate = "2022-12-31"
* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric#med-rx-cost
* group[=].code.text = "Medical pharmacy cost"
* group[=].measureScore.value = 9000
* group[=].stratifier.stratum[0].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group[=].stratifier.stratum[=].measureScore.value = 5000
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 1"
* group[=].stratifier.stratum[=].measureScore.value = 3000
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 2"
* group[=].stratifier.stratum[=].measureScore.value = 2000
* group[=].stratifier.stratum[+].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group[=].stratifier.stratum[=].measureScore.value = 4000
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 1"
* group[=].stratifier.stratum[=].measureScore.value = 2000
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 2"
* group[=].stratifier.stratum[=].measureScore.value = 3000
* group[+].id = "ssq-group-06"
* group[=].extension[0].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/payment-stream"
* group[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/payment-stream#ssq
* group[=].extension[=].valueCodeableConcept.text = "Shared savings gated on quality"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/service-period"
* group[=].extension[=].valuePeriod.start = "2022-01-01"
* group[=].extension[=].valuePeriod.end = "2022-11-30"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/paid-through-date"
* group[=].extension[=].valueDate = "2022-12-31"
* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric#med-rx-cost-pmpm
* group[=].code.text = "Medical pharmacy cost PMPM"
* group[=].measureScore.value = 30
* group[=].stratifier.stratum[0].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group[=].stratifier.stratum[=].measureScore.value = 50
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 1"
* group[=].stratifier.stratum[=].measureScore.value = 60
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 2"
* group[=].stratifier.stratum[=].measureScore.value = 40
* group[=].stratifier.stratum[+].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group[=].stratifier.stratum[=].measureScore.value = 20
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 1"
* group[=].stratifier.stratum[=].measureScore.value = 13
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 2"
* group[=].stratifier.stratum[=].measureScore.value = 60
* group[+].id = "ssq-group-07"
* group[=].extension[0].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/payment-stream"
* group[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/payment-stream#ssq
* group[=].extension[=].valueCodeableConcept.text = "Shared savings gated on quality"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/service-period"
* group[=].extension[=].valuePeriod.start = "2022-01-01"
* group[=].extension[=].valuePeriod.end = "2022-11-30"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/paid-through-date"
* group[=].extension[=].valueDate = "2022-12-31"
* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric#med-cost-fund
* group[=].code.text = "Medical cost fund"
* group[=].measureScore = 90 '%'
* group[=].stratifier.stratum[0].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group[=].stratifier.stratum[=].measureScore = 83.3 '%'
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 1"
* group[=].stratifier.stratum[=].measureScore = 100 '%'
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 2"
* group[=].stratifier.stratum[=].measureScore = 66.7 '%'
* group[=].stratifier.stratum[+].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group[=].stratifier.stratum[=].measureScore = 100 '%'
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 1"
* group[=].stratifier.stratum[=].measureScore = 100 '%'
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 2"
* group[=].stratifier.stratum[=].measureScore = 150 '%'
* group[+].id = "ssq-group-08"
* group[=].extension[0].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/payment-stream"
* group[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/payment-stream#ssq
* group[=].extension[=].valueCodeableConcept.text = "Shared savings gated on quality"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/service-period"
* group[=].extension[=].valuePeriod.start = "2022-01-01"
* group[=].extension[=].valuePeriod.end = "2022-11-30"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/paid-through-date"
* group[=].extension[=].valueDate = "2022-12-31"
* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric#med-cost-target
* group[=].code.text = "Medical cost target"
* group[=].measureScore = 85 '%'
* group[=].stratifier.stratum[0].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group[=].stratifier.stratum[=].measureScore = 85 '%'
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 1"
* group[=].stratifier.stratum[=].measureScore = 85 '%'
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 2"
* group[=].stratifier.stratum[=].measureScore = 85 '%'
* group[=].stratifier.stratum[+].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group[=].stratifier.stratum[=].measureScore = 85 '%'
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 1"
* group[=].stratifier.stratum[=].measureScore = 85 '%'
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 2"
* group[=].stratifier.stratum[=].measureScore = 85 '%'
* group[+].id = "ssq-group-09"
* group[=].extension[0].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/payment-stream"
* group[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/payment-stream#ssq
* group[=].extension[=].valueCodeableConcept.text = "Shared savings gated on quality"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/service-period"
* group[=].extension[=].valuePeriod.start = "2022-01-01"
* group[=].extension[=].valuePeriod.end = "2022-11-30"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/paid-through-date"
* group[=].extension[=].valueDate = "2022-12-31"
* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric#med-rx-cost-target
* group[=].code.text = "Medical pharmacy cost target"
* group[=].measureScore.value = 8500
* group[=].stratifier.stratum[0].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group[=].stratifier.stratum[=].measureScore.value = 5100
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 1"
* group[=].stratifier.stratum[=].measureScore.value = 2550
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 2"
* group[=].stratifier.stratum[=].measureScore.value = 2550
* group[=].stratifier.stratum[+].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group[=].stratifier.stratum[=].measureScore.value = 3400
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 1"
* group[=].stratifier.stratum[=].measureScore.value = 1700
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 2"
* group[=].stratifier.stratum[=].measureScore.value = 1700
* group[+].id = "ssq-group-10"
* group[=].extension[0].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/payment-stream"
* group[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/payment-stream#ssq
* group[=].extension[=].valueCodeableConcept.text = "Shared savings gated on quality"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/service-period"
* group[=].extension[=].valuePeriod.start = "2022-01-01"
* group[=].extension[=].valuePeriod.end = "2022-11-30"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/paid-through-date"
* group[=].extension[=].valueDate = "2022-12-31"
* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric#variance-cost
* group[=].code.text = "Variance cost"
* group[=].measureScore.value = -500
* group[=].stratifier.stratum[0].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group[=].stratifier.stratum[=].measureScore.value = 100
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 1"
* group[=].stratifier.stratum[=].measureScore.value = 450
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 2"
* group[=].stratifier.stratum[=].measureScore.value = 550
* group[=].stratifier.stratum[+].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group[=].stratifier.stratum[=].measureScore.value = -600
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 1"
* group[=].stratifier.stratum[=].measureScore.value = -300
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 2"
* group[=].stratifier.stratum[=].measureScore.value = -1300
* group[+].id = "ssq-group-11"
* group[=].extension[0].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/payment-stream"
* group[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/payment-stream#ssq
* group[=].extension[=].valueCodeableConcept.text = "Shared savings gated on quality"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/service-period"
* group[=].extension[=].valuePeriod.start = "2022-01-01"
* group[=].extension[=].valuePeriod.end = "2022-11-30"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/paid-through-date"
* group[=].extension[=].valueDate = "2022-12-31"
* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric#avg-risk-score-market
* group[=].code.text = "Average risk score market"
* group[=].measureScore.value = 0.7
* group[=].stratifier.stratum[0].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group[=].stratifier.stratum[=].measureScore.value = 0.71
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 1"
* group[=].stratifier.stratum[=].measureScore.value = 0.72
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 2"
* group[=].stratifier.stratum[=].measureScore.value = 0.72
* group[=].stratifier.stratum[+].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group[=].stratifier.stratum[=].measureScore.value = 0.71
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 1"
* group[=].stratifier.stratum[=].measureScore.value = 0.7
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 2"
* group[=].stratifier.stratum[=].measureScore.value = 0.69
* group[+].id = "ssq-group-12"
* group[=].extension[0].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/payment-stream"
* group[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/payment-stream#ssq
* group[=].extension[=].valueCodeableConcept.text = "Shared savings gated on quality"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/service-period"
* group[=].extension[=].valuePeriod.start = "2022-01-01"
* group[=].extension[=].valuePeriod.end = "2022-11-30"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/paid-through-date"
* group[=].extension[=].valueDate = "2022-12-31"
* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric#avg-revenue-pmpm-market
* group[=].measureScore.value = 35
* group[=].stratifier.stratum[0].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group[=].stratifier.stratum[=].measureScore.value = 40
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 1"
* group[=].stratifier.stratum[=].measureScore.value = 32
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 2"
* group[=].stratifier.stratum[=].measureScore.value = 36
* group[=].stratifier.stratum[+].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group[=].stratifier.stratum[=].measureScore.value = 50
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 1"
* group[=].stratifier.stratum[=].measureScore.value = 29
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 2"
* group[=].stratifier.stratum[=].measureScore.value = 30
* group[+].id = "ssq-group-13"
* group[=].extension[0].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/payment-stream"
* group[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/payment-stream#ssq
* group[=].extension[=].valueCodeableConcept.text = "Shared savings gated on quality"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/service-period"
* group[=].extension[=].valuePeriod.start = "2022-01-01"
* group[=].extension[=].valuePeriod.end = "2022-11-30"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/paid-through-date"
* group[=].extension[=].valueDate = "2022-12-31"
* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric#avg-med-rx-cost-pmpm-market
* group[=].measureScore = 94.3 '%'
* group[=].stratifier.stratum[0].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group[=].stratifier.stratum[=].measureScore = 102.5 '%'
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 1"
* group[=].stratifier.stratum[=].measureScore = 109.4 '%'
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 2"
* group[=].stratifier.stratum[=].measureScore = 83.3 '%'
* group[=].stratifier.stratum[+].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group[=].stratifier.stratum[=].measureScore = 70 '%'
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 1"
* group[=].stratifier.stratum[=].measureScore = 103.4 '%'
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 2"
* group[=].stratifier.stratum[=].measureScore = 110 '%'
* group[+].id = "ssq-group-14"
* group[=].extension[0].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/payment-stream"
* group[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/payment-stream#ssq
* group[=].extension[=].valueCodeableConcept.text = "Shared savings gated on quality"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/service-period"
* group[=].extension[=].valuePeriod.start = "2022-01-01"
* group[=].extension[=].valuePeriod.end = "2022-11-30"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/paid-through-date"
* group[=].extension[=].valueDate = "2022-12-31"
* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric#ccf
* group[=].code.text = "Care coordination fee"
* group[=].measureScore.value = 1500
* group[=].stratifier.stratum[0].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group[=].stratifier.stratum[=].measureScore.value = 500
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 1"
* group[=].stratifier.stratum[=].measureScore.value = 250
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 2"
* group[=].stratifier.stratum[=].measureScore.value = 250
* group[=].stratifier.stratum[+].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group[=].stratifier.stratum[=].measureScore.value = 1000
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 1"
* group[=].stratifier.stratum[=].measureScore.value = 750
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 2"
* group[=].stratifier.stratum[=].measureScore.value = 250
* group[+].id = "ssq-group-15"
* group[=].extension[0].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/payment-stream"
* group[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/payment-stream#ssq
* group[=].extension[=].valueCodeableConcept.text = "Shared savings gated on quality"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/service-period"
* group[=].extension[=].valuePeriod.start = "2022-01-01"
* group[=].extension[=].valuePeriod.end = "2022-11-30"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/paid-through-date"
* group[=].extension[=].valueDate = "2022-12-31"
* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric#quality-pmt-chronic
* group[=].code.text = "Qulaity payment chronic"
* group[=].measureScore.value = 11900
* group[=].stratifier.stratum[0].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group[=].stratifier.stratum[=].measureScore.value = 3966.67
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 1"
* group[=].stratifier.stratum[=].measureScore.value = 1983.33
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 2"
* group[=].stratifier.stratum[=].measureScore.value = 1983.33
* group[=].stratifier.stratum[+].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group[=].stratifier.stratum[=].measureScore.value = 7933.33
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 1"
* group[=].stratifier.stratum[=].measureScore.value = 5950
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 2"
* group[=].stratifier.stratum[=].measureScore.value = 1983.33
* group[+].id = "ssq-group-16"
* group[=].extension[0].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/payment-stream"
* group[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/payment-stream#ssq
* group[=].extension[=].valueCodeableConcept.text = "Shared savings gated on quality"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/service-period"
* group[=].extension[=].valuePeriod.start = "2022-01-01"
* group[=].extension[=].valuePeriod.end = "2022-11-30"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/paid-through-date"
* group[=].extension[=].valueDate = "2022-12-31"
* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric#quality-pmt-office-visit
* group[=].code.text = "Qulaity payment office visit"
* group[=].measureScore.value = 300
* group[=].stratifier.stratum[0].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group[=].stratifier.stratum[=].measureScore.value = 100
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 1"
* group[=].stratifier.stratum[=].measureScore.value = 50
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 2"
* group[=].stratifier.stratum[=].measureScore.value = 50
* group[=].stratifier.stratum[+].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group[=].stratifier.stratum[=].measureScore.value = 200
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 1"
* group[=].stratifier.stratum[=].measureScore.value = 150
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 2"
* group[=].stratifier.stratum[=].measureScore.value = 50
* group[+].id = "ssq-group-17"
* group[=].extension[0].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/payment-stream"
* group[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/payment-stream#ssq
* group[=].extension[=].valueCodeableConcept.text = "Shared savings gated on quality"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/service-period"
* group[=].extension[=].valuePeriod.start = "2022-01-01"
* group[=].extension[=].valuePeriod.end = "2022-11-30"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/paid-through-date"
* group[=].extension[=].valueDate = "2022-12-31"
* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric#shared-saving-deficit
* group[=].code.text = "Shared saving deficit"
* group[=].measureScore.value = -400
* group[=].stratifier.stratum[0].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group[=].stratifier.stratum[=].measureScore.value = 50
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 1"
* group[=].stratifier.stratum[=].measureScore.value = -360
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 2"
* group[=].stratifier.stratum[=].measureScore.value = 275
* group[=].stratifier.stratum[+].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group[=].stratifier.stratum[=].measureScore.value = -480
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 1"
* group[=].stratifier.stratum[=].measureScore.value = -240
* group[=].stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group[=].stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group[=].stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group[=].stratifier.stratum[=].component[=].value.text = "Region 2"
* group[=].stratifier.stratum[=].measureScore.value = -1040
* group[+].id = "qip-group-01"
* group[=].extension[0].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/payment-stream"
* group[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/payment-stream#qip
* group[=].extension[=].valueCodeableConcept.text = "Quality incentive payment"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/quality-program"
* group[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/quality-program#annual-visit
* group[=].extension[=].valueCodeableConcept.text = "Annual office visit"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/service-period"
* group[=].extension[=].valuePeriod.start = "2022-01-01"
* group[=].extension[=].valuePeriod.end = "2022-11-30"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/paid-through-date"
* group[=].extension[=].valueDate = "2022-12-31"
* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric#avg-member-office-visit
* group[=].code.text = "Average members with office visit"
* group[=].measureScore = 87 '%'
* group[+].id = "qip-group-02"
* group[=].extension[0].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/payment-stream"
* group[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/payment-stream#qip
* group[=].extension[=].valueCodeableConcept.text = "Quality incentive payment"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/quality-program"
* group[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/quality-program#chronic
* group[=].extension[=].valueCodeableConcept.text = "Chronic care management incentive program"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/service-period"
* group[=].extension[=].valuePeriod.start = "2022-01-01"
* group[=].extension[=].valuePeriod.end = "2022-09-30"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/paid-through-date"
* group[=].extension[=].valueDate = "2022-09-30"
* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric#eligible-member
* group[=].code.text = "Eligible member"
* group[=].measureScore.value = 500
* group[=].stratifier.code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric#condition-count
* group[=].stratifier.stratum[0].value = http://loinc.org#LA6112-2
* group[=].stratifier.stratum[=].value.text = "1"
* group[=].stratifier.stratum[=].measureScore.value = 100
* group[=].stratifier.stratum[+].value = http://loinc.org#LA6113-0
* group[=].stratifier.stratum[=].value.text = "2"
* group[=].stratifier.stratum[=].measureScore.value = 200
* group[=].stratifier.stratum[+].value = http://loinc.org#LA6114-8
* group[=].stratifier.stratum[=].value.text = "3"
* group[=].stratifier.stratum[=].measureScore.value = 50
* group[=].stratifier.stratum[+].value = http://loinc.org#LA6115-5
* group[=].stratifier.stratum[=].value.text = "4"
* group[=].stratifier.stratum[=].measureScore.value = 50
* group[=].stratifier.stratum[+].value = http://loinc.org#LA10137-0
* group[=].stratifier.stratum[=].value.text = "5+"
* group[=].stratifier.stratum[=].measureScore.value = 100
* group[+].id = "qip-group-03"
* group[=].extension[0].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/payment-stream"
* group[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/payment-stream#qip
* group[=].extension[=].valueCodeableConcept.text = "Quality incentive payment"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/quality-program"
* group[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/quality-program#chronic
* group[=].extension[=].valueCodeableConcept.text = "Chronic care management incentive program"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/service-period"
* group[=].extension[=].valuePeriod.start = "2022-01-01"
* group[=].extension[=].valuePeriod.end = "2022-09-30"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/paid-through-date"
* group[=].extension[=].valueDate = "2022-09-30"
* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric#1-gap-closed
* group[=].code.text = "1 gap closed"
* group[=].measureScore.value = 100
* group[=].stratifier.code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric#condition-count
* group[=].stratifier.stratum[0].value = http://loinc.org#LA6112-2
* group[=].stratifier.stratum[=].value.text = "1"
* group[=].stratifier.stratum[=].measureScore.value = 20
* group[=].stratifier.stratum[+].value = http://loinc.org#LA6113-0
* group[=].stratifier.stratum[=].value.text = "2"
* group[=].stratifier.stratum[=].measureScore.value = 30
* group[=].stratifier.stratum[+].value = http://loinc.org#LA6114-8
* group[=].stratifier.stratum[=].value.text = "3"
* group[=].stratifier.stratum[=].measureScore.value = 20
* group[=].stratifier.stratum[+].value = http://loinc.org#LA6115-5
* group[=].stratifier.stratum[=].value.text = "4"
* group[=].stratifier.stratum[=].measureScore.value = 10
* group[=].stratifier.stratum[+].value = http://loinc.org#LA10137-0
* group[=].stratifier.stratum[=].value.text = "5+"
* group[=].stratifier.stratum[=].measureScore.value = 20
* group[+].id = "qip-group-04"
* group[=].extension[0].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/payment-stream"
* group[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/payment-stream#qip
* group[=].extension[=].valueCodeableConcept.text = "Quality incentive payment"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/quality-program"
* group[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/quality-program#chronic
* group[=].extension[=].valueCodeableConcept.text = "Chronic care management incentive program"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/service-period"
* group[=].extension[=].valuePeriod.start = "2022-01-01"
* group[=].extension[=].valuePeriod.end = "2022-09-30"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/paid-through-date"
* group[=].extension[=].valueDate = "2022-09-30"
* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric#2-gap-closed
* group[=].code.text = "2 gap closed"
* group[=].measureScore.value = 0
* group[=].stratifier.code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric#condition-count
* group[=].stratifier.stratum[0].value = http://loinc.org#LA6112-2
* group[=].stratifier.stratum[=].value.text = "1"
* group[=].stratifier.stratum[=].measureScore.value = 0
* group[=].stratifier.stratum[+].value = http://loinc.org#LA6113-0
* group[=].stratifier.stratum[=].value.text = "2"
* group[=].stratifier.stratum[=].measureScore.value = 0
* group[=].stratifier.stratum[+].value = http://loinc.org#LA6114-8
* group[=].stratifier.stratum[=].value.text = "3"
* group[=].stratifier.stratum[=].measureScore.value = 0
* group[=].stratifier.stratum[+].value = http://loinc.org#LA6115-5
* group[=].stratifier.stratum[=].value.text = "4"
* group[=].stratifier.stratum[=].measureScore.value = 0
* group[=].stratifier.stratum[+].value = http://loinc.org#LA10137-0
* group[=].stratifier.stratum[=].value.text = "5+"
* group[=].stratifier.stratum[=].measureScore.value = 0
* group[+].id = "qip-group-05"
* group[=].extension[0].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/payment-stream"
* group[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/payment-stream#qip
* group[=].extension[=].valueCodeableConcept.text = "Quality incentive payment"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/quality-program"
* group[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/quality-program#chronic
* group[=].extension[=].valueCodeableConcept.text = "Chronic care management incentive program"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/service-period"
* group[=].extension[=].valuePeriod.start = "2022-01-01"
* group[=].extension[=].valuePeriod.end = "2022-09-30"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/paid-through-date"
* group[=].extension[=].valueDate = "2022-09-30"
* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric#interim-pmt-rate
* group[=].code.text = "Interim payment rate"
* group[=].stratifier.code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric#condition-count
* group[=].stratifier.stratum[0].value = http://loinc.org#LA6112-2
* group[=].stratifier.stratum[=].value.text = "1"
* group[=].stratifier.stratum[=].measureScore.value = 20
* group[=].stratifier.stratum[+].value = http://loinc.org#LA6113-0
* group[=].stratifier.stratum[=].value.text = "2"
* group[=].stratifier.stratum[=].measureScore.value = 50
* group[=].stratifier.stratum[+].value = http://loinc.org#LA6114-8
* group[=].stratifier.stratum[=].value.text = "3"
* group[=].stratifier.stratum[=].measureScore.value = 100
* group[=].stratifier.stratum[+].value = http://loinc.org#LA6115-5
* group[=].stratifier.stratum[=].value.text = "4"
* group[=].stratifier.stratum[=].measureScore.value = 200
* group[=].stratifier.stratum[+].value = http://loinc.org#LA10137-0
* group[=].stratifier.stratum[=].value.text = "5+"
* group[=].stratifier.stratum[=].measureScore.value = 300
* group[+].id = "qip-group-06"
* group[=].extension[0].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/payment-stream"
* group[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/payment-stream#qip
* group[=].extension[=].valueCodeableConcept.text = "Quality incentive payment"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/quality-program"
* group[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/quality-program#chronic
* group[=].extension[=].valueCodeableConcept.text = "Chronic care management incentive program"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/service-period"
* group[=].extension[=].valuePeriod.start = "2022-01-01"
* group[=].extension[=].valuePeriod.end = "2022-09-30"
* group[=].extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/paid-through-date"
* group[=].extension[=].valueDate = "2022-09-30"
* group[=].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric#earned-incentive
* group[=].code.text = "Earned incentive"
* group[=].measureScore.value = 11900
* group[=].stratifier.code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-performance-metric#condition-count
* group[=].stratifier.stratum[0].value = http://loinc.org#LA6112-2
* group[=].stratifier.stratum[=].value.text = "1"
* group[=].stratifier.stratum[=].measureScore.value = 400
* group[=].stratifier.stratum[+].value = http://loinc.org#LA6113-0
* group[=].stratifier.stratum[=].value.text = "2"
* group[=].stratifier.stratum[=].measureScore.value = 1500
* group[=].stratifier.stratum[+].value = http://loinc.org#LA6114-8
* group[=].stratifier.stratum[=].value.text = "3"
* group[=].stratifier.stratum[=].measureScore.value = 2000
* group[=].stratifier.stratum[+].value = http://loinc.org#LA6115-5
* group[=].stratifier.stratum[=].value.text = "4"
* group[=].stratifier.stratum[=].measureScore.value = 2000
* group[=].stratifier.stratum[+].value = http://loinc.org#LA10137-0
* group[=].stratifier.stratum[=].value.text = "5+"
* group[=].stratifier.stratum[=].measureScore.value = 6000
* evaluatedResource[0] = Reference(MeasureReport/quality-measurereport01)
* evaluatedResource[=].extension.url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/group-reference"
* evaluatedResource[=].extension.valueString = "ssq-group-starscore"
* evaluatedResource[+] = Reference(MeasureReport/quality-measurereport02)
* evaluatedResource[=].extension.url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/group-reference"
* evaluatedResource[=].extension.valueString = "ssq-group-starscore"
* evaluatedResource[+] = Reference(MeasureReport/quality-measurereport03)
* evaluatedResource[=].extension.url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/group-reference"
* evaluatedResource[=].extension.valueString = "ssq-group-starscore"
* evaluatedResource[+] = Reference(MeasureReport/quality-measurereport04)
* evaluatedResource[=].extension.url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/group-reference"
* evaluatedResource[=].extension.valueString = "ssq-group-starscore"
* evaluatedResource[+] = Reference(MeasureReport/quality-measurereport05)
* evaluatedResource[=].extension.url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/group-reference"
* evaluatedResource[=].extension.valueString = "ssq-group-starscore"
* evaluatedResource[+] = Reference(MeasureReport/quality-measurereport06)
* evaluatedResource[=].extension.url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/group-reference"
* evaluatedResource[=].extension.valueString = "ssq-group-starscore"
* evaluatedResource[+] = Reference(MeasureReport/quality-measurereport07)
* evaluatedResource[=].extension.url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/group-reference"
* evaluatedResource[=].extension.valueString = "ssq-group-starscore"
* evaluatedResource[+] = Reference(MeasureReport/quality-measurereport08)
* evaluatedResource[=].extension.url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/group-reference"
* evaluatedResource[=].extension.valueString = "ssq-group-starscore"
* evaluatedResource[+] = Reference(MeasureReport/quality-measurereport09)
* evaluatedResource[=].extension.url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/group-reference"
* evaluatedResource[=].extension.valueString = "ssq-group-starscore"