
<div class="bg-info" markdown="1">
This page is under development.
</div>

### Introduction

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

### VBPR MeasureReport

Note: this is a draft for discussion purpose and is under developement

{% include img-portrait.html img="vbpr-measurereport.png" caption = "Figure 2-1 Value-Based Performance Reporting MeasureReport overview" %}

### VBPR MeasureReport / Measure / Contract

Note: this is a draft for discussion purpose and is under developement

{% include img-portrait.html img="vbpr-measurereport-measure-contract.png" caption = "Figure 2-2 Relationship of VBPR MeasureReport - Measure - Contract overview" %}

### Must Support
Certain elements in the profiles defined in this IG are marked as Must Support. This flag is used to indicate that the element plays a critical role in defining and sharing value-based performance reports, and implementations SHALL understand and process the element.

This IG uses US Core profiles where appropriate, therefore, the implications of the Must Support flag for US Core profiles must also be considered.

For more information, see the definition of [Must Support](http://hl7.org/fhir/R4/conformance-rules.html#mustSupport) in the base FHIR specification.

### Dependencies

This IG relies on the following specifications:
- [FHIR R4](http://hl7.org/fhir/R4/)
- [US Core STU3.1.1](http://hl7.org/fhir/us/core/STU3.1.1)

{% include link-list.md %}
