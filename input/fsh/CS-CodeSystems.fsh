CodeSystem: VbpPerformanceMetrics
Title: "Performance Metric Code System"
Id: vbp-performance-metric
Description: "Type of value-based performance metrics."
* ^experimental = false
* #admin-cost "Administrative cost" "A general term that refers to Medicare and Medicaid administrative costs, as well as CMS administrative costs. Medicare administrative costs are comprised of the Medicare related outlays and non-CMS administrative outlays. Medicaid administrative costs refer to the Federal share of the States' expenditures for administration of the Medicaid program. CMS administrative costs are the costs of operating CMS (e.g., salaries and expenses, facilities, equipment, rent and utilities, etc.). These costs are reflected in the Program Management account."
* #annual-care-visit-bonus "Annual care visit bonus" "Bonus to qualified annual care visit (ACV). A type of quality incentive payment."
* #avg-risk-score "Average risk score" "Total of designated demographic and health factors weighted by their marginal contribution to risk across a specified population."
* #avg-star-rating-bonus "Average star rating bonus" "Bonus earned when achieve a certain Average Star Rating. A type of quality incentive payment."
* #avg-star-rating-improvement-bonus "Average star rating improvement bonus" "Bonus earned when achieve improvement performance year over year based on average star rating. A type of quality incentive payment"
* #avg-risk-score-market "Market average risk score" "TBD"
* #avg-revenue-pmpm-market "Market average revenue PMPM" "TBD"
* #avg-med-rx-cost-pmpm-market "Market average medical pharmacy cost PMPM" "TBD"
* #avg-med-cost-fund-market "Market average medical cost fund" "TBD"
* #avg-member-office-visit "Average members with office visit" "TBD"
* #capitation "Capitation" "Capitation is a fixed amount of money per patient per unit of time paid in advance to the physician [or health care provider] for the delivery of health care services."
* #capitation-pmpm "Capitation per member per month" "Capitation per member per month (PMPM). Capitation is a fixed amount of money per patient per month paid in advance to the physician [or health care provider] for the delivery of health care services."
* #ccf "Care coordination fee" "Care coordination fee (CCF) is per member per payments based on the number of patients that are assigned to primary care physicians."
* #condition-count "Condition count" "TBD"
* #earned-incentive "earned-incentive" "TBD"
* #ed-visit "ED visit" "TBD"
* #eligible-member "Eligible members" "TBD"
* #inpatient-acute "Inpatient acute" "TBD"
* #inpatient-admission "Inpatient admission" "TBD"
* #interim-pmt-rate "Interim payment rate" "TBD"
* #med-cost "Medical cost" "Medical cost"
* #med-cost-fund "Medical cost fund" "Total dollars available for medical spend calculated using the medical cost target relative to estimated revenue."
* #med-cost-pmpm "Medical cost PMPM" "Medical cost per member per month (PMPM)."
* #med-cost-target "Medical cost target" "The goal medical spend level as specified by a value-based contract below which savings are generated, often represented as a percent of total revenue."
* #med-loss-ratio "Medical loss ratio" "The medical loss ratio (MLR) is the share of total health care premiums spent on medical claims."
* #med-loss-ratio-target "Medical loss ratio target" "The goal medical spend level relative to revenue as specified in a value-based care contract, often represented as a percent of revenue."
* #med-rx-cost "Medical pharmacy cost" "Total spend on medical and pharmacy cost for a specified population."
* #med-rx-cost-pmpm "Medical pharmacy cost PMPM" "Total spend on pharmacy cost for a specified population represented on a per member per month (PMPM) basis."
* #med-rx-cost-target "Medical pharmacy cost target" "Target spend on medical and pharmacy cost for a specified population."
* #member-months "Pharmacy member months" "Total pharmacy member months in a given period."
* #med-rx-ibnr "Medical pharmacy IBNR" "Estimated medical and pharmacy expenses incurred but not yet reported (IBNR)."
* #quality-metric-performance-incentive "Quality metric performance incentive" "Quality metric performance incentive paymetn is a type of quality incentive payment."
* #quality-pmt-chronic "Qulaity payment chronic" "TBD"
* #quality-pmt-office-visit "Qulaity payment office visit" "TBD"
* #readmission "Readmission" "TBD"
* #revenue "Revenue" "Total revenue"
* #revenue-pmpm "Revenue PMPM" "Revenue earned per member per month (PMPM)."
* #rx-cost "Pharmacy cost" "Pharmacy cost"
* #rx-cost-pmpm "Pharmacy cost PMPM" "Pharmacy cost per member per month (PMPM)."
* #rx-member-months "Member months" "Total member months in a given period."
* #shared-saving-deficit "Shared saving deficit" "TBD"
* #snf-admission "Skilled Nursing Facility admission" "TBD"
* #snf-avg-los "Skilled Nursing Facility average length of stay" "TBD"
* #total-ma-revenue "Total Medical Advantage revenue" "Total revenue earned for Medical Advantage."
* #total-premium "Total premium" "Total premium earned. Revenue the payer receives from premiums and other resources."
* #variance-cost "Variance cost" "How much actual costs vary from projected costs."
* #weighted-avg-star "Weighted average star" "The average quality score across a specified set of measures, weighted by importance of the individual measures for a specific population. Often used in relation to CMS Medicare Star rating reports, e.g., where medication adherence measures are 3x weighted relative to other quality measures in the set."
* #1-gap-closed "1 gap closed" "TBD"
* #2-gap-closed "2 gaps closed" "TBD"
* #ibnr-pmpm "IBNR PMPM" "incurred but not yet reported (IBNR) per member per month (PMPM)"
* #paid-claim-pmpm "Paid claim PMPM" "TBD"
* #dental-capitation-pmpm "Dental capitation PMPM" "TBD"
* #nurse-hotline-pmpm "Nurse hotline PMPM" "TBD"
* #reinsurance-capitation-pmpm "Reinsurance capitation PMPM" "TBD"
* #drg-expense-pmpm "DRG expense PMPM" "TBD"
* #provider-quality-expense-pmpm "Provider quality expense PMPM" "TBD"
* #subrogation-pmpm "Subrogation PMPM" "TBD"
* #paid-claim "Paid claim" "TBD"
* #dental-capitation "Dental capitation" "TBD"
* #nurse-hotline "Nurse hotline" "TBD"
* #reinsurance-capitation "Reinsurance capitation" "TBD"
* #drg-expense "DRG expense" "TBD"
* #provider-quality-expense "Provider quality expense" "TBD"
* #subrogation "Subrogation" "TBD"
* #premium-pmpm "Premium PMPM" "TBD"
* #med-expense-ratio-pmpm "Medical expense ratio PMPM" "TBD"
* #med-expense-ratio "Medical expense ratio" "TBD"
* #avg-membership "Average membership" "TBD"
* #goal-hcc-raf "Goal HCC RAF" "TBD"
* #actual-hcc-raf "Actual HCC RAF" "TBD"
* ^caseSensitive = true

CodeSystem: PaymentStream
Title: "Payment Stream Code System"
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
* #ssq "Shared savings gated on quality" "Shared saving gated on quality."
* #ssl "Shared savings loss percent" "Shared saving with two sided payment and risk for provider."
* #ssp "Shared savings percent" "Shared savings payment with no risk to provider."
* #sst "Star score threshold" "A payment stream that is based on meeting certain Provider star performance criteria."
* #tcoc "Total cost of care" "Total cost of care"
* #ubip "Utilization incentive payment" "A payment stream that compares current utilization to a benchmark utilization and pays a variable per variable member per month (PMPM) for different rate of change in utilization."
* ^caseSensitive = true

CodeSystem: HCPLANFramework
Title: "HCPLAN Framework Code System"
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

CodeSystem: QualityProgram
Title: "Quality Program Code System"
Id: quality-program
Description: "Quality program"
* ^experimental = false
* #chronic "Chronic care management incentive program" "Chronic Care Management Incentive Program"
* #annual-visit "Annuall office visits" "Annuall Office Visit"
* ^caseSensitive = true

CodeSystem: VbpMeasurePopulationType
Title: "Value-Based Performance Measure Population Type"
Id: vbp-measure-population
Description: "Measure population type"
* ^experimental = false
* #calculated-denominator "Calculated denominator"
* #calculated-numerator "Calculated numerator"
* ^caseSensitive = true

CodeSystem: ThresholdType
Title: "Threshold Type"
Id: threshold-type
Description: "What threshold"
* ^experimental = false
* #star-1 "Star 1"
* #star-2 "Star 2"
* #star-3 "Star 3"
* #star-4 "Star 4"
* #star-5 "Star 5"
* #hedis-50-percentile "hedis-50-percentile"
* #hedis-75-percentile "hedis-75-percentile"
* #hedis-90-percentile "hedis-90-percentile"
* ^caseSensitive = true

CodeSystem: MeasureStratifierExample
Title: "Measure Stratifier Example"
Id: measure-stratifier-example
Description: "Example stratifiers that could be used to stratify measure or performance metrics"
* ^experimental = true
* #region-cohort "region and cohort" "Stratification on both region and cohort"
* #region "Region" "Region stratification"
* ^caseSensitive = true