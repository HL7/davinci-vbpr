
###  Summary

The Da Vinci Fast Healthcare Interoperability Resource (FHIR) Value-Based Performance Reporting (VBPR) Implementation Guide supports exchanging financial and quality performance data based on contractual performance measurements agreed to by payers and providers. 

Value-based contracting offers the following benefits to the US healthcare system:
- Encourages providers to focus on quality outcomes and efficiency
- Helps to reduce wasteful healthcare spending and improve the affordability of healthcare for individuals, employers, and the government
- Promotes cost containment by incentivizing providers to improve the quality of care, rather than just providing more services
- Has shown to lead to better health outcomes for patients and improved patient satisfaction
- Promotes innovation in healthcare delivery and payment models, which can help drive improvements in healthcare quality, efficiency, and affordability

Reporting performance against the specific details of a contract may include financial, quality, utilization, etc. over defined time periods. This timely performance reporting provides the needed transparency required at the point of care and is essential to the success of value-based contracts for both payers and providers.

The first Standard for Trial Use (STU) version of this implementation guide focuses on the standard exchange format of value-based financial and quality performance reports for payers to providers. It may also benefit both providers and payers by reducing the administrative burden to providers by standardizing the reporting they receive across all payers.

This implementation guide is supported by the Da Vinci initiative which is a private effort to accelerate the adoption of Health Level Seven International Fast Healthcare Interoperability Resources (HL7® FHIR®) as the standard to support and integrate value-based care data exchange across communities. Like all Da Vinci Implementation Guides, it follows the [HL7 Da Vinci Guiding Principles] for exchange of patient health information. As an HL7 FHIR Implementation Guide, changes to this specification are managed by the sponsoring [Clinical Quality Information (CQI) Work Group] and are incorporated as part of the standard balloting process.

### Content and Organization

This implementation guide is divided into several pages which are listed at the top of each page in the menu bar:

- [IG Home]\: The home page provides the summary, background information, scope, and actors for this implementation guide.
- FHIR Artifacts: These pages lists FHIR artifacts specified in this implementation guide. 
    - [Profiles and Extensions]\: This page lists the set of Profiles and Extensions that are defined in this implementation guide.
    - [Terminology]\: This page lists code systems and value sets defined in this implementation guide.
    - [Capability Statements]\: This page describes the expected FHIR capabilities of this implementation guide.
- [Examples]\: This page lists all the examples used in this implementation guide.
- [Glossary]\: This page lists glossary and acronyms for this implementation guide.
- [Downloads]\: This page provides links to downloadable artifacts.

### Dependencies
At present, the VBPR IG is based on [FHIR R4]({{site.data.fhir.path}}).  In addition, this guide also relies on a number of parent implementation guides:

{% include dependency-table-short.xhtml %}

This implementation guide defines additional constraints and usage expectations above and beyond the information found in these base specifications.

### Intellectual Property Considerations
This implementation guide and the underlying FHIR specification are licensed as public domain under the [FHIR license](http://hl7.org/fhir/R4/license.html#license). The license page also describes rules for the use of the FHIR name and logo.

{% include ip-statements.xhtml %}
---


{% include link-list.md %}
