Instance: quality-measurereport13
InstanceOf: MeasureReport
Usage: #example
Description: "This is an example Diabetic Retinopathy: Communication with the Physician Managing Ongoing Diabetes Care MeasureReport for the *VBP Quality MeasureReport* profile."
* meta.profile = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/vbp-quality-measurereport"
* meta.source = "http://example.org/fhir/server"
* meta.extension[0].url = "http://hl7.org/fhir/StructureDefinition/instance-name"
* meta.extension[=].valueString = "VBP Quality MeasureReport Example"
* meta.extension[+].url = "http://hl7.org/fhir/StructureDefinition/instance-description"
* meta.extension[=].valueMarkdown = "This is an example Diabetic Retinopathy: Communication with the Physician Managing Ongoing Diabetes Care MeasureReport for the *VBP Quality MeasureReport* profile."

* extension[0].url = "http://hl7.org/fhir/us/davinci-deqm/StructureDefinition/extension-measureScoring"
* extension[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/measure-scoring#proportion
//* extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/star-score"
//* extension[=].valueDecimal = 5
//* extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/weight"
//* extension[=].valueDecimal = 3

* extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/threshold"
* extension[=].extension[0].url = "value"
* extension[=].extension[=].valueQuantity = 69 '%'
* extension[=].extension[+].url = "star"
* extension[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/quality-star-rating#star-3

* status = #complete
* type = #summary
* measure = "http://hl7.org/fhir/us/cqfmeasures/Measure/measure-diabetes-retinopathy-FHIR"
* date = "2022-12-31"
* period.start = "2022-10-01"
* period.end = "2022-12-31"
* reporter = Reference(Organization/vbp-payer01)
* improvementNotation = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#increase "Increased score indicates improvement"

* group.population[0].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-measure-population#calculated-numerator
* group.population[=].id = "pop1"
* group.population[=].count = 620
* group.population[+].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-measure-population#calculated-denominator
* group.population[=].id = "pop2"
* group.population[=].count = 800
* group.measureScore.value = 0.78

