Instance: quality-measurereport03
InstanceOf: MeasureReport
Usage: #example
Description: "This is an example Diabetes Care - Blood Sugar Controlled MeasureReport for the *VBP Quality MeasureReport* profile."
* meta.profile = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/vbp-quality-measurereport"
* meta.source = "http://example.org/fhir/server"
* meta.extension[0].url = "http://hl7.org/fhir/StructureDefinition/instance-name"
* meta.extension[=].valueString = "VBP Quality MeasureReport Example"
* meta.extension[+].url = "http://hl7.org/fhir/StructureDefinition/instance-description"
* meta.extension[=].valueMarkdown = "This is an example Diabetes Care - Blood Sugar Controlled MeasureReport for the *VBP Quality MeasureReport* profile."

* extension[0].url = "http://hl7.org/fhir/us/davinci-deqm/StructureDefinition/extension-measureScoring"
* extension[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/measure-scoring#proportion
* extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/score"
* extension[=].valueDecimal = 0

//* extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/weight"
//* extension[=].valueDecimal = 3

* extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/threshold"
* extension[=].extension[0].url = "threshold"
* extension[=].extension[=].valueQuantity = 85 '%'
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/threshold-type#star-2
* extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/threshold"
* extension[=].extension[0].url = "threshold"
* extension[=].extension[=].valueQuantity = 88 '%'
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/threshold-type#star-3
* extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/threshold"
* extension[=].extension[0].url = "threshold"
* extension[=].extension[=].valueQuantity = 91 '%'
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/threshold-type#star-4
* extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/threshold"
* extension[=].extension[0].url = "threshold"
* extension[=].extension[=].valueQuantity = 95 '%'
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/threshold-type#star-5

* status = #complete
* type = #summary
* measure = "http://example.org/Measure/measure-diabetes-care-blood-sugar-controlled-FHIR"
* date = "2023-01-15"
* period.start = "2022-01-01"
* period.end = "2022-11-30"
* reporter = Reference(Organization/vbp-payer01)
* improvementNotation = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#increase "Increased score indicates improvement"

* group.population[0].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-measure-population#calculated-numerator
* group.population[=].id = "pop1"
* group.population[=].count = 260
* group.population[+].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-measure-population#calculated-denominator
* group.population[=].id = "pop2"
* group.population[=].count = 1080
* group.measureScore.value = 0.241

* group.stratifier.code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/measure-stratifier-example#region-cohort
* group.stratifier.stratum[0].component[0].code = http://loinc.org#87520-3
* group.stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group.stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group.stratifier.stratum[=].component[=].value.text = "Region 1"
* group.stratifier.stratum[=].population[0].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-measure-population#calculated-numerator
* group.stratifier.stratum[=].population[=].id = "strat-pop1"
* group.stratifier.stratum[=].population[=].count = 100
* group.stratifier.stratum[=].population[+].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-measure-population#calculated-denominator
* group.stratifier.stratum[=].population[=].id = "strat-pop2"
* group.stratifier.stratum[=].population[=].count = 400
* group.stratifier.stratum[=].measureScore.value = 0.25

* group.stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group.stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group.stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group.stratifier.stratum[=].component[=].value.text = "Region 2"
* group.stratifier.stratum[=].population[0].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-measure-population#calculated-numerator
* group.stratifier.stratum[=].population[=].id = "strat-pop3"
* group.stratifier.stratum[=].population[=].count = 30
* group.stratifier.stratum[=].population[+].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-measure-population#calculated-denominator
* group.stratifier.stratum[=].population[=].id = "strat-pop4"
* group.stratifier.stratum[=].population[=].count = 140
* group.stratifier.stratum[=].measureScore.value = 0.21

* group.stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group.stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group.stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group.stratifier.stratum[=].component[=].value.text = "Region 1"
* group.stratifier.stratum[=].population[0].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-measure-population#calculated-numerator
* group.stratifier.stratum[=].population[=].id = "strat-pop5"
* group.stratifier.stratum[=].population[=].count = 100
* group.stratifier.stratum[=].population[+].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-measure-population#calculated-denominator
* group.stratifier.stratum[=].population[=].id = "strat-pop6"
* group.stratifier.stratum[=].population[=].count = 400
* group.stratifier.stratum[=].measureScore.value = 0.25

* group.stratifier.stratum[+].component[0].code = http://loinc.org#87520-3
* group.stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group.stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group.stratifier.stratum[=].component[=].value.text = "Region 2"
* group.stratifier.stratum[=].population[0].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-measure-population#calculated-numerator
* group.stratifier.stratum[=].population[=].id = "strat-pop7"
* group.stratifier.stratum[=].population[=].count = 30
* group.stratifier.stratum[=].population[+].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-measure-population#calculated-denominator
* group.stratifier.stratum[=].population[=].id = "strat-pop8"
* group.stratifier.stratum[=].population[=].count = 140
* group.stratifier.stratum[=].measureScore.value = 0.21