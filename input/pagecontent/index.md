<div class="bg-info" markdown="1">
This implementation guide is under development.
</div>

###  Summary

With the shift from fee-for-service to value-based care, value-based contracts have emerged as a mechanism that payers may use to better align their contracting structures with broader changes in the healthcare system. This Da Vinci Fast Healthcare Interoperability Resource (FHIR) Value-Based Performance Reporting (VBPR) Implementation Guide specifies a standard format for value-based performance reports and mechanisms for exchanging standardized value-based performance reports between providers and payers for value-based quality and risk contracts. 

This implementation guide is supported by the Da Vinci initiative which is a private effort to accelerate the adoption of Health Level Seven International Fast Healthcare Interoperability Resources (HL7® FHIR®) as the standard to support and integrate value-based care data exchange across communities. Like all Da Vinci Implementation Guides, it follows the [HL7 Da Vinci Guiding Principles] for exchange of patient health information. As an HL7 FHIR Implementation Guide, changes to this specification are managed by the sponsoring [Clinical Quality Information (CQI) Work Group] and are incorporated as part of the standard balloting process.

### How to read this implementation guide

This implementation guide is divided into several pages which are listed at the top of each page in the menu bar:

- [Home]\: The home page provides the summary, background information, scope, and actors for this implementation guide.


- FHIR Artifacts: These pages lists FHIR artifacts specified in this implementation guide. 
    - [Profiles and Extensions]\: This page lists the set of Profiles and Extenstions that are defined in this implementation guide.
    - [Terminology]\: This page lists code systems and value sets defined in this implementation guide.
    - [Capability Statements]\: This page describes the expected FHIR capabilities of this implementation guide.
- [Examples]\: This page lists all the examples used in this implementation guide.
- [Glossary]\: This page lists glossary and acronyms for this implementation guide.
- [Downloads]\: This page provides links to downloadable artifacts.

### Background
{: #background}
A value-based contract is a written contractual agreement between parties in which the payment for health care goods and services is tied to predetermined, mutually agreed upon terms that are based on clinical circumstances, patient outcomes, financial benchmarks, and other specified measures of the appropriateness and effectiveness of the services rendered. With the shift from fee-for-service to value-based care, value-based contracts have emerged as a mechanism that payers may use to better align their contracting structures with broader changes in the health care system.

Standardization of payer/provider performance reporting for quality and risk contracts is crucial for health systems and other provider organizations to receive timely interim reports to track and manage their performance on value-based contracts during the term. This implementation guide standardizes the value-based performance reporting format and exchange methods between payers and providers.  Standardized bi-directional, FHIR-based communication will connect payer baseline reporting data with provider organization data at the population level. It will also provide the flexibility to compare interim progress at different times during the contract performance period, in addition to notifying providers of non-clinical pre-defined events that may have a direct effect on financial performance and ultimately success.

### Scope

The goals of implementation guide are:
- standardize format of payer-generated Value Based Performance Report and 
- Exchange standardized payer-generated Value Based Performance Report from payer to provider. 

The initial phase of this implementation guide focuses on:
- defining standardized data structure and data elements on value-based performance reports
- defining common definitions for data elements in the report and terms used in the IG, including definitions for time periods
- supporting both Medicare value-based contracts (Medicare Advantage) and commercial value-based contracts, and other types of value-based contracts such as Medicaid.

{% include img-portrait.html img="scope.png" caption="Figure 1-1 Scope"%}

Future versions of this implementation guide will include functionalities to support topics such as:
- final contract settlemetn calculations (including inclusions and exclusions)
- Invalidations (risk adjustment/payment retroactivity)
- Interim settlements
- QA process
- External (out of network) reconciliations
- Other Alternative Payment Models (APM)  
- Using CQL for calculations
- Provider doesn’t meet all of the measure to qualify-how does the provider know where they are? Splits and mergers in - provider groups for attribution (whole year /partial year contribution
- Consolidating data inputs to create a report from heterogeneous sources



---



---

{% include link-list.md %}
