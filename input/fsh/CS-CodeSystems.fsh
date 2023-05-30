CodeSystem: VbpPerformanceMetrics
Title: "Performance Metric"
Id: vbp-performance-metric
Description: "Type of value-based performance metrics."
* ^experimental = false
* #avg-risk-score "Average risk score" "Average risk score is a numeric score where a higher score indicates a riskier population on average. Example scores: 0.70, 1.00, 1.30."
* #avg-risk-score-market "Market average risk score" "The market average risk score."
* #capitation "Capitation" "Total capitation amount."
* #capitation-pmpm "Capitation per member per month" "Capitation per member per month (PMPM). Capitation is a fixed amount of money per patient per month paid in advance to the physician [or health care provider] for the delivery of health care services."
* #dental-capitation "Dental capitation" "Total dental capitation."
* #dental-capitation-pmpm "Dental capitation PMPM" "Total dental capitation per member per month (PMPM)."
* #reinsurance-capitation "Reinsurance capitation" "Total reinsurance capitation."
* #reinsurance-capitation-pmpm "Reinsurance capitation PMPM" "Reinsurance captitation per member per month (PMPM)."
* #ccf "Care coordination fee" "Care coordination fee (CCF) is per member per payments based on the number of patients that are assigned to primary care physicians."
* #earned-incentive "earned-incentive" "Earned incentive payment."
* #interim-pmt-rate "Interim payment rate" "Interim payment rate."
* #ibnr-pmpm "IBNR PMPM" "Incurred but not yet reported (IBNR) per member per month (PMPM)."
* #revenue "Revenue" "Total revenues earned, which includes premiums and other resources that a payer receives."
* #revenue-pmpm "Revenue PMPM" "Revenue earned per member per month (PMPM)."
* #avg-revenue-pmpm-market "Market average revenue PMPM" "Average revenue per member per month (PMPM) for a market."
* #admin-cost "Administrative cost" "A general term that refers to Medicare and Medicaid administrative costs, as well as CMS administrative costs. Medicare administrative costs are comprised of the Medicare related outlays and non-CMS administrative outlays. Medicaid administrative costs refer to the Federal share of the States' expenditures for administration of the Medicaid program. CMS administrative costs are the costs of operating CMS (e.g., salaries and expenses, facilities, equipment, rent and utilities, etc.). These costs are reflected in the Program Management account."
* #rx-cost "Pharmacy cost" "Total amount of the pharmacy cost."
* #rx-cost-pmpm "Pharmacy cost PMPM" "Pharmacy cost per member per month (PMPM)."
* #rx-cost-target "Pharmacy cost target" "The goal or target pharmacy spend level as specified by a value-based contract below which savings are generated, often represented as a percent of total revenue."
* #med-cost "Medical cost" "Total amount of the medical cost."
* #med-cost-pmpm "Medical cost PMPM" "Medical cost per member per month (PMPM)."
* #med-cost-target "Medical cost target" "The goal or target medical spend level as specified by a value-based contract below which savings are generated, often represented as a percent of total revenue."
* #med-cost-fund "Medical cost fund" "Total dollars available for medical spend calculated using the medical cost target relative to estimated revenue."
* #avg-med-cost-fund-market "Market average medical cost fund" "The market average medical cost per member per month (PMPM) over revenue PMPM."
* #med-rx-cost "Medical pharmacy cost" "Total spend on medical and pharmacy cost for a specified population."
* #med-rx-cost-pmpm "Medical pharmacy cost PMPM" "Total spend on pharmacy cost for a specified population represented on a per member per month (PMPM) basis."
* #med-rx-cost-target "Medical pharmacy cost target" "Target spend on medical and pharmacy cost for a specified population."
* #avg-med-rx-cost-pmpm-market "Market average medical pharmacy cost PMPM" "The market average medical pharmacy cost per member per month (PMPM)."
* #med-rx-ibnr "Medical pharmacy IBNR" "Estimated medical and pharmacy expenses incurred but not yet reported (IBNR)."
* #variance-cost "Variance cost" "How much actual costs vary from projected (target) costs."
* #med-loss-ratio "Medical loss ratio" "The Medical Loss Ratio (MLR) is the proportion of premium revenues spent on clinical services and quality improvement."
* #med-loss-ratio-target "Medical loss ratio target" "The goal or target medical spend level relative to revenue as specified in a value-based care contract, often represented as a percent of revenue."
* #med-expense-ratio "Medical expense ratio" "Medical expense ratio."
* #med-expense-ratio-pmpm "Medical expense ratio PMPM" "Medical expense ratio per member per month (PMPM)."
* #member-months "Member months" "Total member months in a given period."
* #rx-member-months "Pharmacy member months" "Total pharmacy member months in a given period."
* #annual-care-visit-bonus "Annual care visit bonus" "Bonus to qualified annual care visit (ACV). A type of quality incentive payment."
* #avg-star-rating-bonus "Average star rating bonus" "Bonus earned when achieve a certain Average Star Rating. A type of quality incentive payment."
* #avg-star-rating-improvement-bonus "Average star rating improvement bonus" "Bonus earned when achieve improvement performance year over year based on average star rating. A type of quality incentive payment"
* #quality-metric-performance-incentive "Quality metric performance incentive" "Quality metric performance incentive paymetn is a type of quality incentive payment."
* #quality-pmt-chronic "Qulaity payment chronic disease management" "Qulaity payment chronic disease management."
* #quality-pmt-office-visit "Qulaity payment annual office visit" "Qulaity payment annual office visit."
* #shared-saving-deficit "Shared saving deficit" "The amount of shared saving deficit."
* #weighted-avg-star "Weighted average star" "The average quality score across a specified set of measures, weighted by importance of the individual measures for a specific population. Often used in relation to CMS Medicare Star rating reports, e.g., where medication adherence measures are 3x weighted relative to other quality measures in the set."
* #condition-count "Condition count" "The number of conditions."
* #1-gap-closed "1 gap closed" "Number of members with 1 closed gap."
* #2-gap-closed "2 gaps closed" "Number of members with 2 closed gaps."
* #paid-claim "Paid claim" "Total paid claim amount."
* #paid-claim-pmpm "Paid claim PMPM" "Paid claim per member per month (PMPM)."
* #drg-expense "DRG expense" "Total diagnosis related group (DRG) expense."
* #drg-expense-pmpm "DRG expense PMPM" "Diagnosis related group (DRG) expense per member per month (PMPM)."
* #provider-quality-expense-pmpm "Provider quality expense PMPM" "Provider quality expense per member per month (PMPM)."
* #subrogation-pmpm "Subrogation PMPM" "Subrogation per member per month (PMPM)."
* #avg-member-office-visit "Average members with office visit" "Average number of members with office visit."
* #ed-visit "ED visit" "Total number of Emergency Department (ED) visits."
* #eligible-member "Eligible members" "Total number of eligible members."
* #inpatient-acute "Inpatient acute" "Total number of inpatient acute stays."
* #inpatient-admission "Inpatient admission" "Total number of inpatient admissions."
* #nurse-hotline "Nurse hotline" "Total number calls of the nurse hotline."
* #nurse-hotline-pmpm "Nurse hotline PMPM" "Total nurse hotline per member per month (PMPM)."
* #snf-avg-los "Skilled Nursing Facility average length of stay" "The number of skilled nursing facility average length of stay."
* #readmission "Readmission" "Total number of readmissions"
* #snf-admission "Skilled Nursing Facility admission" "Total number of skilled nursing facility admissions."
* #provider-quality-expense "Provider quality expense" "Total provider quality expense."
* #subrogation "Subrogation" "Total subrogation amount."
* #avg-membership "Average membership" "Average membership."
* #goal-hcc-raf "Goal HCC RAF" "Goal or target hierarchical condition category (HCC) Risk Adjustment Factor (RAF)."
* #actual-hcc-raf "Actual HCC RAF" "Acutal hierarchical condition category (HCC) Risk Adjustment Factor (RAF)."
* ^caseSensitive = true

CodeSystem: PaymentStream
Title: "Payment Stream"
Id: payment-stream
Description: "Payment stream defined in a value-based contract. A value-based contract may contain multiple payment streams."
* ^experimental = false
* ^hierarchyMeaning = #is-a
* ^caseSensitive = true
* #ccf "Care coordination fee" "A payment model that providers are paid a per member per month (PMPM) incentive payments on a specific schedule."
* #ccf-with-risk "Care coordination fee with risk adjustment" "A payment model that providers are paid a per variable member per month (PMPM) incentive payments on a specific schedule based on risk."
* #eoc "Episode of care" "Episodes-of-care refers to an all-inclusive health-and-payment model in which a single, bundled payment includes all services associated with the treatment for an illness, condition or medical event rather than a separate fee-for-service model."
* #pcpcp "Primary Care Physician (PCP) capitation payment" "Capitation is a payment arrangement for health care services in which an entity (e.g., a physician or group of physicians) receives a risk adjusted amount of money for each person attributed to them, per period of time, regardless of the volume of services that person seeks."
* #ssq "Shared savings gated on quality" "Shared saving is a value-based model designed to reward health care providers who improve patient care while contributing to an overall reduction in cost. Shared savings gated on quality includes a set of quality measures that serve as a quality gate in which participants must exceed an established minimum target in order to participate in savings."
* #ssl "Shared savings loss percent" "A two-sided shared saving value-based model that provides two-sided payment and risk to a provider. To be liable for shared losses, providers must meet or exceed a prescribed minmum loss rate (MLR). Once this MLR is met or exceeded, the providers will share in losses at a rate determined by its quality performance up to a loss recoupment limit (also referred to as a loss-sharing limit)."
* #ssp "Shared savings percent" "A one-sided shared saving value-based model with no risk to a provider. Providers must meet or exceed a prescribed minimum savings rate (MSR), fulfill the minimum quality performance standards, to qualify for the shared savings."
* #tcoc "Total cost of care" "The payer determines the benchmark expected costs for a population attributed to a provider over a time period, the provider offers care to the population, and the payer shares some proportion of the savings in the actual costs incurred (the Total Cost of Care or TCOC) relative to the benchmark – adjusted by whether the provider met quality goals."
* #qip "Quality incentive payment" "Quality Incentive Payments (QIP) is designed to improve patient outcomes, service provider performance, and service quality. QIP is any incentive payment based on quality. Stars Incentive Payment (SIP), Star Score Threshold (SST), Pay for Reporting (P4R), Pay for Performance (P4P), Chronic Disease Management (CDM), Annual Health Assessment (AHA), Ulitization Incentive Payment (UBIP) are examples of QIP."
  * #aha "Annual health assessment" "This payment stream type pays either a per variable member per month (PMPM) for each attributed based on the percentage or pays each member who has a recorded Annual Health Assesment."
  * #cdm "Chronic Disease Management" "A payment stream tha pays extra for members with chronic conditions. Chronic disease management programs are structured treatment plans that aim to help people better manage their chronic disease (e.g., diabetes, asthma, hypertension), and to maintain and improve quality of life. It is an effort to improve care quality, promote self-management, and reduce costs for patients with one or more chronic conditions." 
  * #p4r "Pay for reporting" "A payment model that is based on pay for reporting quality measure data. There is no min performance criteria requirement."
  * #p4p "Pay for performance" "A payment model where providers are given financial incentives for meeting certain quality performance criteria."
  * #sip "Stars incentive payment" "A payment model that is based on meeting certain individual star performance criteria."
  * #sst "Star score threshold" "A payment model that is based on meeting certain provider star performance criteria."
  * #ubip "Utilization incentive payment" "A payment model that compares current utilization to a benchmark utilization and pays a variable per variable member per month (PMPM) for different rate of change in utilization."
//* #cxp "Custom x participation" "Custom x participation"
//* #cxra "Custom x regional adjustment" "custom x regional adjustment"
//* #mlrt "MLR target" "Medical loss ratio"

CodeSystem: HCPLANFramework
Title: "HCPLAN Framework"
Id: hcplan-framework
Description: "HCPLAN Framework represents payments from public and private payers to provider organizations (including payments between the payment and delivery arms of highly integrated health systems). It is designed to accommodate payments in multiple categories that are made by a single payer, as well as single provider organizations that receive payments in different categories—potentially from the same payer. Although payments will be classified in discrete categories, the Framework captures a continuum of clinical and financial risk for provider organizations."
* ^experimental = false
* #2A "Category 2A" "Foundational Payments for Infrastructure and Operations, e.g., care coordination fees and payments for HIT investments."
* #2B "Category 2B" "Pay for Reporting, e.g., bonuses for reporting data or penalies for not reporting data."
* #2C "Category 2C" "Pay-for-Performance, e.g., bonuses for quality performance."
* #3A "Category 3A" "APMs with Shared Savings, e.g., shared savings with upside risk only."
* #3B "Category 3B" "APMs with Shared Savings and Downside Risk, e.g., episode-based payments for procedures and comprehensive payments with upside and downside risk."
* #3N "Category 3N" "Risk Based Payments not linked to quality."
* #4A "Category 4A" "Condition-Specific Population-Based Payment, e.g., per member per month payments, payments for speciality services, such as oncology or mental health." 
* #4B "Category 4B" "Comprehensive Population-Based Payment, e.g., global budgets or full/percent of premium payments."
* #4C "Category 4C" "Integrated Finance and Delivery System, e.g., global budgets or full/percent of premium payments in integrated systems."
* #4N "Category 4N" "Capitated Payments not linked to quality."
* ^caseSensitive = true

CodeSystem: VbpIncentive
Title: "Incentive payment"
Id: vbp-incentive
Description: "What type of incentive for a payment stream such as quality incentive payment."
* ^experimental = false
* #chronic-care-mgmt "Chronic care management" "Chronic Care Management incentive payment."
* #annual-visit "Annual office visit" "Annual Office Visit incentive payment."
* ^caseSensitive = true

CodeSystem: VbpCohort
Title: "Cohort"
Id: vbp-cohort
Description: "Cohort population."
* ^experimental = false
* #hmo "HMO cohort" "A cohort with those members are under HMO."
* #ppo "PPO cohort" "A cohort with those members are under PPO."
* ^caseSensitive = true

CodeSystem: VbpMeasurePopulationType
Title: "Value-Based Performance Measure Population Type"
Id: vbp-measure-population
Description: "Measure population type that includes calculated-denominator and calculated-numerator."
* ^experimental = false
* #calculated-denominator "Calculated denominator. For example, for a proportion measure, the calculated denominator = (denominator – denominator exclusion – denominator exception)."
* #calculated-numerator "Calculated numerator. For example, for a proportion measure, the calculated numerator = (numerator - numerator exclusion)."
* ^caseSensitive = true

CodeSystem: ThresholdType
Title: "Threshold Type"
Id: threshold-type
Description: "The type or the name of the threashold."
* ^experimental = false
* #star-1 "Star 1" "Threshold for star 1 in a star rating."
* #star-2 "Star 2" "Threshold for star 2 in a star rating."
* #star-3 "Star 3" "Threshold for star 3 in a star rating."
* #star-4 "Star 4" "Threshold for star 4 in a star rating."
* #star-5 "Star 5" "Threshold for star 5 in a star rating."
* #hedis-50-percentile "hedis-50-percentile" "Threshold for HEDIS 50 percentile."
* #hedis-75-percentile "hedis-75-percentile" "Threshold for HEDIS 75 percentile."
* #hedis-90-percentile "hedis-90-percentile" "Threshold for HEDIS 90 percentile."
* ^caseSensitive = true

CodeSystem: MeasureStratifierExample
Title: "Measure Stratifier Example"
Id: measure-stratifier-example
Description: "Example stratifiers that could be used to stratify measure or performance metrics."
* ^experimental = true
* #region-cohort "region and cohort" "Stratification on both region and cohort."
* #region "Region" "Stratification on region."
* ^caseSensitive = true