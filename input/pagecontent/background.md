### Introduction

Originally, value-based payment models were designed to reward healthcare providers with incentive payments for the quality of care they give to people with Medicare. The programs were designed to link provider performance of quality measures to provider payment and work with other CMS quality efforts to ensure that quality is being achieved. Value-based purchasing refers to a broad set of performance-based payment strategies that link financial incentives to providers' performance on a set of defined metrics and measures. Value-based purchasing programs are private or public programs that link financial reimbursement to performance on measures of quality (i.e., structure, process, outcomes, access, and patient experience) and cost or resource use.<sup>[1](https://www.rand.org/pubs/periodicals/health-quarterly/issues/v4/n3/09.html)</sup> 

Economic challenges and higher healthcare costs have expanded these value-based payment models to larger populations of patients and members. The industry has adopted several names for the original value-based payment models, including value-based purchasing, value-based contracting, value-based payments, and, most recently, alternative payment models. 

For the purpose of this implementation guide, any report that meets the definition of a value-based payment model, meaning a contract that links financial incentives to providers’ financial, quality, and risk performance on defined metrics and measures, will be considered a **value-based performance report**. Reporting performance against the specific details of a contract may include financial, quality, utilization, etc. over defined time periods.

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

### Scope

The goals of implementation guide are:
- Standardize the format of payer-generated value-based performance report and 
- Exchange standardized payer-generated value-based performance report from payer to provider. 

The initial phase of this implementation guide focuses on:
- Defining standardized data structure and data elements on value-based performance reports
- Identifying and defining common data elements in a value-based performance report 
- Supporting both Medicare value-based contracts (Medicare Advantage) and commercial value-based contracts, and other types of value-based contracts such as Medicaid.

{% include img-portrait.html img="stu1_scope.png" caption="Figure 1-2 Scope"%}