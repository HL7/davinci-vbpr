
//Extension: PerformanceMetric
//Id: performance-metric
//Title: "Performance Metric Extension"
//Description: "An extension for performance metric."
//* ^context[0].type = #element
//* ^context[0].expression = "MeasureReport"
//* id 1..1 MS
//* extension contains 
//    MetricType 1..1 MS and Value 1..1 MS
//* extension[MetricType] ^short = "Type of value-based performance reporting metric"
//* extension[MetricType].valueCodeableConcept 1..1
//* extension[MetricType].valueCodeableConcept only CodeableConcept 
//* extension[MetricType].valueCodeableConcept from vbpr-performance-metric-type (extensible)
//* extension[Value].value[x] ^short = "Value of a performance metric"
//* extension[Value].value[x] 1..1
//* extension[Value].value[x] only decimal or integer or Quantity or Money or string

//Extension: VBPRQualityMeasureReport
//Id: vbpr-quality-measure-report
//Title: "VBPR Quality MeasureReport"
//Description: "An extension for VBPR quality MeasureReport at the summary level."
//* valueReference only Reference (VbprQualityMeasureReport)

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
Description: "Paid through date is the ending date of the pay cycle"
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

Extension: AlternateMeasureScore
Id: alternate-measurescore
Title: "Alternate Measure Score"
Description: "Other allowed data type choices for the measureScore element in addition to Quantity. The alternate data type for measure score is determined by the performance metric type."
* value[x] 0..1 
* value[x] only decimal or integer or Money or string

Extension: OrganizationSubject
Id: organization-subject
Title: "Orgnization Subject"
Description: "Additional resource type, Organization, as Subject reference. MeasureReport in FHIR R5 has Organization as a choice for MeasureReport.subject."
* ^context.type = #element
* ^context.expression = "subject"
* value[x] 0..1 
* value[x] only Reference($us-core-organization)

Extension: ServicePeriod
Id: service-period
Title: "Service Period"
Description: "Service period"
* value[x] 1..1 
* value[x] only Period

//Extension: Weight
//Id: weight
//Title: "Weight"
//Description: "Weight"
//* value[x] 1..1 
//* value[x] only decimal or integer

//Extension: AlternateCount
//Id: alternate-count
//Title: "Alternate Count"
//Description: "Other allowed data type choices for the count element in addition to Integer. The alternate data type for count is determined by the performance metric type."
//* value[x] 0..1 
//* value[x] only Quantity or decimal or Money or string