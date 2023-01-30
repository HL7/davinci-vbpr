Profile: VbcContract
Parent: $Contract
Id: vbc-contract
Title: "Value-Based Contract"
Description: "A value-based contract (VBC) is a written contractual arrangement between parties in which the payment for health care goods and services is tied to predetermined, mutually agreed upon terms that are based on clinical circumstances, patient outcomes, and other specified measures of the appropriateness and effectiveness of the services rendered."
* extension contains LOB named line-of-business 0..* MS
* url 1.. MS
* url ^short = "Canonical identifier for this contract, represented as a URI (globally unique)"
* status 1..1 MS
* status only code
* status = #executed (exactly)
* issued MS
* applies MS
* title 1..1 MS
* title ^short = "Title of a value-based contract."
* author 0..1 MS
* author only Reference($USCoreOrganization)
