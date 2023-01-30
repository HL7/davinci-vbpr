CodeSystem: VBCCost
Title: "Type of value-based contract cost"
Id: vbc-cost
Description: "Type of cost in a value-based performance report."
* ^experimental = false
* #total-med-rx-cost "Total medical and pharmacy cost" "Total medical and pharmacy cost."
* #total-med-rx-cost-pmpm "Total medical and pharmacy cost PMPM" "Total medical and pharmacy cost per member per month (PMPM)."
* #variance-cost "Variance cost"	"How much actual costs vary from projected costs."
* #med-cost-target "Medical cost target" "The target of the medical cost."
* #admin-cost "Administrative cost" "Administrative cost."
* ^caseSensitive = true

CodeSystem: VBCRevenue
Title: "Type of value-based contract revenue"
Id: vbc-revenue
Description: "Type of revenue in a value-based performance report."
* ^experimental = false
* #total-revenue "Total revenue" "Total revenue earned."
* #total-ma-revenue "Total Medical Advantage revenue" "Total revenue earned for Medical Advantage."
* #revenue-pmpm "Revenue PMPM" "Revenue earned per member per month (PMPM)."
* ^caseSensitive = true

CodeSystem: VBCPerformanceMetrics
Title: "Type of performance metrics"
Id: vbc-performance-metric-type
Description: "Type of value-based contract performance metrics."
* ^experimental = false
* #ccf "Care coordination fee" "Care coordination fee (CCF) is per member per payments based on the number of patients that are assigned to primary care physicians."
* #capitation-pmpu "Capitation per member per unit of time" "Capitation per member per unit of time, e.g., per month. Capitation is a fixed amount of money per patient per unit of time paid in advance to the physician [or health care provider] for the delivery of health care services."
* #total-capitation "Total capitation" "Total capitation. Capitation is a fixed amount of money per patient per unit of time paid in advance to the physician [or health care provider] for the delivery of health care services."
* #annual-care-visit-bonus "Annual care visit bonus" "Annual care visit bonus is a type of quality incentive payment"
* #avg-star-rating-bonus "Average star rating bonus" "Average star rating bonus is a type of quality incentive payment"
* #avg-star-rating-improvement-bonus "Average star rating year over year improvement bonus" "Average star rating year over year improvement bonus is a type of quality incentive payment"
* #quality-metric-performance-incentive "Quality metric performance incentive" "Quality metric performance incentive paymetn is a type of quality incentive payment."
* ^caseSensitive = true

CodeSystem: VBCIbnr
Title: "Type of Incurred But Not Reported(IBNR)"
Id: vbc-ibnr
Description: "Type of Incurred But Not Reported(IBNR) in a value-based performance report."
* ^experimental = false
* #current-year-ibnr "Current year IBNR" "The current year Incurred But Not Reported(IBNR)."
* #prior-year-ibnr "Prior year IBNR" "The prior year Incurred But Not Reported(IBNR)."
* ^caseSensitive = true

CodeSystem: VBCLossRatio
Title: "Type of loss ratio"
Id: vbc-loss-ratio
Description: "Type of loss ratio in a value-based performance report."
* ^experimental = false
* #med-loss-ratio "Medical loss ratio" "The medical loss ratio (MLR) is the share of total health care premiums spent on medical claims."
* #med-loss-ratio-target "Medical loss ratio target" "The target medical loss ratio (MLR)."
* ^caseSensitive = true

CodeSystem: LineOfBusiness
Title: "Line of business"
Id: lob
Description: "Line of business."
* ^experimental = false
* #ccf "Care coordination fee" "Care coordination fee"
* #ccf-with-risk "Care coordination fee with risk adjustment" "Care coordination fee with risk adjustment."
* #p4p "Pay for performance" "Pay for performance"
* #sip "Stars incentive payment" "Stars incentive payment"
* #qip "Quality incentive payment" "Quality incentive payment"
* #cdm "Chronic disease management" "Chronic disease management"
* ^caseSensitive = true