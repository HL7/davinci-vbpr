
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

Extension: AlternateMeasureScore
Id: alternate-measurescore
Title: "Alternate Measure Score"
Description: "Other allowed data type choices for the measureScore element in addition to Quantity. The alternate data type for measure score is determined by the performance metric type."
* ^context[+].type = #element
* ^context[=].expression = "MeasureReport"
* ^context[+].type = #element
* ^context[=].expression = "MeasureReport.group.measureScore"
* ^context[+].type = #element
* ^context[=].expression = "MeasureReport.group.stratifier.stratum.measureScore"
* value[x] 0..1 
* value[x] only decimal or integer or Money or string

Extension: Baseline
Id: baseline
Title: "Baseline"
Description: "Performance metric baseline"
* extension contains value 1..1 MS and period 1..1 MS
* extension[value] ^short = "The baseline data for the metric"
* extension[value].value[x] 1..1
* extension[value].value[x] only decimal or integer or Quantity or Money or string
* extension[period] ^short = "The baseline data performance period"
* extension[period].value[x] only Period 
* extension[period].valuePeriod 1..1

Extension: LOB
Id: lob
Title: "Line of Business Extension"
Description: "An extension for a line of business (LOB)."
* ^context[+].type = #element
* ^context[=].expression = "Measure"
* value[x] 1..1 
* valueCodeableConcept from lob (extensible)

Extension: PaidThroughDate
Id: paid-through-date
Title: "Paid Through Date"
Description: "Paid through date is the ending date of the pay cycle"
* ^context[+].type = #element
* ^context[=].expression = "MeasureReport"
* ^context[+].type = #element
* ^context[=].expression = "MeasureReport.group"
* value[x] 1..1 
* value[x] only date

Extension: PaymentStream
Id: payment-stream
Title: "Payment Stream"
Description: "Type of payment stream"
* ^context[+].type = #element
* ^context[=].expression = "MeasureReport"
* ^context[+].type = #element
* ^context[=].expression = "MeasureReport.group"
* ^context[+].type = #element
* ^context[=].expression = "Measure"
* value[x] 1..1 
* valueCodeableConcept from vbp-payment-stream (extensible)

Extension: ProgramModel
Id: program-model
Title: "Program Model"
Description: "HCP-LAN APM framework"
* ^context[+].type = #element
* ^context[=].expression = "Measure"
* value[x] 1..1 
* valueCodeableConcept from hcplan-framework (extensible)

Extension: OrganizationSubject
Id: organization-subject
Title: "Orgnization Subject"
Description: "Additional resource type, Organization, as Subject reference. MeasureReport in FHIR R5 has Organization as a choice for MeasureReport.subject."
* ^context.type = #element
* ^context.expression = "MeasureReport.subject"
* value[x] 0..1 
* value[x] only Reference($us-core-organization)

Extension: QualityProgram
Id: quality-program
Title: "Quality Program"
Description: "Quality program"
* ^context[+].type = #element
* ^context[=].expression = "MeasureReport"
* ^context[+].type = #element
* ^context[=].expression = "MeasureReport.group"
* value[x] 1..1 
* valueCodeableConcept from quality-program (example)

Extension: ServicePeriod
Id: service-period
Title: "Service Period"
Description: "Service period"
* ^context[+].type = #element
* ^context[=].expression = "MeasureReport"
* ^context[+].type = #element
* ^context[=].expression = "MeasureReport.group"
* value[x] 1..1 
* value[x] only Period

Extension: StarScore
Id: star-score
Title: "Star Score"
Description: "Weighted average star score of individual measures"
* ^context[+].type = #element
* ^context[=].expression = "MeasureReport"
* value[x] 1..1 
* value[x] only decimal

Extension: Threshold
Id: threshold
Title: "Threshold"
Description: "Threshold"
* extension contains 
    value 1..1 MS and 
    star 0..1 MS
* extension[value] only Extension    
* extension[value] ^short = "Threshold"
* extension[value] ^definition = "The value of threshold cut point"
* extension[value].value[x] 1..1
* extension[value].value[x] only decimal or Quantity
* extension[star] only Extension
* extension[star] ^short = "Star for star threshold"
* extension[star] ^definition = "Indicates whether is star 1, star 2, etc."
//* extension[starRating].value[x] only CodeableConcept
* extension[star].valueCodeableConcept from quality-star-rating (extensible)

Extension: Weight
Id: weight
Title: "Weight"
Description: "What is the weight of the contribution of this measure to the overall score."
* ^context[+].type = #element
* ^context[=].expression = "MeasureReport"
* value[x] 1..1 
* value[x] only decimal

Extension: GroupReference
Id: group-reference
Title: "Weight"
Description: "Reference to a group within the MeasureReport"
* ^context[+].type = #element
* ^context[=].expression = "MeasureReport.evaluatedResource"
* value[x] 1..1 
* value[x] only string


