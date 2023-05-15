
<div class="bg-info" markdown="1">
This page is under development.
</div>

### Introduction

Originally, value-based payment models were designed to reward healthcare providers with incentive payments for the quality of care they give to people with Medicare. The programs were designed to link provider performance of quality measures to provider payment and work with other CMS quality efforts to ensure that quality is being achieved. Value-based purchasing (VBP) refers to a broad set of performance-based payment strategies that link financial incentives to providers' performance on a set of defined measures. VBP programs are private or public programs that link financial reimbursement to performance on measures of quality (i.e., structure, process, outcomes, access, and patient experience) and cost or resource use.<sup>[1](https://www.rand.org/pubs/periodicals/health-quarterly/issues/v4/n3/09.html)</sup> 

Economic challenges and higher healthcare costs have expanded these value-based payment models to larger populations of patients and members. The industry has adopted several names for the original value-based payment models, including value-based purchasing, value-based contracting, value-based payments, and, most recently, alternative payment models. 

For the purpose of this implementation guide, any report that meets the definition of a value-based payment model, meaning a contract that links financial incentives to providers’ financial, quality, and risk performance on defined measures, will be considered a Value-Based Performance Report. Reporting performance against the specific details of a contract may include financial, quality, utilization, etc. over defined time periods.

In this implementation guide, we use the term metrics to refer to finanacial measures in the report, and the term quality measures or measures to refer to the quality measures such as the colorectral cancer screening measure. 


### Preconditions and Assumptions

This following is a list of pre-requisites for using this implementation guide:
- Payer and Provider have Value-Based Contract agreement in place
    - *Data agreed in a contract includes information such as program details, data aggregation period, reporting period, and attribution methods.*
- Payer and provider has an established process for creating and reconciling member attribution list
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
