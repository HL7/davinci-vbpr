Profile: VbpQualityMeasureReport
Parent: $DEQMSummaryMeasureReport
Id: vbp-quality-measurereport
Title: "VBP Quality MeasureReport"
Description: "VBP quality measure report at the summary level for a population. This profile is derived from the Data Exchange for Quality Measure IG's DEQM Summary MeasureReport."
* ^status = #active
* ^version = "1.0.0"

* extension contains $measurereport-category named measurereport-category 1..1 MS
* extension[measurereport-category].extension ..0
* extension[measurereport-category].value[x] 1..1
* extension[measurereport-category].value[x].coding ^slicing.discriminator.type = #value
* extension[measurereport-category].value[x].coding ^slicing.discriminator.path = "code"
* extension[measurereport-category].value[x].coding ^slicing.rules = #open
* extension[measurereport-category].value[x].coding ^slicing.ordered = false
* extension[measurereport-category].value[x].coding contains vbp 1..1
* extension[measurereport-category].value[x].coding[vbp].code 1..1
* extension[measurereport-category].value[x].coding[vbp].code = #vbp (exactly)
* extension[measurereport-category].value[x].coding[vbp].display 0..1
* extension[measurereport-category].value[x].coding[vbp].display = "Value-Based Performance"

* extension contains Score named score 0..1 MS
* extension[score] ^short = "Score of a measure, such as star rating score"
* extension contains Threshold named threshold 0..* MS 
* extension[threshold] ^short = "Threshold needed to be met when measuring performance"

* group.population.code from vbp-measure-population (extensible)
* group.stratifier.stratum.population.code from vbp-measure-population (extensible)

* group.stratifier.code from measure-stratifier-example (example)
* group.stratifier.stratum.component.code MS
* group.stratifier.stratum.component.code from measure-stratifier-example (example)
* group.stratifier.stratum.component.value MS

* group.stratifier.stratum.extension contains Score named score 0..1 MS
* group.stratifier.stratum.extension[score] ^short = "What score such as star rating score this stratum achieved"