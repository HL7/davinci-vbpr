ValueSet: VBPRPerformanceMetrics
Title: "Performance metric type"
Id: vbpr-performance-metric-type
Description: "Type of value-based performance reporting performance metric"
* ^experimental = false
* codes from system vbpr-performance-metric-type 
* exclude $PerformanceMetricTypeCS#weighted-star-score

ValueSet: LineOfBusiness
Title: "Type of line of business"
Id: lob
Description: "Type of line of business"
* ^experimental = false
* $SOP#1  "MEDICARE"
* $SOP#2  "MEDICAID"
* $SOP#5 "PRIVATE HEALTH INSURANCE"

ValueSet: PaymentStream
Title: "Payment stream"
Id: vbpr-payment-stream
Description: "Type of payment stream"
* ^experimental = false
* codes from system payment-stream

ValueSet: HCPLANFramework
Title: "HPCLAN Framework"
Id: hcplan-framework
Description: "HCPLAN framework categories for value-based performance. HCPLAN framework represents payments from public and private payers to provider organizations."
* ^experimental = false
* codes from system hcplan-framework