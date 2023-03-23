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
* subject MS
* subject only Reference($us-core-practitioner or $us-core-practitionerrole or $Group)
* subject.extension contains OrganizationSubject named orgSubject 1..1 MS 
* subject.extension[orgSubject] ^short = "What organization the report is for"
* date 1..1 MS
* reporter 1..1 MS
* reporter only Reference($us-core-organization)
* period 1..1 MS
* improvementNotation 0..0
* group 0..* MS
* group.id MS 
* group.code from vbpr-performance-metric-type (extensible)
* group.measureScore 0..1 MS 
* group.measureScore ^short = "Performance metric value"
* group.measureScore.extension contains AlternateMeasureScore named altMeasureScore 0..1 MS
* group.extension contains PaymentStream named paymentStream 0..* MS 
* group.extension contains ServicePeriod named servicePeriod 0..1 MS 
* group.extension contains PaidThroughDate named paidThroughDate 0..1 MS
* group.extension[paidThroughDate] ^short = "Ending date of the pay cycle"
* group.population MS
* group.population.code from vbpr-measure-population-type (extensible)
* group.population.code ^short = "HMO | PPO | initial-population | numerator | numerator-exclusion | denominator | denominator-exclusion | denominator-exception | measure-population | measure-population-exclusion | measure-observation"
* group.stratifier MS
* group.stratifier.stratum MS
* group.stratifier.stratum.measureScore MS
* group.stratifier.stratum.measureScore.extension contains AlternateMeasureScore named altMeasureScore 0..1 MS
* evaluatedResource 0..* MS
* evaluatedResource only Reference($vbpr-quality-measurereport)
* evaluatedResource ^short = "Quality measure report(s) used to calculate the weighted average star"
