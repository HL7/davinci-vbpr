Profile: VbpQualityMeasureReport
Parent: $DEQMSummaryMeasureReport
Id: vbp-quality-measurereport
Title: "VBP Quality MeasureReport"
Description: "VBP quality measure report at the summary level for a population. This profile is derived from the Data Exchange for Quality Measure IG's DEQM Summary MeasureReport."
* ^status = #active
* ^version = "1.0.0-ballot"
//* meta 1..1 MS
//* meta.profile 1.. MS
//* extension contains Weight named weight 0..1 MS
* extension contains Score named score 0..1 MS
* extension contains Threshold named threshold 0..* MS 
* group.population.code from vbp-measure-population (extensible)
* group.stratifier.stratum.population.code from vbp-measure-population (extensible)
