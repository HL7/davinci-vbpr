Instance: quality-measurereport02
InstanceOf: MeasureReport
Usage: #example
Description: "This is an example Colorectal Cancer Screening MeasureReport for the *VBP Quality MeasureReport* profile."
* meta.profile = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/vbp-quality-measurereport"
* meta.source = "http://example.org/fhir/server"
* meta.extension[0].url = "http://hl7.org/fhir/StructureDefinition/instance-name"
* meta.extension[=].valueString = "VBP Quality MeasureReport Example"
* meta.extension[+].url = "http://hl7.org/fhir/StructureDefinition/instance-description"
* meta.extension[=].valueMarkdown = "This is an example Colorectal Cancer Screening MeasureReport for the *VBP Quality MeasureReport* profile."

* extension[0].url = "http://hl7.org/fhir/us/davinci-deqm/StructureDefinition/extension-measureScoring"
* extension[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/measure-scoring#proportion
* extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/star-score"
* extension[=].valueDecimal = 5
* extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/weight"
* extension[=].valueDecimal = 3

* extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/threshold"
* extension[=].extension[0].url = "value"
* extension[=].extension[=].valueQuantity = 40 '%'
* extension[=].extension[+].url = "starRating"
* extension[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/quality-star-rating#star-2
* extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/threshold"
* extension[=].extension[0].url = "value"
* extension[=].extension[=].valueQuantity = 50 '%'
* extension[=].extension[+].url = "starRating"
* extension[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/quality-star-rating#star-3
* extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/threshold"
* extension[=].extension[0].url = "value"
* extension[=].extension[=].valueQuantity = 60 '%'
* extension[=].extension[+].url = "starRating"
* extension[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/quality-star-rating#star-4
* extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/threshold"
* extension[=].extension[0].url = "value"
* extension[=].extension[=].valueQuantity = 70 '%'
* extension[=].extension[+].url = "starRating"
* extension[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/quality-star-rating#star-5

* status = #complete
* type = #summary
* measure = "http://hl7.org/fhir/us/cqfmeasures/Measure/measure-exm130-FHIR"
* date = "2023-01-15"
* period.start = "2022-01-01"
* period.end = "2022-11-30"
* reporter = Reference(Organization/vbp-payer01)
* improvementNotation = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#increase "Increased score indicates improvement"
* group.population[0].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-measure-population#calculated-numerator
* group.population[=].id = "calculated-numerator"
* group.population[=].count = 70
* group.population[+].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-measure-population#calculated-denominator
* group.population[=].id = "calculated-denominator"
* group.population[=].count = 100
* group.population[+].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
* group.population[=].id = "initial-population"
* group.population[=].count = 100
* group.population[+].code = http://terminology.hl7.org/CodeSystem/measure-population#numerator "Numerator"
* group.population[=].id = "numerator"
* group.population[=].count = 70
* group.population[+].code = http://terminology.hl7.org/CodeSystem/measure-population#denominator "Denominator"
* group.population[=].id = "denominator"
* group.population[=].count = 100
* group.population[+].code = http://terminology.hl7.org/CodeSystem/measure-population#denominator-exclusion "Denominator Exclusion"
* group.population[=].id = "denominator-exclusion"
* group.population[=].count = 0
* group.measureScore.value = 0.7