Profile: VbprMeasureReport
Parent: MeasureReport
Id: vbpr-performance-measurereport
Title: "Value-Based Performance Report"
Description: "Value-Based Performance Report is a payer-generated performance report against the specific details (metrics) of a value-based contract which may include financial, quality, utilization, etc. over a time period."
* ^status = #draft
* ^version = "0.0.1"
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
* period 1..1 MS
* improvementNotation 0..0
* group.stratifier MS
* group.extension contains PerformanceMetric named performanceMetric 0..* MS
//* group.extension contains ServicePeriod named servicePeriod 0..1 MS
* group.extension contains PaidThroughDate named paidThroughDate 0..1 MS
* group.code from vbpr-payment-stream (extensible)
* group.stratifier.stratum.extension contains MetricReference named metricReference 0..1 MS
* group.stratifier.stratum.extension contains MetricValue named metricValue 0..1 MS
* group.stratifier.stratum MS
* extension contains VBPRQualityMeasureReport named vbprQualityMeasureReport 0..* MS
* extension contains ServicePeriod named servicePeriod 0..1 MS
* extension contains PaidThroughDate named paidThroughDate 0..1 MS
* extension contains PaymentStream named paymentStream 0..* MS 
* extension contains WeightedStarScore named weightedStarScore 0..1 MS 
