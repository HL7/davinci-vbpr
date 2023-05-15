Instance: quality-measurereport25
InstanceOf: MeasureReport
Usage: #example
Description: "This is an example Member Satisfaction Survey MeasureReport for the *VBP Quality MeasureReport* profile."
* meta.profile = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/vbp-quality-measurereport"
* meta.source = "http://example.org/fhir/server"
* meta.extension[0].url = "http://hl7.org/fhir/StructureDefinition/instance-name"
* meta.extension[=].valueString = "VBP Quality MeasureReport Example"
* meta.extension[+].url = "http://hl7.org/fhir/StructureDefinition/instance-description"
* meta.extension[=].valueMarkdown = "This is an example Member Satisfaction Survey MeasureReport for the *VBP Quality MeasureReport* profile."

* extension[0].url = "http://hl7.org/fhir/us/davinci-deqm/StructureDefinition/extension-measureScoring"
* extension[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/measure-scoring#proportion

* extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/star-score"
* extension[=].valueDecimal = 3

* extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/threshold"
* extension[=].extension[0].url = "value"
* extension[=].extension[=].valueQuantity = 80 '%'
//* extension[=].extension[+].url = "hedis-50-percentile"
//* extension[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/quality-star-rating#hedis-50-percentile
* extension[=].extension[+].url = "star-1"
* extension[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/quality-star-rating#star-1


* extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/threshold"
* extension[=].extension[0].url = "value"
* extension[=].extension[=].valueQuantity = 85 '%'
//* extension[=].extension[+].url = "hedis-75-percentile"
//* extension[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/quality-star-rating#hedis-75-percentile
* extension[=].extension[+].url = "star-2"
* extension[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/quality-star-rating#star-2


* extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/threshold"
* extension[=].extension[0].url = "value"
* extension[=].extension[=].valueQuantity = 90 '%'
//* extension[=].extension[+].url = "hedis-90-percentile"
//* extension[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/quality-star-rating#hedis-90-percentile
* extension[=].extension[+].url = "star-3"
* extension[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/quality-star-rating#star-3


* status = #complete
* type = #summary
* measure = "http://hl7.org/fhir/us/cqfmeasures/Measure/measure-diabetes-HbA1c"
* date = "2021-04-02"
* period.start = "2020-01-01"
* period.end = "2021-03-31"
* reporter = Reference(Organization/vbp-payer01)
* improvementNotation = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#increase "Increased score indicates improvement"

//* group.population[0].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-measure-population#calculated-numerator
//* group.population[=].id = "pop1-num"
//* group.population[=].count = 1
//* group.population[+].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-measure-population#calculated-denominator
//* group.population[=].id = "pop2-denom"
//* group.population[=].count = 6
* group.measureScore.value = 0.916