
### Resources

There are three profiles specified in this version of the implementation guide:  
* The [Value-Based Performance MeasureReport](StructureDefinition-vbp-performance-measurereport.html) is the main resource that represents a value-based performance report, which could include data on financial and utilization metrics and quality measures, etc.  
* The Value-Based Performance MeasureReport `evaluatedResource` references the [VBP Quality MeasureReport](StructureDefinition-vbp-quality-measurereport.html) profile. This profile derives from the Da Vinci Data Exchange for Quality Measure IG's DEQM Summary MeasureReport profile and provides additional capability to support the need for exchanging quality measure data relevant for value-based performance reporting. 
* Relevant value-based contract level information is represented using the [Value-Based Performance Measure](StructureDefinition-vbp-measure.html). 

{% include img-portrait.html img="resources.png" caption = "Figure 2-1 Resources Overview" %}

### Workflow

Figure 2-2 describes value-based performance reporting workflow between a Payer and a Provider. Payer creates Value-Based Performance Measure for a value-based contract and generates VBP MeasureReport for a performance period, Provider then periodically gets the reports from the Payer. 

{% include img-portrait.html img="api-workflow.png" caption = "Figure 2-2 Value-based performance reporting workflow" %}

### Member Attribution for Value-Based Contract

Before value-based performance reporting can be performed, it is important to first establish a Member Attribution List based on the applicable contract so that the payer and provider have a shared understanding of which patients, providers, organizations, and attribution periods are in scope for exchanging value-based performance reports.

Value-based performance reporting often depends on the level at which a contract is defined, such as provider NPI, TIN, or a combined NPI/TIN level. The Da Vinci Member Attribution (ATR) List IG is the implementation guide that helps payers and providers to create and manage FHIR-based standardized member attribution lists for value-based contracts. A member attribution list is represented as a FHIR Group resource, it tells payers and providers exactly which patients are attributed to which clinicians or organizations for a given-based contract and provides APIs to exchange and maintain that “roster”. 

VBPR does not require a single contract level for all implementations. Instead, it relies on ATR to communicate the applicable contract level, associated provider and organization identifiers, and the effective dates that govern attribution for reporting purposes.

ATR information may support VBPR reporting by helping systems determine:

- Which contract a patient is attributed to.
- Whether the applicable reporting level is NPI, TIN, or NPI/TIN.
- Which Organization and/or Practitioner is associated with that contract.
- The time period during which the attribution applies.

VBPR clients and servers can use this ATR information to parameterize performance reporting requests, construct the appropriate reporting cohorts, and ensure that results are produced at the contract level defined by the payer and provider agreement.

#### Example 1 – Provider NPI Associated with Multiple TINs
A single provider NPI may be associated with multiple TINs during the performance period, for example when the provider practices at multiple locations or under different legal entities. In some value-based arrangements, separate contracts may exist for each NPI/TIN combination rather than for the NPI alone.

In this scenario, ATR can represent the distinct contract levels by using separate Groups, identifiers, and associated references for each applicable NPI/TIN combination. Each Group can identify the relevant contract, the associated provider and organization, the attributed patient population, and the period during which the attribution list is valid.

For VBPR purposes, the workflow may be handled as follows:
- ATR identifies that the same NPI participates in more than one contract level because it is associated with multiple TINs.
- ATR defines a separate attributed population for each applicable NPI/TIN contract level.
- VBPR uses those ATR-defined populations to generate separate or stratified performance results for each NPI/TIN contract level rather than attributing all results to the NPI alone.

This approach allows a payer, provider organization, or value-based contracting platform to preserve the contractual distinction between different TIN relationships for the same provider and to report performance consistently with how the contracts are configured.

#### Example 2 – Provider NPI Moving from One TIN to Another during the Performance Period
A provider NPI may move from one TIN to another during the performance period due to a merger, acquisition, employment change, or other organizational transition. In these situations, the responsible reporting entity may change during the performance period even though the provider remains the same individual.

In this scenario, ATR can support VBPR by representing the attribution change with updated identifiers, organization references, and valid periods. Depending on implementation approach, this may be represented through separate effective-dated Groups or through attribution details that distinguish the applicable contract level over time.

For VBPR purposes, the workflow may be handled as follows:
- Two seperate ATR Groups were created, one for the provider that was associated with one TIN for an earlier portion of the performance period and another for the same provider associated with a different TIN beginning on the effective date of the change.
- VBPR uses the ATR attribution periods to determine which patients should be associated with each TIN for the relevant portion of the performance period.
- VBPR then generates results for the appropriate groups that reflect the contract level in effect at the time the attributed activity occurred, helping support accurate performance across organizational transitions.

This approach helps avoid misattribution when provider affiliation changes mid-period and supports reporting that is more consistent with contract administration, attribution rules, and organizational accountability.

#### Implementation Note
Implementers should determine, through payer-provider agreement and implementation guidance, whether reports are expected at the NPI level, TIN level, or NPI/TIN level. Where ATR is used, VBPR should treat ATR attribution data as the basis for identifying the applicable contract level and patient population for the report being generated.

### Value-Based Reporting Framework

Value-based payment models are expected to grow across all lines of business. The adoption of value-based care has accelerated in recent years, and this trend could continue in the coming years as payers, employers, and the government embrace these value-based care models. Value-based contracts encompass a broad variety of models, such as capitation, pay-for-performance, pay-for-quality, and shared savings to name a few. The performance metrics and measures that these value-based contracts need to measure and to track are also very broad, which spans over financial, quality, utilization and more. 
Because of the challenges with ever-expanding value-based payment models and performance metrics associated with those models, it would be near impossible and unsustainable to specify a comprehensive list of named representations for these different value-based care models and metrics. This implementation guide has taken the approach of defining a framework for value-based performance reporting. The profiles specified in this implementation guide provide standard structural representation that is intended to support reporting on various value-based payment models. Commonly used payment models and performance metrics are defined in value sets with extensible binding, which provides Payer and Provider the flexibility for reporting value-based payment models and metrics that are not yet defined in this implementation guide or those that are applicable only to their own organizations.

#### Value-Based Performance MeasureReport

The Value-Based Performance MeasureReport ([VBP MeasureReport]) is a profile on the MeasureReport resource. Each `MeasureReport.group` corresponds to a performance metric. 
-	The `MeasureReport.group.code` has an extensible binding to the [Performance Metric] value set. This value set contains a list of commonly used performance metrics for various value-based payment models. Several extensions are added to the `group` element to provide additional information about a performance metric. 
-	`measureScore` is the value of a performance metric. An extension [Alternate MeasureScore] is added to allow additional data types including decimal, integer, CodeableConcept, boolean, and Money to be used in addition to Quantity.
-	`paymentStream` is a complex extension. The `type` is required, which has an extensible binding to the Payment Stream value set. The Payment Stream value set defines commonly used value-based payment models such as care coordination fee, shared savings percent, shared savings gated on quality, and etcetera. The `incentive` is an optional field and is intended to provide more granular incentive program information for the Quality Incentive Payment payment stream, such as chronic care management and annual office visit. The `paymentStream` has cardinality of 0..*. It is possible for a performance metric to be associated with different payment streams. 
-	`baseline` is a complex extension. The baseline value of the performance metric and the time period the baseline was measured could be provided. 
-	`servicePeriod` is the service period for a performance metric. Each performance metric may have a different service period. 
-	`paidThroughDate` is the ending date of the pay cycle.

Value-based performance reports often include data on performance on overall population and stratified results on those performance metrics based on variety of stratifiers. This IG has defined a list of stratifier codes, which include facility, taxid, group, geography, and cohort.
-	The `MeasureReport.group.stratifer` provides the capabilities of stratifying based on a single stratifier or combination of a number of stratifiers. 
-	For example, to stratify by regions within an organization only, it will use facility as the stratifier code, then the `stratifier.stratum.value` would be selecting from a list of codes that represent the regions. The exact codes may be specific to a payer or provider organization. 
- If stratifying by a compound stratifier, such as both facility and cohort (either HMO or PPO), this would be represented using the `stratifier.stratum.component`. 

Many value-based payment models involve quality. The implementation guide reuses the [Data Exchange for Quality Measure (DEQM) Summary MeasureReport] for reports on quality measures. The [VBP MeasureReport] profile created a slice on the `MeasureReport.evaluatedResource` to reference the [VBP Quality MeasureReport] profile, which is derived from the DEQM Summary MeasureReport. The `groupReference` extension allows a VBP MeasureReport to be linked to a specific performance metric by using the `group.id` if needed.

<div class="new-content" markdown="1">
For a value-based performance report, the subject of the report is a reference to the [ATR Group](https://hl7.org/fhir/us/davinci-atr/STU2.1/StructureDefinition-atr-group.html) profile defined in the Da Vinci Member Attribution (ATR) List IG. ATR Group is a Member Attribution List that contain information related to the members who are attributed to a value-based contract.
</div>

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

The [VBP Measure] is used to represent value-based contract information that are needed for value-based performance reporting. 

This profile added a few extensions to represent the following:
-	lineOfBusiness: line of business whether it is Medicare, Medicaid, or commercial. 
-	programModel: HCPLAN APM framework categories. A value-based contract may have a different HCPLAN APM framework category applicable for a different cohort. 
-	paymentStream: value-based payment models such as care coordination fee, shared savings percent, shared savings gated on quality.

{% include img-portrait.html img="vbp-measure.png" caption = "Figure 2-6 VBP Measure overview" %}






{% include link-list.md %}
