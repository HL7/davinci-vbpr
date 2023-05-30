ValueSet: VbpPerformanceMetrics
Title: "Performance Metric"
Id: vbp-performance-metric
Description: "Type of value-based performance reporting performance metric."
* ^experimental = false
* codes from system vbp-performance-metric

ValueSet: LineOfBusiness
Title: "Line of Business"
Id: lob
Description: "Type of line of business."
* ^experimental = false
* $SOP#1  "MEDICARE"
* $SOP#2  "MEDICAID"
* $SOP#5 "PRIVATE HEALTH INSURANCE"

ValueSet: PaymentStream
Title: "Payment Stream"
Id: vbp-payment-stream
Description: "Type of payment stream."
* ^experimental = false
* codes from system payment-stream

ValueSet: HCPLANFramework
Title: "HCPLAN Framework Categories"
Id: hcplan-framework
Description: "HCPLAN framework categories for value-based performance. HCPLAN framework represents payments from public and private payers to provider organizations."
* ^experimental = false
* codes from system hcplan-framework

ValueSet: VBPIncentive
Title: "Incentive"
Id: vbp-incentive
Description: "What type of incentive."
* ^experimental = false
* codes from system vbp-incentive

ValueSet: VBPCohort
Title: "Cohort"
Id: vbp-cohort
Description: "Cohort types."
* ^experimental = false
* codes from system vbp-cohort

ValueSet: VBPRMeasurePopulation
Title: "VBP Measure Population Type"
Id: vbp-measure-population
Description: "Measure population type that includes calculated-denominator and cacluated-numerator."
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/measure-population
* include $vbp-measure-population#calculated-denominator "calculated-donominator"
* include $vbp-measure-population#calculated-numerator "calculated-numerator"

ValueSet: ThresholdType
Title: "Threshold Type"
Id: threshold-type
Description: "The threshold type."
* ^experimental = false
* codes from system threshold-type

ValueSet: MeasureStratifierExample
Title: "Measure Stratifier Example"
Id: measure-stratifier-example
Description: "Example stratifiers that could be used to stratify measure or performance metrics."
* ^experimental = true
* codes from system measure-stratifier-example