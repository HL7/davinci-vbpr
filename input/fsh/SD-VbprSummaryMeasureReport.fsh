Profile: VbprSummaryMeasureReport
Parent: $DEQMSummaryMeasureReport
Id: vbpr-summary-measurereport
Title: "VBPR Summary MeasureReport"
Description: "Summary level measure report for a population. This profile is derived from the Data Exchange for Quality Measure IG's DEQM Summary MeasureReport."
* ^status = #draft
* ^version = "0.0.1"
* extension contains PerformanceMetric named performanceMetric 0..* MS
* extension contains Weight named weight 0..1 MS
