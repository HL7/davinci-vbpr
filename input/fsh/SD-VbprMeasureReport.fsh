Profile: VbprMeasureReport
Parent: MeasureReport
Id: vbpr-MeasureReport
Title: "Value-Based Performance Report"
Description: "Value-Based Performance Report is a payer-generated performance report against the specific details (metrics) of a value-based contract which may include financial, quality, utilization, etc. over a time period."
* extension contains Cost named cost 0..* MS
* extension contains Revenue named revenue 0..* MS
* extension contains Claim named claim 0..* MS
* extension contains IBNR named ibnr 0..* MS
* extension contains LossRatio named loss-ratio 0..* MS
* extension contains PerformanceMetric named performance-metric 0..* MS
* ^status = #active
* status MS
* type = #summary (exactly)
* type MS
* measure MS
* measure only Canonical(vbc-measure)
* subject 1..1 MS
* subject only Reference($USCorePractitioner or $USCorePractitionerRole or $Group)
* date 1..1 MS
* reporter 1..1 MS
* reporter only Reference($USCoreOrganization)
* improvementNotation ..0