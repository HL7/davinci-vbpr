Instance: quality-measurereport12
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

* extension[+].url = "http://hl7.org/fhir/StructureDefinition/measurereport-category"
* extension[=].valueCodeableConcept = http://hl7.org/fhir/CodeSystem/measurereport-category#vbp
//* extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/score"
//* extension[=].valueDecimal = 5

* extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/threshold"
* extension[=].extension[0].url = "threshold"
* extension[=].extension[=].valueQuantity = 62 '%'
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/threshold-type#star-3

* status = #complete
* type = #summary
* measure = "http://hl7.org/fhir/us/cqfmeasures/Measure/measure-exm130-FHIR"
//* measure = "http://example.org/Measure/measure-colorectal-cancer-screening-FHIR"
* date = "2022-12-31"
* period.start = "2022-10-01"
* period.end = "2022-12-31"
* reporter = Reference(Organization/vbp-payer01)
* improvementNotation = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#increase "Increased score indicates improvement"

* group.population[0].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-measure-population#calculated-numerator
* group.population[=].id = "pop1"
* group.population[=].count = 750
* group.population[+].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-measure-population#calculated-denominator
* group.population[=].id = "pop2"
* group.population[=].count = 800
* group.population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population
* group.population[=].id = "pop3"
* group.population[=].count = 800
* group.population[+].code = http://terminology.hl7.org/CodeSystem/measure-population#denominator
* group.population[=].id = "pop4"
* group.population[=].count = 800
* group.population[+].code = http://terminology.hl7.org/CodeSystem/measure-population#denominator-exclusion
* group.population[=].id = "pop5"
* group.population[=].count = 0
* group.population[+].code = http://terminology.hl7.org/CodeSystem/measure-population#numerator
* group.population[=].id = "pop6"
* group.population[=].count = 750
* group.measureScore.value = 0.94

