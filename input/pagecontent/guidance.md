
### Introduction

Originally, value-based payment models were designed to reward healthcare providers with incentive payments for the quality of care they give to people with Medicare. The programs were designed to link provider performance of quality measures to provider payment and work with other CMS quality efforts to ensure that quality is being achieved. Value-based purchasing refers to a broad set of performance-based payment strategies that link financial incentives to providers' performance on a set of defined measures. Value-based purchasing programs are private or public programs that link financial reimbursement to performance on measures of quality (i.e., structure, process, outcomes, access, and patient experience) and cost or resource use.<sup>[1](https://www.rand.org/pubs/periodicals/health-quarterly/issues/v4/n3/09.html)</sup> 

Economic challenges and higher healthcare costs have expanded these value-based payment models to larger populations of patients and members. The industry has adopted several names for the original value-based payment models, including value-based purchasing, value-based contracting, value-based payments, and, most recently, alternative payment models. 

For the purpose of this implementation guide, any report that meets the definition of a value-based payment model, meaning a contract that links financial incentives to providers’ financial, quality, and risk performance on defined measures, will be considered a **value-based performance report**. Reporting performance against the specific details of a contract may include financial, quality, utilization, etc. over defined time periods.

In this implementation guide, we use the term metrics to refer to financial measures in the report, and the term quality measures or measures to refer to the quality measures such as the colorectal cancer screening measure. 


### Preconditions and Assumptions

This following is a list of pre-requisites for using this implementation guide:
- Payer and Provider have value-based contract agreement in place
    - *Data agreed in a contract includes information such as program details, data aggregation period, reporting period, and attribution methods.*
- Payer and Provider have an established process for creating and reconciling member attribution list
    - *Creation and reconciliation of attributed member list is outside the scope of this implementation guide*
- Payer assembles administrative, clinical, quality, and claims data for attributed members
- Payer calculates population performance
    -  *Calculating population performance is outside the scope of this implementation guide*
- Payer calculates incentive
    - *Calculating financial incentive is outside the scope of this implementation guide*
- Payer calculates performance based on contract terms
    - *Calculating performance is outside the scope of this implementation guide*
    - *Performance helps determine incentives*
- Payer generates population level reports for providers
    - *Member-level performance is outside the scope of this implementation guide*
- Provider submits attributed member quality and risk adjustment data to Payer  
- Payer and Provider has established security and privacy practices in place

### Actors

The actors involved in exchanging value-based performance reports are Clients and Servers.
* **Clients** are the actors requesting value-based performance reports. 
* **Servers** are the actors receiving the request for retrieving the value-based performance reports. 
In the scenario where the Payer sends the value-based performance reports to the Provider, the Payer acts as the Server and the Provider acts as the Client. 

### Resources

There are three profiles specified in this version of the implementation guide:  
* The [Value-Based Performance MeasureReport](StructureDefinition-vbp-performance-measurereport.html) is the main resource that represents a value-based performance report, which could include data on metrics including financial, utilization, quality, etc.  
* The Value-Based Performance MeasureReport `evaluatedResource` references the [VBP Quality MeasureReport](StructureDefinition-vbp-quality-measurereport.html) profile. This profile derives from the DEQM Summary MeasureReport and provides additional capability to support the need for exchanging quality measure data relevant for value-based performance reporting. 
* Relevant value-based contract level information is represented using the [Value-Based Performance Measure](StructureDefinition-vbp-measure.html). 

{% include img-portrait.html img="resources.png" caption = "Figure 2-1 Resources Overview" %}

### Workflow

Figure 2-2 describes value-based performance reporting workflow between a Payer and a Provider. Payer creates Value-Based Performance Measure for a value-based contract and generates VBP MeasureReport for a performance period, Provider then periodically gets the reports from the Payer. 

{% include img-portrait.html img="api-workflow.png" caption = "Figure 2-2 Value-based performance reporting workflow" %}


### Value-Based Reporting Framework

Value-based payment models are expected to grow across all lines of business. The adoption of value-based care has accelerated in recent years, and this trend could continue in the coming years as payers, employers, and the government embrace these value-based care models. Value-based contracts encompass a broad variety of models, such as capitation, pay-for-performance, pay-for-quality, and shared savings to name a few. The performance metrics that these value-based contracts need to measure and to track are also very broad, which spans over financial, quality, utilization and more. 
Because of the challenges with ever-expanding value-based payment models and performance metrics associated with those models, it would be impossible and unsustainable to specify a comprehensive list of named representations for these different value-based care models and metrics. This implementation guide has taken the approach of defining a framework for value-based performance reporting. The profiles specified in this implementation guide provide standard structural representation that is intended to support reporting on various value-based payment models. Commonly used payment models and performance metrics are defined in value sets with extensible binding, which provides Payer and Provider the flexibility for reporting value-based payment models and metrics that are not yet defined in this implementation guide or those that are applicable only to their own organizations.

#### Value-Based Performance MeasureReport

The Value-Based Performance MeasureReport ([VBP MeasureReport]) is a profile on the MeasureReport resource. Each `MeasureReport.group` corresponds to a performance metric. 
-	The `MeasureReport.group.code` has an extensible binding to the [Performance Metric] value set. This value set contains a list of commonly used performance metrics for various value-based payment models. Several extensions are added to the `group` element to provide additional information about a performance metric. 
-	`measureScore` is the value of a performance metric. An extension [Alternate MeasureScore] is added to allow additional data types including decimal, integer, CodeableConcept, boolean, and Money to be used in addition to Quantity.
-	`paymentStream` is a complex extension. The `type` is required, which has an extensible binding to the Payment Stream value set. The Payment Stream value set defines commonly used value-based payment models such as care coordination fee, shared savings percent, shared savings gated on quality, and etcetera. The `incentive` is an optional field and is intended to provide more granular incentive program information for the Quality Incentive Payment payment stream, such as chronic care management and annual office visit. The `paymentStream` has cardinality of 0..*. It is possible for a performance metric to be associated with different payment streams. 
-	`baseline` is a complex extension. The baseline value of the performance metric and the time period the baseline was measured could be provided. 
-	`servicePeriod` is the service period for a performance metric. Each performance metric may have a different service period. 
-	`paidThroughDate` is the ending date of the pay cycle.

Value-based performance reports often include data on performance on overall population and stratified results on those performance metrics based on variety of stratifiers such as by regions within an organization, Taxpayer Identification Number (TIN)s, Preferred Provider Organization (PPO),  or Health Maintenance Organization (HMO). 
-	The `MeasureReport.group.stratifer` provides the capabilities of stratifying based on a single stratifier or combination of a number of stratifiers. 
-	For example, if stratifying by regions only, `stratifier.stratum.value` would be selecting from a list of codes that represent the regions. The exact codes may be specific to a payer or provider organization. If stratifying by a compound stratifier, such as both region and cohort (either HMO or PPO), this would be represented using the `stratifier.stratum.component`. 

Many value-based payment models involve quality. The implementation guide reuses the [Data Exchange for Quality Measure (DEQM) Summary MeasureReport] for reports on quality measures. The [VBP MeasureReport] profile created a slice on the `MeasureReport.evaluatedResource` to reference the [VBP Quality MeasureReport] profile, which is derived from the DEQM Summary MeasureReport. The `groupReference` extension allows a VBP MeasureReport to be linked to a specific performance metric by using the `group.id` if needed.

For a value-based performance report, the subject of the report is always an organization. Because Organization is not an allowable choice for the MeasureReport `subject` in FHIR R4 (note that in FHIR R5, MeasureReport.subject has been updated to support Organization), an [Organization Subject] extension is added to the `MeasureReport.subject` to allow an organization as the subject. 
A customized [Organization Subject Search Parameter] on the Value-Based Performance MeasureReport is also defined to support a search by organization as the subject.  


Figure 2-2 provides a structural overview of the VBP MeasureReport. (Note: elements that are added as extensions are indicated with purple background.)
{% include img-portrait.html img="vbp-measurereport.png" caption = "Figure 2-3 VBP MeasureReport overview" %}

#### Value-Based Performance (VBP) Quality MeasureReport

[VBP Quality MeasureReport] is based on the DEQM Summary MeasureReport with a few extensions. 
-	`MeasureReport.threshold`: value-based performance reports often include threshold information for a measure, for example, the threshold for this measure for a 4 star in a star rating is 85%. The `type` indicates what kind of threshold. The `threshold` is the value of the threshold, such as 85%. The gap that needs to meet the threshold can be represented using the optional `gapToThreshold`.  
-	`MeasureReport.score`: this score is used to represent scores such as a star rating score.

This profile has defined a [VBP Measure Population Type] value set. This value set added two new codes calculated-denominator and calculated-numerator to the Measure Population Type value set from the base Measure resource. The calculated-denominator is the resulting denominator when calculating performance rate, for a proportion measure, this would be the result of denominator – denominator exclusion – denominator exception. Same applies to the calculated-numerator. 

Figure 2-3 and Figure 2-4 used the colorectal cancer screening and the breast cancer screening measures as examples to illustrate the use of the VBP Quality MeasureReport. 

{% include img-portrait.html img="vbp-quality-measurereport-colorectalcancer.png" caption = "Figure 2-4 VBP Quality MeasureReport overview - colorectal cancer screening measure example" %}

{% include img-portrait.html img="vbp-quality-measurereport-breastcancer.png" caption = "Figure 2-5 VBP Quality MeasureReport overview - breast cancer screening measure example" %}

#### Value-Based Performance (VBP) Measure

The [VBP Measure] is used to represent value-based contract information that are needed for value-based performance reporting. The [VBP Measure] profile is derived from the [CQFM Composite Measure] profile. This is to reuse the composite measure structure to represent the list of quality measures that are specified in a value-based contract. 

This profile added a few extensions to represent the following:
-	lineOfBusiness: line of business whether it is Medicare, Medicaid, or commercial. 
-	programModel: HCPLAN APM framework categories. A value-based contract may have a different HCPLAN APM framework category applicable for a different cohort. 
-	paymentStream: value-based payment models such as care coordination fee, shared savings percent, shared savings gated on quality.

{% include img-portrait.html img="vbp-measure.png" caption = "Figure 2-6 VBP Measure overview" %}


### Must Support
Certain elements in the profiles defined in this implementation guide are marked as Must Support. This flag is used to indicate that the element plays a critical role in defining and sharing value-based performance reports, and implementations SHALL understand and process the element.

This IG uses US Core profiles where appropriate, therefore, the implications of the Must Support flag for US Core profiles must also be considered.

For more information, see the definition of [Must Support](http://hl7.org/fhir/R4/conformance-rules.html#mustSupport) in the base FHIR specification.

### Dependencies

This implementation guide relies on the following specifications:
- [FHIR R4](http://hl7.org/fhir/R4/)
- [US Core STU3.1.1](http://hl7.org/fhir/us/core/STU3.1.1)

{% include link-list.md %}
