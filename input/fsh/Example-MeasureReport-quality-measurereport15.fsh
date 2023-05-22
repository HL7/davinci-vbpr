Instance: quality-measurereport15
InstanceOf: MeasureReport
Usage: #example
Description: "This is an example Diabetes: Medical Attention for Nephropathy MeasureReport for the *VBP Quality MeasureReport* profile."
* meta.profile = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/vbp-quality-measurereport"
* meta.source = "http://example.org/fhir/server"
* meta.extension[0].url = "http://hl7.org/fhir/StructureDefinition/instance-name"
* meta.extension[=].valueString = "VBP Quality MeasureReport Example"
* meta.extension[+].url = "http://hl7.org/fhir/StructureDefinition/instance-description"
* meta.extension[=].valueMarkdown = "This is an example Diabetes: Medical Attention for Nephropathy MeasureReport for the *VBP Quality MeasureReport* profile."

* extension[0].url = "http://hl7.org/fhir/us/davinci-deqm/StructureDefinition/extension-measureScoring"
* extension[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/measure-scoring#proportion
//* extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/score"
//* extension[=].valueDecimal = 5

* extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/threshold"
* extension[=].extension[0].url = "value"
* extension[=].extension[=].valueQuantity = 80 '%'
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/threshold-type#star-3

* status = #complete
* type = #summary
* measure = "http://example.org/Measure/measure-diabetes-nephropathy-FHIR"
* date = "2022-12-31"
* period.start = "2022-10-01"
* period.end = "2022-12-31"
* reporter = Reference(Organization/vbp-payer01)
* improvementNotation = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#increase "Increased score indicates improvement"

* group.population[0].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-measure-population#calculated-numerator
* group.population[=].id = "pop1"
* group.population[=].count = 450
* group.population[+].code = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/vbp-measure-population#calculated-denominator
* group.population[=].id = "pop2"
* group.population[=].count = 600
* group.measureScore.value = 0.75

