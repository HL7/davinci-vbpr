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
* #weighted-star-score "Weighted Star Score" "Weighted star score"
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
* #aha "Annual health assessment" "This payment stream type pays either a per variable member per month (PMPM) for each attributed based on the percentage or pays each member who has a recorded Annual Health Assesment."
* #ccf "Care coordination fee" "A payment stream that providers are paid a per member per month (PMPM) incentive payments
on a specific schedule."
* #ccf-with-risk "Care coordination fee with risk adjustment" "A payment stream that providers are paid a per variable member per month (PMPM) incentive payments on a specific schedule based on risk."
* #cdm "Chronic Disease Management" "A payment stream tha pays extra for members with chronic conditions." 
* #cxp "Custom x participation" "Custom x participation"
* #cxra "Custom x regional adjustment" "custom x regional adjustment"
* #eoc "Episode of care" "Episodes-of-care refers to an all-inclusive health-and-payment model in which a single, bundled payment includes all services associated with the treatment for an illness, condition or medical event rather than a separate fee-for-service model."
* #mlrt "MLR target" "Medical loss ratio"
* #p4p "Pay for performance" "A payment stream that is based on meeting certain quality performance criteria."
* #p4r "Pay for reporting" "A payment stream that is based on pay for reporting quality. There is no min performance criteria requirement."
* #pcpcp "PCP capitation payment" "Capitation is a payment arrangement for health care services in which an entity (e.g., a physician or group of physicians) receives a risk adjusted amount of money for each person attributed to them, per period of time, regardless of the volume of services that person seeks."
* #qip "Quality incentive payment" "Quality Incentive Payments (QIP) is any incentive payment based on quality. This includes (SIP), (SST), (P4P), (P4R), (CDM), (AHA) or (UBIP)."
* #sip "Stars incentive payment" "A payment stream that is based on meeting certain individual star performance criteria."
* #ssl "Shared savings loss percent" "Shared saving with two sided payment and risk for provider."
* #ssp "Shared savings percent" "Shared savings payment with no risk to provider."
* #sst "Star score threshold" "A payment stream that is based on meeting certain Provider star performance criteria."
* #tcoc "Total cost of care" "Total cost of care"
* #ubip "Utilization incentive payment" "A payment stream that compares current utilization to a benchmark utilization and pays a variable per variable member per month (PMPM) for different rate of change in utilization."
* ^caseSensitive = true

CodeSystem: HCPLANFramework
Title: "HPCLAN Framework"
Id: hcplan-framework
Description: "HCPLAN Framework represents payments from public and private payers to provider organizations (including payments between the payment and delivery arms of highly integrated health systems). It is designed to accommodate payments in multiple categories that are made by a single payer, as well as single provider organizations that receive payments in different categories—potentially from the same payer. Although payments will be classified in discrete categories, the Framework captures a continuum of clinical and financial risk for provider organizations."
* ^experimental = false
* #2A "Category 2A" "Foundational Payments for Infrastructure and Operations, e.g., care coordination fees and payments for HIT investments"
* #2B "Category 2B" "Pay for Reporting, e.g., bonuses for reporting data or penalies for not reporting data."
* #2C "Category 2C" "Pay-for-Performance, e.g., bonuses for quality performance."
* #3A "Category 3A" "APMs with Shared Savings, e.g., shared savings with upside risk only."
* #3B "Category 3B" "APMs with Shared Savings and Downside Risk, e.g., episode-based payments for procedures and comprehensive payments with upside and downside risk."
* #3N "Category 3N" "Risk Based Payments not linked to quality"
* #4A "Category 4A" "Condition-Specific Population-Based Payment, e.g., per member per month payments, payments for speciality services, such as oncology or mental health" 
* #4B "Category 4B" "Comprehensive Population-Based Payment, e.g., global budgets or full/percent of premium payments"
* #4C "Category 4C" "Integrated Finance and Delivery System, e.g., global budgets or full/percent of premium payments in integrated systems."
* #4N "Category 4N" "Capitated Payments not linked to quality"
* ^caseSensitive = true