
<div class="bg-info" markdown="1">
This page is under development.
</div>

### Introduction

Value-based purchasing (VBP) refers to a broad set of performance-based payment strategies that link financial incentives to providers' performance on a set of defined measures. VBP programs are private or public programs that link financial reimbursement to performance on measures of quality (i.e., structure, process, outcomes, access, and patient experience) and cost or resource use.<sup>[1](https://www.rand.org/pubs/periodicals/health-quarterly/issues/v4/n3/09.html)</sup> 



In this IG, we use the term metrics to refer to finanacial measures in the report, and the term quality measures or measures to refer to the quality measures such as the colorectral cancer screening measure. 


### Preconditions and Assumptions

This following is a list of pre-requisites for using this implementation guide (IG):
- Payer and Provider have value-based contract agreement in place
    - Data agreed in a contract includes information such as program details, data aggregation period, reporting period, attributions.
- Payer and provider has an established process for creating and reconciling member attribution list
    - Creation and reconciliation of attributed member list is outside the scope of this IG
- Payer assembles administrative, clinical, quality, and claims data for attributed members
- Payer calculates population performance
    -  Calculating population performance is outside the scope of this IG
- Payer calculates incentive
    - Calculating financial incentive is outside the scope of this IG
- Payer calculates performance
    - Calculating performance is outside the scope of this IG
    - Performance helps determine incentives
- Payer generates population level reports for providers
- Provider submits attributed member quality and risk adjustment data to payer  
- Payer and provider has established security and privacy practices in place

### VBP Performance MeasureReport, VBP Quality MeasureReport, and VBP Measure Profiles

{% include img-portrait.html img="vbp-measurereport.png" caption = "Figure 2-1 VBP Performance MeasureReport overview" %}

{% include img-portrait.html img="vbp-quality-measurereport-colorectalcancer.png" caption = "Figure 2-2 VBP Quality MeasureReport overview - colorectal cancer screening measure example" %}

{% include img-portrait.html img="vbp-measure.png" caption = "Figure 2-2 VBP Measure overview" %}


### Must Support
Certain elements in the profiles defined in this IG are marked as Must Support. This flag is used to indicate that the element plays a critical role in defining and sharing value-based performance reports, and implementations SHALL understand and process the element.

This IG uses US Core profiles where appropriate, therefore, the implications of the Must Support flag for US Core profiles must also be considered.

For more information, see the definition of [Must Support](http://hl7.org/fhir/R4/conformance-rules.html#mustSupport) in the base FHIR specification.

### Dependencies

This IG relies on the following specifications:
- [FHIR R4](http://hl7.org/fhir/R4/)
- [US Core STU3.1.1](http://hl7.org/fhir/us/core/STU3.1.1)

{% include link-list.md %}
