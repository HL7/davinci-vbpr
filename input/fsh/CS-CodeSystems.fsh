CodeSystem: VBCPerformanceMetrics
Title: "Type of performance metrics"
Id: vbpr-performance-metric-type
Description: "Type of value-based contract performance metrics."
* ^experimental = false
* #total-med-rx-cost "Total medical and pharmacy cost" "Total medical and pharmacy cost."
* #total-med-rx-cost-pmpm "Total medical and pharmacy cost PMPM" "Total medical and pharmacy cost per member per month (PMPM)."
* #variance-cost "Variance cost"	"How much actual costs vary from projected costs."
* #med-cost-target "Medical cost target" "The target of the medical cost."
* #admin-cost "Administrative cost" "Administrative cost."
* #total-revenue "Total revenue" "Total revenue earned."
* #total-ma-revenue "Total Medical Advantage revenue" "Total revenue earned for Medical Advantage."
* #revenue-pmpm "Revenue PMPM" "Revenue earned per member per month (PMPM)."
* #current-year-ibnr "Current year IBNR" "The current year Incurred But Not Reported(IBNR)."
* #prior-year-ibnr "Prior year IBNR" "The prior year Incurred But Not Reported(IBNR)."
* #med-loss-ratio "Medical loss ratio" "The medical loss ratio (MLR) is the share of total health care premiums spent on medical claims."
* #med-loss-ratio-target "Medical loss ratio target" "The target medical loss ratio (MLR)."
* #ccf "Care coordination fee" "Care coordination fee (CCF) is per member per payments based on the number of patients that are assigned to primary care physicians."
* #capitation-pmpu "Capitation per member per unit of time" "Capitation per member per unit of time, e.g., per month. Capitation is a fixed amount of money per patient per unit of time paid in advance to the physician [or health care provider] for the delivery of health care services."
* #total-capitation "Total capitation" "Total capitation. Capitation is a fixed amount of money per patient per unit of time paid in advance to the physician [or health care provider] for the delivery of health care services."
* #annual-care-visit-bonus "Annual care visit bonus" "Annual care visit bonus is a type of quality incentive payment"
* #avg-star-rating-bonus "Average star rating bonus" "Average star rating bonus is a type of quality incentive payment"
* #avg-star-rating-improvement-bonus "Average star rating year over year improvement bonus" "Average star rating year over year improvement bonus is a type of quality incentive payment"
* #quality-metric-performance-incentive "Quality metric performance incentive" "Quality metric performance incentive paymetn is a type of quality incentive payment."
* ^caseSensitive = true

CodeSystem: LineOfBusiness
Title: "Line of business"
Id: lob
Description: "Line of business."
* ^experimental = false
* #commercial "Commercial" "Commercial"
* #ma "Medicare" "Medicare"
* #medicaid "Medicaid" "Medicaid"
* ^caseSensitive = true

CodeSystem: PaymentStream
Title: "Payment Stream"
Id: payment-stream
Description: "Payment stream"
* ^experimental = false
* #ccf "Care coordination fee" "Care coordination fee"
* #ccf-with-risk "Care coordination fee with risk adjustment" "Care coordination fee with risk adjustment."
* #p4p "Pay for performance" "Pay for performance"
* #sip "Stars incentive payment" "Stars incentive payment"
* #qip "Quality incentive payment" "Quality incentive payment"
* #ubip "Utilization incentive payment" "Utilization incentive payment"
* #sst "Star score threshold" "Star score threshold"
* #aha "Annual health assessment" "Annual health assessment"
* #p4r "Pay for reporting" "Pay for reporting"
* #ssp "Shared savings percent" "Shared savings percent"
* #ssl "Shared savings loss percent" "Shared savings loss percent"
* #mlrt "MLR target" "MLR target"
* #tcoc "Total cost of care" "Total cost of care"
* #pcpcp "PCP capitation payment" "Pay for performance (PCP) capitation payment"
* #eoc "Episode of care" "Episode of care (EOC)"
* #cxp "Custom x participation" "Custom x participation"
* #cxra "Custom x regional adjustment" "ustom x regional adjustment"
* ^caseSensitive = true