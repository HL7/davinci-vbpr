Extension: Cost
Id: ext-cost
Title: "Cost Extension"
Description: "An extension to enter cost amount for different types of cost."
* ^context[0].type = #element
* ^context[0].expression = "MeasureReport"
* extension contains 
    CostType 1..1 MS and 
    CostAmount 1..1 MS 
* extension[CostType] ^short = "Type of value-based contract cost"
* extension[CostType].valueCodeableConcept only CodeableConcept
* extension[CostType].valueCodeableConcept from vbc-cost (extensible)
* extension[CostAmount] ^short = "Cost amount"
* extension[CostAmount].valueMoney only Money

Extension: Revenue
Id: ext-revenue
Title: "Revenue Extension"
Description: "An extension to enter the amount of revenue for different revenue types."
* ^context[0].type = #element
* ^context[0].expression = "MeasureReport"
* extension contains 
    RevenueType 1..1 MS and 
    RevenueAmount 1..1 MS 
* extension[RevenueType] ^short = "Type of value-based contract revenue"
* extension[RevenueType].valueCodeableConcept only CodeableConcept
* extension[RevenueType].valueCodeableConcept from vbc-revenue (extensible)
* extension[RevenueAmount] ^short = "Revenue amount"
* extension[RevenueAmount].valueMoney only Money

Extension: Claim
Id: ext-claim
Title: "Claim Extension"
Description: "An extension to enter the amount of claim for different claim types."
* ^context[0].type = #element
* ^context[0].expression = "MeasureReport"
* extension contains 
    ClaimType 1..1 MS and 
    ClaimAmount 1..1 MS 
* extension[ClaimType] ^short = "Type of claim"
* extension[ClaimType].valueCodeableConcept only CodeableConcept
* extension[ClaimType].valueCodeableConcept from $ClaimTypeValueSet (extensible)
* extension[ClaimAmount] ^short = "Claim amount"
* extension[ClaimAmount].valueMoney only Money

Extension: IBNR
Id: ext-ibnr
Title: "IBNR Extension"
Description: "An extension to enter the amount for Incurred But Not Reported (IBNR) expense."
* ^context[0].type = #element
* ^context[0].expression = "MeasureReport"
* extension contains 
    IBNRType 1..1 MS and 
    IBNRAmount 1..1 MS 
* extension[IBNRType] ^short = "Type of IBNR"
* extension[IBNRType].valueCodeableConcept only CodeableConcept
* extension[IBNRType].valueCodeableConcept from vbc-ibnr (extensible)
* extension[IBNRAmount] ^short = "The amount of IBNR"
* extension[IBNRAmount].valueMoney only Money

Extension: LossRatio
Id: ext-loss-ratio
Title: "Loss Ratio Extension"
Description: "An extension to enter the amount of loss ratio."
* ^context[0].type = #element
* ^context[0].expression = "MeasureReport"
* extension contains 
    LossRatio 1..1 MS and 
    LossRatioValue 1..1 MS 
* extension[LossRatio] ^short = "Type of loss ratio"
* extension[LossRatio].valueCodeableConcept only CodeableConcept
* extension[LossRatio].valueCodeableConcept from vbc-loss-ratio (extensible)
* extension[LossRatioValue] ^short = "Loss ratio value"
* extension[LossRatioValue].valueRatio only Ratio

Extension: PerformanceMetric
Id: ext-performance-metric
Title: "Performance Metric Extension"
Description: "An extension for performance metric and details for a value-based contract."
* ^context[0].type = #element
* ^context[0].expression = "MeasureReport"
* extension contains 
    MetricType 1..1 MS and 
    MetricValue 1..1 MS and
    MetricDetail 0..1 MS
* extension[MetricType] ^short = "Type of performance metric"
* extension[MetricType].valueCodeableConcept only CodeableConcept 
* extension[MetricType].valueCodeableConcept from vbc-performance-metric-type (extensible)
* extension[MetricValue] ^short = "Value of a performance metric"
* extension[MetricValue].valueMoney only Money
* extension[MetricValue] ^short = "Detail of a performance metric"
* extension[MetricValue].value[x] 1..1

Extension: Contract
Id: ext-vbc-contract
Title: "VBC Contract Extension"
Description: "An extension for a Value-Based Contract."
* value[x] 1..1 
* valueReference only Reference (VbcContract) 

Extension: LOB
Id: ext-lob
Title: "Line of Business Extension"
Description: "An extension for a line of business (LOB)."
* value[x] 1..1 
* valueCodeableConcept from lob (extensible)
