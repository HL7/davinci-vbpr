Profile: VbprMeasureReport
Parent: MeasureReport
Id: vbpr-performance-measurereport
Title: "Value-Based Performance Report"
Description: "Value-Based Performance Report is a payer-generated performance report against the specific details (metrics) of a value-based contract which may include financial, quality, utilization, etc. over a time period."
* ^status = #draft
* ^version = "0.1.0"
* status MS
* type = #summary (exactly)
* type MS
* measure MS
* measure only Canonical(vbpr-measure)
* subject 1..1 MS
* subject only Reference($us-core-practitioner or $us-core-practitionerrole or $Group)
* subject.extension contains AlternateSubject named altSubject 0..1 MS 
* date 1..1 MS
* reporter 1..1 MS
* reporter only Reference($us-core-organization)
* period 1..1 MS
* improvementNotation 0..0
* group 0..* MS
* group.id MS 
* group.code from vbpr-performance-metric-type (extensible)
* group.measureScore 0..1 MS 
* group.measureScore.extension contains AlternateScoreType named altScoreType 0..1 MS
* group.extension contains PaymentStream named paymentStream 0..* MS 
* group.extension contains ServicePeriod named servicePeriod 0..1 MS 
* group.extension contains PaidThroughDate named paidThroughDate 0..1 MS
* group.stratifier MS
* group.stratifier.stratum MS
* group.stratifier.stratum.measureScore MS
* group.stratifier.stratum.measureScore.extension contains AlternateScoreType named altScoreType 0..1 MS
//* evaluatedResource Reference($VbprQualityMeasureReport) 0..*
* evaluatedResource 0..* MS
* evaluatedResource only Reference($vbpr-quality-measurereport)
* evaluatedResource ^short = "What data was used to calculate the weighted star score"
//* extension contains VBPRQualityMeasureReport named vbprQualityMeasureReport 0..* MS
