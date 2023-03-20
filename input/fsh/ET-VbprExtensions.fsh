
Extension: PerformanceMetric
Id: performance-metric
Title: "Performance Metric Extension"
Description: "An extension for performance metric."
* ^context[0].type = #element
* ^context[0].expression = "MeasureReport"
* id 1..1 MS
* extension contains 
    MetricType 1..1 MS and Value 1..1 MS
* extension[MetricType] ^short = "Type of value-based performance reporting metric"
* extension[MetricType].valueCodeableConcept 1..1
* extension[MetricType].valueCodeableConcept only CodeableConcept 
* extension[MetricType].valueCodeableConcept from vbpr-performance-metric-type (extensible)
* extension[Value].value[x] ^short = "Value of a performance metric"
* extension[Value].value[x] 1..1
* extension[Value].value[x] only decimal or integer or Quantity or Money or string

Extension: VBPRQualityMeasureReport
Id: vbpr-quality-measure-report
Title: "VBPR Quality MeasureReport"
Description: "An extension for VBPR quality MeasureReport at the summary level."
* valueReference only Reference (VbprQualityMeasureReport)

//Extension: MetricValue
//Id: metric-value
//Title: "Value of a performance metric"
//Description: "An extension for performance metric value."
//* value[x] 1..1 
//* value[x] only decimal or integer or Quantity or Money or string

Extension: LOB
Id: lob
Title: "Line of Business Extension"
Description: "An extension for a line of business (LOB)."
* value[x] 1..1 
* valueCodeableConcept from lob (extensible)

Extension: PaidThroughDate
Id: paid-through-date
Title: "Paid Through Date"
Description: "Paid through date"
* value[x] 1..1 
* value[x] only date

Extension: StarScore
Id: star-score
Title: "Star Score"
Description: "Star score"
* value[x] 1..1 
* value[x] only decimal

Extension: PaymentStream
Id: payment-stream
Title: "Payment Stream"
Description: "Type of payment stream"
* value[x] 1..1 
* valueCodeableConcept from vbpr-payment-stream (extensible)

Extension: ProgramModel
Id: program-model
Title: "Program Model"
Description: "HCP-LAN APM framework"
* value[x] 1..1 
* valueCodeableConcept from hcplan-framework (extensible)

Extension: AlternateScoreType
Id: alternate-score-type
Title: "Alternate Score Type"
Description: "Possible value types for the measureScore elements in addition to the standard Quantity type. The alternate type is determined by the performance metric type."
* value[x] 0..1 
* value[x] only decimal or integer or Money or string

Extension: AlternateSubject
Id: alternate-subject
Title: "Alternate Subject"
Description: "Possible additional resource type as Subject reference. R5 has Organization as a choice for MeasureReport.subject."
* value[x] 0..1 
* value[x] only Reference ($USCoreOrganization)

Extension: ServicePeriod
Id: service-period
Title: "Service Period"
Description: "Service period"
* value[x] 1..1 
* value[x] only Period