Profile: VbprQualityMeasureReport
Parent: $DEQMSummaryMeasureReport
Id: vbpr-quality-measurereport
Title: "VBPR Quality MeasureReport"
Description: "VBPR quality measure report at the summary level for a population. This profile is derived from the Data Exchange for Quality Measure IG's DEQM Summary MeasureReport."
* ^status = #draft
* ^version = "0.0.1"
* extension contains PerformanceMetric named performanceMetric 0..* MS
* extension contains Weight named weight 0..1 MS
