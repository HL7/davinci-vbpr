ValueSet: VBPRPerformanceMetrics
Title: "Performance Metric Type Value Set"
Id: vbpr-performance-metric-type
Description: "Type of value-based performance reporting performance metric"
* ^experimental = false
* codes from system vbpr-performance-metric-type

ValueSet: LineOfBusiness
Title: "Line of Business Value Set"
Id: lob
Description: "Type of line of business"
* ^experimental = false
* $SOP#1  "MEDICARE"
* $SOP#2  "MEDICAID"
* $SOP#5 "PRIVATE HEALTH INSURANCE"

ValueSet: PaymentStream
Title: "Payment Stream Value Set"
Id: vbpr-payment-stream
Description: "Type of payment stream"
* ^experimental = false
* codes from system payment-stream

ValueSet: HCPLANFramework
Title: "HPCLAN Framework Value Set"
Id: hcplan-framework
Description: "HCPLAN framework categories for value-based performance. HCPLAN framework represents payments from public and private payers to provider organizations."
* ^experimental = false
* codes from system hcplan-framework

ValueSet: QualityProgram
Title: "Quality Program Value Set"
Id: quality-program
Description: "Quality program"
* ^experimental = false
* codes from system quality-program

//ValueSet: VBPRMeasurePopulationType
//Title: "VBPR Measure Population Type Value Set"
//Id: vbpr-measure-population-type
//Description: "The type of population."
//* ^experimental = false
//* include codes from system http://terminology.hl7.org/CodeSystem/measure-population
//* include $coverage-type-cs#PPO
//* include $coverage-type-cs#HMO 