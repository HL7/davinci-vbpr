Instance: quality-measurereport30
InstanceOf: MeasureReport
Usage: #example
Description: "This is an example Breast Cancer Screening MeasureReport for the *VBP Quality MeasureReport* profile."
* meta.profile = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/vbp-quality-measurereport"
* meta.source = "http://example.org/fhir/server"
* meta.extension[0].url = "http://hl7.org/fhir/StructureDefinition/instance-name"
* meta.extension[=].valueString = "VBP Quality MeasureReport Example"
* meta.extension[+].url = "http://hl7.org/fhir/StructureDefinition/instance-description"
* meta.extension[=].valueMarkdown = "This is an example Breast Cancer Screening MeasureReport for the *VBP Quality MeasureReport* profile."

* extension[0].url = "http://hl7.org/fhir/us/davinci-deqm/StructureDefinition/extension-measureScoring"
* extension[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/measure-scoring#proportion

* extension[+].url = "http://hl7.org/fhir/StructureDefinition/measurereport-category"
* extension[=].valueCodeableConcept = http://hl7.org/fhir/CodeSystem/measurereport-category#vbp

// Measure Star Rating
* extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/score"
* extension[=].valueDecimal = 3

//* extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/weight"
//* extension[=].valueDecimal = 1

* extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/threshold"
* extension[=].extension[0].url = "threshold"
* extension[=].extension[=].valueQuantity = 78 '%'
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/threshold-type#star-4
* extension[=].extension[+].url = "gapToThreshold"
* extension[=].extension[=].valueDecimal = 3

* extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/threshold"
* extension[=].extension[0].url = "threshold"
* extension[=].extension[=].valueQuantity = 84 '%'
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/threshold-type#star-5
* extension[=].extension[+].url = "gapToThreshold"
* extension[=].extension[=].valueDecimal = 5


* status = #complete
* type = #summary
* measure = "http://hl7.org/fhir/us/cqfmeasures/Measure/measure-exm125-FHIR"
//* measure = "http://example.org/Measure/measure-breast-cancer-screening-FHIR"
* date = "2023-01-15"
* period.start = "2022-01-01"
* period.end = "2022-11-30"
* reporter = Reference(Organization/vbp-payer01)
* improvementNotation = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#increase "Increased score indicates improvement"

//* group.population[0].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-measure-population#calculated-numerator
//* group.population[=].id = "pop1"
//* group.population[=].count = 22
//* group.population[+].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-measure-population#calculated-denominator
//* group.population[=].id = "pop2"
//* group.population[=].count = 32
* group.population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
* group.population[=].id = "pop3"
* group.population[=].count = 32
* group.population[+].code = http://terminology.hl7.org/CodeSystem/measure-population#denominator
* group.population[=].id = "pop4"
* group.population[=].count = 32
* group.population[+].code = http://terminology.hl7.org/CodeSystem/measure-population#denominator-exclusion
* group.population[=].id = "pop5"
* group.population[=].count = 0
* group.population[+].code = http://terminology.hl7.org/CodeSystem/measure-population#numerator
* group.population[=].id = "pop6"
* group.population[=].count = 22
* group.measureScore.value = 0.69

//* group.stratifier.code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/measure-stratifier-example#location
//* group.stratifier.stratum[0].value.text = "123456"
//* group.stratifier.stratum[=].population[0].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-measure-population#calculated-numerator
//* group.stratifier.stratum[=].population[=].id = "strat-pop1"
//* group.stratifier.stratum[=].population[=].count = 22
//* group.stratifier.stratum[=].population[+].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-measure-population#calculated-denominator
//* group.stratifier.stratum[=].population[=].id = "strat-pop2"
//* group.stratifier.stratum[=].population[=].count = 32
//* group.stratifier.stratum[=].measureScore.value = 0.69

//* group.stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
//* group.stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
//* group.stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
//* group.stratifier.stratum[=].component[=].value.text = "Region 2"
//* group.stratifier.stratum[=].population[0].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-measure-population#calculated-numerator
//* group.stratifier.stratum[=].population[=].id = "strat-pop3"
//* group.stratifier.stratum[=].population[=].count = 50
//* group.stratifier.stratum[=].population[+].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-measure-population#calculated-denominator
//* group.stratifier.stratum[=].population[=].id = "strat-pop4"
//* group.stratifier.stratum[=].population[=].count = 90
//* group.stratifier.stratum[=].measureScore.value = 0.56