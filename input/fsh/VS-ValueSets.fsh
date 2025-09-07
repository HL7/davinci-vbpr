ValueSet: VbpPerformanceMetricsVS
Title: "Performance Metric"
Id: vbp-performance-metric
Description: "Type of value-based performance reporting performance metric."
* ^experimental = false
* codes from system vbp-performance-metric

ValueSet: LineOfBusinessVS
Title: "Line of Business Value Set"
Id: lob
Description: "Type of line of business."
* ^experimental = false
* $SOP#1  "MEDICARE"
* $SOP#2  "MEDICAID"
* $SOP#5 "PRIVATE HEALTH INSURANCE"

ValueSet: PaymentStreamVS
Title: "Payment Stream Value Set"
Id: vbp-payment-stream
Description: "Type of payment stream."
* ^experimental = false
* codes from system payment-stream

ValueSet: HCPLANFrameworkVS
Title: "HCPLAN Framework Categories"
Id: hcplan-framework
Description: "HCPLAN framework categories for value-based performance. HCPLAN framework represents payments from public and private payers to provider organizations."
* ^experimental = false
* codes from system hcplan-framework

ValueSet: VBPIncentiveVS
Title: "Incentive"
Id: vbp-incentive
Description: "What type of incentive."
* ^experimental = false
* codes from system vbp-incentive

ValueSet: VBPCohortVS
Title: "Cohort"
Id: vbp-cohort
Description: "Cohort types."
* ^experimental = false
* codes from system vbp-cohort

ValueSet: VBPRMeasurePopulationVS
Title: "VBP Measure Population Type"
Id: vbp-measure-population
Description: "Measure population type that includes calculated-denominator and calculated-numerator."
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/measure-population|2.0.0
* include $vbp-measure-population#calculated-denominator "calculated-donominator"
* include $vbp-measure-population#calculated-numerator "calculated-numerator"

ValueSet: ThresholdTypeVS
Title: "Threshold Type"
Id: threshold-type
Description: "The threshold type."
* ^experimental = false
* codes from system threshold-type

ValueSet: MeasureStratifierExampleVS
Title: "Measure Stratifier Example"
Id: measure-stratifier-example
Description: "Example stratifiers that could be used to stratify measure or performance metrics."
* ^experimental = false
* codes from system measure-stratifier-example

ValueSet: MeasureContratualStatusVS
Title: "Measure Contractual Status"
Id: measure-contractual-status
Description: "Contractual status of a measure as specified in a value-based contract."
* ^experimental = false
* codes from system measure-contractual-status