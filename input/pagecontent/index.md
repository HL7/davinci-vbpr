
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

### How to read this implementation guide

This implementation guide is divided into several pages which are listed at the top of each page in the menu bar:

- [Home]\: The home page provides the summary, background information, scope, and actors for this implementation guide.
- FHIR Artifacts: These pages lists FHIR artifacts specified in this implementation guide. 
    - [Profiles and Extensions]\: This page lists the set of Profiles and Extensions that are defined in this implementation guide.
    - [Terminology]\: This page lists code systems and value sets defined in this implementation guide.
    - [Capability Statements]\: This page describes the expected FHIR capabilities of this implementation guide.
- [Examples]\: This page lists all the examples used in this implementation guide.
- [Glossary]\: This page lists glossary and acronyms for this implementation guide.
- [Downloads]\: This page provides links to downloadable artifacts.

### Background
{: #background}
Value-Based Performance Reporting (VBPR) offers insights into the performance of healthcare providers and organizations by evaluating their financial, quality, cost, and efficiency aspects. These reports play a crucial role in assessing and comparing providers within value-based contracts. The objective of such contracts is to encourage superior care, enhance patient outcomes, and lower costs by compensating providers according to their performance, as opposed to the quantity of services provided.

Payer-generated performance reports are crucial because payers are generally the arbiters in determining financial performance on risk contracts with health systems. Many times, payers have the best source of information on Per Member Per Month (PMPM) spend, contractual terms, regional or historical trends, and other financial information that health systems need to track and manage performance on those contracts. Claims data is important but insufficient on its own because state and federal requirements mask certain types of data that make accurate financial calculations difficult.  

#### Key Components of VBPR Reports

- **Performance Categories**: Distinct areas of provider performance, such as clinical quality, cost, utilization, and patient experience, which are evaluated and weighted to calculate an overall performance score.
- **Quality Measures**: Quantitative metrics that assess the performance of healthcare providers and organizations in terms of clinical outcomes, patient safety, patient experience, and adherence to clinical guidelines and best practices.
- **Performance Benchmarks**: Comparative metrics used to evaluate provider performance against established industry standards or the historic performance of peer organizations or clinician/organization's own performance over time.
- **Incentive Payments**: Financial rewards or penalties applied to providers based on their performance to encourage improvements in care quality and efficiency.
- **Risk Adjustment**: A methodology applied to account for differences in patient populations, such as demographic factors, clinical conditions, and social determinants of health, to ensure fair comparisons of provider performance.

Healthcare providers and participating organizations submit performance data, including quality measures, cost, and utilization metrics, to payers or other regulatory bodies for evaluation and analysis. There have been numerous value-based performance initiatives launched by both public and private payers, including accountable care organizations (ACOs), bundled payments, and pay-for-performance programs to name a few. These initiatives have continued to evolve and expand, with a growing emphasis on patient-centered care, population health management, and the use of data analytics to drive quality improvement and cost containment. 
 
Value-based performance reports are generated by payers to summarize provider performance across different categories, including lines of business, contracts, populations, quality measures, and financial metrics and reporting periods on a scheduled and ad-hoc basis. 
 
Based on the calculated performance scores, incentive payments are calculated and distributed to providers as rewards or penalties, encouraging continuous improvement in care quality and efficiency.

#### HCP-LAN APM Framework 
HCP-LAN (Health Care Payment Learning and Action Network)<sup>[1](https://hcp-lan.org/)</sup> is a public-private partnership established in 2015 by the US Department of Health and Human Services (HHS) to accelerate the transition to value-based payment models in the US healthcare system. HCP-LAN has defined several categories that help to categorize the alternative payment models (APMs). (See the [Alternative Payment Model APM Framework](https://hcp-lan.org/workproducts/apm-refresh-whitepaper-final.pdf) and the [APM Framework](https://hcp-lan.org/workproducts/apm-figure-1-final.pdf)). These categories are intended to provide a framework for evaluating the complexity and risk associated with different APMs, and to help stakeholders understand the trade-offs between different payment models. 

{% include img-portrait.html img="hcplan-apm-framework.png" caption = "Figure 1-1 HCP-LAN APM Framework" %}

- **Category 1**: Fee-for-Service with No Link to Quality and Value: This level includes traditional fee-for-service payment models that do not provide incentives for quality improvement or cost containment. (Note that Category 1 is not addressed in this implementation guide).
 
- **Category 2**: Fee-for-Service with Links to Quality and Value: foundational payments for infrastructure and operations, pay for reporting, or pay-for-performance. 

- **Category 3**: APMs built on fee-for-service architecture: This level includes payment models that focus on upside risk only or episode-based payment for procedures and comprehensive payments with upside and downside risk. This category also included risk-based payments NOT linked to quality.  

- **Category 4**: Population-based Payment: Category 4 payment models involve prospective, population-based payments, structured in a manner that encourages providers to deliver well-coordinated, high-quality, person-centered care within either a defined scope of practice (4A), a comprehensive collection of care (4B), or a highly integrated finance and delivery system (4C). Category 4 APMs require accountability for measures of appropriate care to provide additional safeguards against incentives to limit necessary care. Absent this accountability, APMs that use prospective, population-based payments will be classified in Category 4N.

This level includes payment models where providers receive a fixed payment for a specific population, such as a patient panel, and are responsible for delivering all necessary care within that population. This category also includes global budgets or full/percent of premium payment and integrated finance and delivery system. This category also includes capitated payments not linked to quality. 

While a framework is in place to identify the types of value-based agreements payers and providers can participate in, there is a challenge in collecting, analyzing and reconciling the numerous reports providers receive from payers. Some of these challenges include:
- Lack of standardizations for value-based performance reporting format 
- Data is in unstructured formats
- Lack of common definitions, for example, Total Care Capitation (TCC) could have many different calculations
- Data retrieval is time intensive because of reports come from various portals and is not scalable
- Data is error-prone based on human error when entering into reporting systems
- Misalignment on time periods when data is shared, and care is delivered. 
- Various reporting, payment, and reconciliation periods can make tracking performance across contractual measures difficult for providers to understand how well they are performing prior to various settlement dates.
- Variation in metrics used across payers and also variation in methodology – e.g., attribution.


### Scope

The goals of implementation guide are:
- Standardize the format of payer-generated value-based performance report and 
- Exchange standardized payer-generated value-based performance report from payer to provider. 

The initial phase of this implementation guide focuses on:
- Defining standardized data structure and data elements on value-based performance reports
- Identifying and defining common data elements in a value-based performance report 
- Supporting both Medicare value-based contracts (Medicare Advantage) and commercial value-based contracts, and other types of value-based contracts such as Medicaid.

{% include img-portrait.html img="stu1_scope.png" caption="Figure 1-2 Scope"%}


---

### Credits

This implementation guide was made possible by the thoughtful contributions of the following people and organizations:

- *The [Da Vinci Project](http://www.hl7.org/about/davinci/index.cfm?ref=common) member organizations.*


- *Vincent Powell, Providence*
- *Semira Singh, Providence*
- *Michael Pattwell, Edifecs*
- *Tom Dean, Edifecs*
- *David Degandi, Cambia Health Solutions*
- *Omar Amezquita, Cambia Health Solutions*
- *Katie Roan, Optum*
- *Rao Yogesh, Optum*
- *Bryn Rhodes, Smile Digital Health*
- *Rob Reynolds, Smile Digital Health*
- *Teresa Younkin, Point-of-Care Partners*
- *Yan Heras, Optimum eHealth*
- *Viet Nguyen, Stratametrics*

---

{% include link-list.md %}
