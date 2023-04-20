ValueSet: VbpPerformanceMetrics
Title: "Performance Metric Type Value Set"
Id: vbp-performance-metric-type
Description: "Type of value-based performance reporting performance metric"
* ^experimental = false
* codes from system vbp-performance-metric-type

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
Id: vbp-payment-stream
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

ValueSet: VBPRMeasurePopulation
Title: "VBP Measure Population Type"
Id: vbp-measure-population
Description: "The type of population."
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/measure-population
* include $vbp-measure-population#calculated-denominator "calculated-donominator"
* include $vbp-measure-population#calculated-numerator "calculated-numerator"

ValueSet: QualityStarRating
Title: "Quality Star Rating"
Id: quality-star-rating
Description: "Quality star rating"
* ^experimental = false
* codes from system quality-star-rating

ValueSet: MeasureStratifierExample
Title: "Measure Stratifier Example"
Id: measure-stratifier-example
Description: "Example stratifiers that could be used to stratify measure or performance metrics"
* ^experimental = true
* codes from system measure-stratifier-example