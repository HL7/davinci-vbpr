Instance: quality-measurereport09
InstanceOf: MeasureReport
Usage: #example
Description: "This is an example Statin Use in Persons with Diabetes (SUPD) MeasureReport for the *VBP Quality MeasureReport* profile."
* meta.profile = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/vbp-quality-measurereport"
* meta.source = "http://example.org/fhir/server"
* meta.extension[0].url = "http://hl7.org/fhir/StructureDefinition/instance-name"
* meta.extension[=].valueString = "VBP Quality MeasureReport Example"
* meta.extension[+].url = "http://hl7.org/fhir/StructureDefinition/instance-description"
* meta.extension[=].valueMarkdown = "This is an example Statin Use in Persons with Diabetes (SUPD) MeasureReport for the *VBP Quality MeasureReport* profile."

* extension[0].url = "http://hl7.org/fhir/us/davinci-deqm/StructureDefinition/extension-measureScoring"
* extension[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/measure-scoring#proportion
* extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/star-score"
* extension[=].valueDecimal = 0
* extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/weight"
* extension[=].valueDecimal = 1

* extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/threshold"
* extension[=].extension[0].url = "value"
* extension[=].extension[=].valueQuantity = 40 '%'
* extension[=].extension[+].url = "star"
* extension[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/quality-star-rating#star-2
* extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/threshold"
* extension[=].extension[0].url = "value"
* extension[=].extension[=].valueQuantity = 50 '%'
* extension[=].extension[+].url = "star"
* extension[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/quality-star-rating#star-3
* extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/threshold"
* extension[=].extension[0].url = "value"
* extension[=].extension[=].valueQuantity = 60 '%'
* extension[=].extension[+].url = "star"
* extension[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/quality-star-rating#star-4
* extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/threshold"
* extension[=].extension[0].url = "value"
* extension[=].extension[=].valueQuantity = 70 '%'
* extension[=].extension[+].url = "star"
* extension[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/quality-star-rating#star-5

* status = #complete
* type = #summary
* measure = "http://example.org/Measure/measure-diabetes-care-blood-sugar-controlled-FHIR"
* date = "2023-01-15"
* period.start = "2022-01-01"
* period.end = "2022-11-30"
* reporter = Reference(Organization/vbp-payer01)
* improvementNotation = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#increase "Increased score indicates improvement"

* group.population[0].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-measure-population#calculated-numerator
* group.population[=].id = "calculated-numerator"
* group.population[=].count = 220
* group.population[+].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-measure-population#calculated-denominator
* group.population[=].id = "calculated-denominator"
* group.population[=].count = 386
* group.measureScore = 57 '%'

* group.stratifier.code = http://hl7.org/fhir/measure-stratifier-example#region
* group.stratifier.stratum[0].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group.stratifier.stratum[=].component[0].code = http://loinc.org#87520-3
* group.stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group.stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group.stratifier.stratum[=].component[=].value.text = "Region 1"
* group.stratifier.stratum[=].population[0].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-measure-population#calculated-numerator
* group.stratifier.stratum[=].population[=].id = "calculated-numerator"
* group.stratifier.stratum[=].population[=].count = 100
* group.stratifier.stratum[=].population[+].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-measure-population#calculated-denominator
* group.stratifier.stratum[=].population[=].id = "calculated-denominator"
* group.stratifier.stratum[=].population[=].count = 180
* group.stratifier.stratum[=].measureScore = 56 '%'

* group.stratifier.stratum[+].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group.stratifier.stratum[=].component[0].code = http://loinc.org#87520-3
* group.stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#HMO
* group.stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group.stratifier.stratum[=].component[=].value.text = "Region 2"
* group.stratifier.stratum[=].population[0].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-measure-population#calculated-numerator
* group.stratifier.stratum[=].population[=].id = "calculated-numerator"
* group.stratifier.stratum[=].population[=].count = 10
* group.stratifier.stratum[=].population[+].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-measure-population#calculated-denominator
* group.stratifier.stratum[=].population[=].id = "calculated-denominator"
* group.stratifier.stratum[=].population[=].count = 13
* group.stratifier.stratum[=].measureScore = 8 '%'

* group.stratifier.stratum[+].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group.stratifier.stratum[=].component[0].code = http://loinc.org#87520-3
* group.stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group.stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group.stratifier.stratum[=].component[=].value.text = "Region 1"
* group.stratifier.stratum[=].population[0].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-measure-population#calculated-numerator
* group.stratifier.stratum[=].population[=].id = "calculated-numerator"
* group.stratifier.stratum[=].population[=].count = 100
* group.stratifier.stratum[=].population[+].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-measure-population#calculated-denominator
* group.stratifier.stratum[=].population[=].id = "calculated-denominator"
* group.stratifier.stratum[=].population[=].count = 1880
* group.stratifier.stratum[=].measureScore = 56 '%'

* group.stratifier.stratum[+].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group.stratifier.stratum[=].component[0].code = http://loinc.org#87520-3
* group.stratifier.stratum[=].component[=].value = http://terminology.hl7.org/CodeSystem/v3-ActCode#PPO
* group.stratifier.stratum[=].component[+].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#LOC
* group.stratifier.stratum[=].component[=].value.text = "Region 2"
* group.stratifier.stratum[=].population[0].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-measure-population#calculated-numerator
* group.stratifier.stratum[=].population[=].id = "calculated-numerator"
* group.stratifier.stratum[=].population[=].count = 10
* group.stratifier.stratum[=].population[+].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-measure-population#calculated-denominator
* group.stratifier.stratum[=].population[=].id = "calculated-denominator"
* group.stratifier.stratum[=].population[=].count = 13
* group.stratifier.stratum[=].measureScore = 8 '%'