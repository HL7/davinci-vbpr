
Extension: PerformanceMetric
Id: ext-performance-metric
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
Id: ext-vbpr-quality-measure-report
Title: "VBPR Quality MeasureReport"
Description: "An extension for VBPR quality MeasureReport at the summary level."
* valueReference only Reference (VbprQualityMeasureReport)

//Extension: Contract
//Id: ext-vbc-contract
//Title: "VBC Contract Extension"
//Description: "An extension for a Value-Based Contract."
//* value[x] 1..1 
//* valueReference only Reference (VbcContract) 

Extension: MetricValue
Id: ext-metric-value
Title: "Value of a performance metric"
Description: "An extension for performance metric value."
* value[x] 1..1 
* value[x] only decimal or integer or Quantity or Money or string

Extension: LOB
Id: ext-lob
Title: "Line of Business Extension"
Description: "An extension for a line of business (LOB)."
* value[x] 1..1 
* valueCodeableConcept from lob (extensible)

Extension: ServicePeriod
Id: ext-service-period
Title: "Service Period"
Description: "Service period"
* value[x] 1..1 
* value[x] only Period

Extension: PaidThroughDate
Id: ext-paid-through-date
Title: "Paid through date"
Description: "Paid through date"
* value[x] 1..1 
* value[x] only date

Extension: Weight
Id: ext-weight
Title: "Weight"
Description: "Weight"
* value[x] 1..1 
* value[x] only decimal

Extension: WeightedStarScore
Id: ext-weighted-star-score
Title: "Weight Star Score"
Description: "Weight star score"
* value[x] 1..1 
* value[x] only decimal

Extension: MetricReference
Id: ext-metric-reference
Title: "Metric reference"
Description: "Reference the unique id of performance metric in this report"
* value[x] 1..1 
* value[x] only string

Extension: PaymentStream
Id: ext-payment-stream
Title: "Payment Stream"
Description: "Type of payment stream"
* value[x] 1..1 
* valueCodeableConcept from vbpr-payment-stream (extensible)

Extension: ProgramModel
Id: ext-program-model
Title: "Program Model"
Description: "HCP-LAN APM framework"
* value[x] 1..1 
* valueCodeableConcept from hcplan-framework (extensible)