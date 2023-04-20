Profile: VbpMeasureReport
Parent: MeasureReport
Id: vbp-performance-measurereport
Title: "Value-Based Performance MeasureReport"
Description: "Value-Based Performance MeasureReport is a payer-generated performance report against the specific details (metrics) of a value-based contract (VBC) or a value-based purchasing (VBP) which may include financial, quality, utilization, etc. over a time period."
* ^status = #draft
* ^version = "0.1.0"
* . ^short = "A value-based performance report"
* status MS
* type = #summary (exactly)
* type MS
* measure MS
* measure only Canonical(vbp-measure)
* measure ^short = "A Measure definition with contract level data for a value-based contract the report is for"
* subject MS
* subject only Reference($us-core-practitioner or $us-core-practitionerrole or $Group)
* subject.extension contains OrganizationSubject named orgSubject 1..1 MS 
* subject.extension[orgSubject] ^short = "What organization the report is for"
* date 1..1 MS
* reporter 1..1 MS
* reporter only Reference($us-core-organization)
* period 1..1 MS
* period ^short = "What performance period the report covers"
* improvementNotation 0..0
* group 0..* MS
* group ^short = "Performance metrics in the report. Each group contains data for a performance metric."
* group.id MS 
* group.code from vbp-performance-metric-type (extensible)
* group.code ^short = "The performance metric"
* group.measureScore 0..1 MS 
* group.measureScore ^short = "The performance metric value"
* group.measureScore.extension contains AlternateMeasureScore named altMeasureScore 0..1 MS
* group.measureScore.extension[AlternateMeasureScore] ^short = "Additional data type choices for the value of the performance metric"
* group.extension contains PaymentStream named paymentStream 0..* MS 
* group.extension[PaymentStream] ^short = "The payment stream the performance metric is part of"
* group.extension contains QualityProgram named qualityProgram 0..1 MS 
* group.extension[QualityProgram] ^short = "The quality program the performance metric is part of"
* group.extension contains ServicePeriod named servicePeriod 0..1 MS 
* group.extension[ServicePeriod] ^short = "The service period for the performance metric"
* group.extension[ServicePeriod] ^definition = "The service period may be the same as or a subset of the performance period the report covers."
* group.extension contains PaidThroughDate named paidThroughDate 0..1 MS
* group.extension[paidThroughDate] ^short = "Ending date of the pay cycle"
* group.extension contains Baseline named baseline 0..1 MS
* group.extension[Baseline] ^short = "The baseline for the performance metric"
* group.stratifier MS
* group.stratifier.stratum MS
* group.stratifier.stratum.measureScore MS
* group.stratifier.stratum.measureScore ^short = "Stratified performance metric value"
* group.stratifier.stratum.measureScore.extension contains AlternateMeasureScore named altMeasureScore 0..1 MS
* group.stratifier.stratum.measureScore.extension[AlternateMeasureScore] ^short = "Additional data type choices for the stratified performance metric value"
* evaluatedResource 0..* MS
* evaluatedResource only Reference($vbp-quality-measurereport)
* evaluatedResource ^short = "Quality measure report(s) referenced by the value-based performance report"