Instance: quality-measurereport22
InstanceOf: MeasureReport
Usage: #example
Description: "This is an example Comprehensive Diabetes Care: Hemoglobin A1c (HbA1c) Control (<8.0%) MeasureReport for the *VBP Quality MeasureReport* profile."
* meta.profile = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/vbp-quality-measurereport"
* meta.source = "http://example.org/fhir/server"
* meta.extension[0].url = "http://hl7.org/fhir/StructureDefinition/instance-name"
* meta.extension[=].valueString = "VBP Quality MeasureReport Example"
* meta.extension[+].url = "http://hl7.org/fhir/StructureDefinition/instance-description"
* meta.extension[=].valueMarkdown = "This is an example Comprehensive Diabetes Care: Hemoglobin A1c (HbA1c) Control (<8.0%) MeasureReport for the *VBP Quality MeasureReport* profile."

* extension[0].url = "http://hl7.org/fhir/us/davinci-deqm/StructureDefinition/extension-measureScoring"
* extension[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/measure-scoring#proportion

* extension[+].url = "http://hl7.org/fhir/StructureDefinition/measurereport-category"
* extension[=].valueCodeableConcept = http://hl7.org/fhir/CodeSystem/measurereport-category#vbp

* extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/score"
* extension[=].valueDecimal = 2

* extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/threshold"
* extension[=].extension[0].url = "threshold"
* extension[=].extension[=].valueQuantity = 71.7 '%'
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/threshold-type#hedis-50-percentile

* extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/threshold"
* extension[=].extension[0].url = "threshold"
* extension[=].extension[=].valueQuantity = 74.3 '%'
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/threshold-type#hedis-75-percentile

* extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/threshold"
* extension[=].extension[0].url = "threshold"
* extension[=].extension[=].valueQuantity = 77.3 '%'
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/threshold-type#hedis-90-percentile


* status = #complete
* type = #summary
* measure = "http://example.org/Measure/measure-diabetes-HbA1c"
* date = "2021-04-02"
* period.start = "2020-01-01"
* period.end = "2021-03-31"
* reporter = Reference(Organization/vbp-payer01)
* improvementNotation = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#increase "Increased score indicates improvement"

* group.population[0].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-measure-population#calculated-numerator
* group.population[=].id = "pop1-num"
* group.population[=].count = 11
* group.population[+].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-measure-population#calculated-denominator
* group.population[=].id = "pop2-denom"
* group.population[=].count = 24
* group.measureScore.value = 0.458