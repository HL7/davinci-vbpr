Extension: AlternateMeasureScore
Id: alternate-measurescore
Title: "Alternate Measure Score"
Description: "The Alternate Measure Score Extension allows other data type choices be used for the measureScore element in addition to Quantity. The alternate data type for measure score is determined by the performance metric type."
* ^context[+].type = #element
* ^context[=].expression = "MeasureReport"
* ^context[+].type = #element
* ^context[=].expression = "MeasureReport.group.measureScore"
* ^context[+].type = #element
* ^context[=].expression = "MeasureReport.group.stratifier.stratum.measureScore"
* value[x] 0..1 
* value[x] only decimal or integer or Money or CodeableConcept

Extension: Baseline
Id: baseline
Title: "Baseline"
Description: "The Baseline Extension is a complex extension. It is used to state the baseline that the performance metric is used for comparisons."
* ^context[+].type = #element
* ^context[=].expression = "MeasureReport"
* ^context[+].type = #element
* ^context[=].expression = "MeasureReport.group"
* value[x] 0..0
* extension contains        
    baseline 1..1 MS and 
    period 0..1 MS
* extension[baseline] ^short = "The baseline value"
* extension[baseline].value[x] 1..1
* extension[baseline].value[x] only decimal or integer or Quantity or Money or CodeableConcept
* extension[period] ^short = "The time period the baseline was measured"
* extension[period].value[x] only Period 

Extension: LOB
Id: lob
Title: "Line of Business"
Description: "The Line of Business (LOB) Extension is used to indicate whether the value-based contract is for Medicare, Medicaid, or commercial (private insurance)."
* ^context[+].type = #element
* ^context[=].expression = "Measure"
* value[x] 1..1 
* valueCodeableConcept from lob (extensible)

Extension: PaidThroughDate
Id: paid-through-date
Title: "Paid Through Date"
Description: "Paid through date is the ending date of the pay cycle."
* ^context[+].type = #element
* ^context[=].expression = "MeasureReport"
* ^context[+].type = #element
* ^context[=].expression = "MeasureReport.group"
* value[x] 1..1 
* value[x] only date

Extension: PaymentStream
Id: payment-stream
Title: "Payment Stream"
Description: "The Payment Stream Extension is a complex extension that defines the type of payment stream. A value-based contract may contain different types of payment streams, such as quality incentive payment and care coordination fee."
* ^context[+].type = #element
* ^context[=].expression = "MeasureReport"
* ^context[+].type = #element
* ^context[=].expression = "MeasureReport.group"
* ^context[+].type = #element
* ^context[=].expression = "Measure"
* extension contains 
    type 1..1 MS and 
    incentive 0..1 MS
* extension[type] ^short = "The type of payment stream"
* extension[type] ^definition = "The type of payment stream, such as quality incentive payment and care coordination fee."
* extension[type].value[x] 1..1
* extension[type].value[x] only CodeableConcept
* extension[type].value[x] from vbp-payment-stream (extensible)
* extension[incentive] ^short = "For quality incentive payment, what type of incentive"
* extension[incentive] ^definition = "For quality incentive payment, what type of incentive"
* extension[incentive].value[x] only CodeableConcept 
* extension[incentive].value[x] from vbp-incentive (extensible)

Extension: ProgramModel
Id: program-model
Title: "Program Model"
Description: "The Program Model Extension is a complex extension, which defines the HCP-LAN Alternative Payment Model (APM) framework specified APM categories and which cohort this program model applies to."
* ^context[+].type = #element
* ^context[=].expression = "Measure"
//* value[x] 1..1 
//* valueCodeableConcept from hcplan-framework (extensible)
* extension contains 
    hcplan 1..1 MS and 
    cohort 0..1 MS
* extension[hcplan] ^short = "HCP-LAN APM framework APM category"
* extension[hcplan] ^definition = "HCP-LAN APM framework APM category"
* extension[hcplan].value[x] 1..1
* extension[hcplan].value[x] only CodeableConcept
* extension[hcplan].value[x] from hcplan-framework (extensible)
* extension[cohort] ^short = "Which cohort this program model applies to"
* extension[cohort] ^definition = "Which cohort this program model applies to"
* extension[cohort].value[x] only CodeableConcept 
* extension[cohort].value[x] from vbp-cohort (extensible)

Extension: OrganizationSubject
Id: organization-subject
Title: "Organization Subject"
Description: "The Organization Subject Extension allows using Organization as an alternative resource type for the Subject reference."
* ^context.type = #element
* ^context.expression = "MeasureReport.subject"
* value[x] 0..1 
* value[x] only Reference($us-core-organization)

Extension: ServicePeriod
Id: service-period
Title: "Service Period"
Description: "The Service period for a payment stream."
* ^context[+].type = #element
* ^context[=].expression = "MeasureReport"
* ^context[+].type = #element
* ^context[=].expression = "MeasureReport.group"
* value[x] 1..1 
* value[x] only Period

Extension: Score
Id: score
Title: "Score"
Description: "The Score Extension is used to specify the score of a measure, such as star score."
* ^context[+].type = #element
* ^context[=].expression = "MeasureReport"
* value[x] 1..1 
* value[x] only decimal

Extension: Threshold
Id: threshold
Title: "Threshold"
Description: "The Threshold Extension is a complex extension that defines a threshold needed to be met when measuring performance."
* ^context[+].type = #element
* ^context[=].expression = "MeasureReport"
* value[x] 0..0
* extension contains 
    threshold 1..1 MS and 
    type 1..1 MS 
* extension[threshold] only Extension    
* extension[threshold] ^short = "The threshold percentile"
* extension[threshold] ^definition = "The threshold percentile"
* extension[threshold].value[x] 1..1
* extension[threshold].value[x] only decimal or Quantity
* extension[type] only Extension
* extension[type] ^short = "The type or the name of the threshold"
* extension[type] ^definition = "The type or the name of the threshold, such as star-2 threshold in star rating"
* extension[type].value[x] only CodeableConcept
* extension[type].value[x] 1..1
* extension[type].value[x] from threshold-type (extensible)

//Extension: Weight
//Id: weight
//Title: "Weight"
//Description: "What is the weight of the contribution of this measure to the overall score."
//* ^context[+].type = #element
//* ^context[=].expression = "MeasureReport"
//* value[x] 1..1 
//* value[x] only decimal

Extension: GroupReference
Id: group-reference
Title: "Group Reference"
Description: "Reference to a group within the MeasureReport."
* ^context[+].type = #element
* ^context[=].expression = "MeasureReport.evaluatedResource"
* value[x] 1..1 
* value[x] only string



