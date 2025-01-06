Profile: VbcMeasure
Parent: $CRMIShareableMeasure
Id: vbc-measure
Title: "Value-Based Performance Measure Shareable"
Description: "The measure definition that describes value-based contract level information for a value-based performance report."
//* ^extension[$standard-status].valueCode = #trial-use
//* ^extension[$fmm].valueInteger = 1
* ^status = #active
* ^experimental = false
* extension contains LOB named lineOfBusiness 0..1 MS
* extension contains ProgramModel named programModel 0..* MS
* extension contains PaymentStream named paymentStream 0..* MS 
* url 1..1 MS
* url ^short = "Canonical identifier for this measure, represented as a URI (globally unique)"
* identifier MS
* identifier ^short = "Business identifier of this measure, e.g., value-based contract identifier"
//* name 1..1 MS
//* status 1..1 MS
//* status only code
//* status = #active (exactly)
* description MS
* effectivePeriod ^short = "Value-based contract term period"
* effectivePeriod MS

* relatedArtifact ..* MS
* relatedArtifact ^slicing.discriminator.type = #value
* relatedArtifact ^slicing.discriminator.path = "type"
* relatedArtifact ^slicing.rules = #open
* relatedArtifact contains component 0..* MS
* relatedArtifact[component].extension contains Weight named weight 0..1 MS
* relatedArtifact[component].extension contains ContractualStatus named contractualStatus 1..1 MS
* relatedArtifact[component].extension[contractualStatus] ^short = "contractual | contractual-alternate | reporting-only"
//* relatedArtifact[component].extension contains
//    $cqfm-groupId named groupId 0..1 MS and
//    $cqfm-weight named weight 0..1 MS
* relatedArtifact[component].type 1..1 MS
* relatedArtifact[component].type only code
* relatedArtifact[component].type = #composed-of (exactly)
* relatedArtifact[component].type ^short = "Component measure"
* relatedArtifact[component].type ^definition = "A component of the composite measure."
* relatedArtifact[component].display 0..1 MS
* relatedArtifact[component].resource 1..1 MS
* relatedArtifact[component].resource only Canonical(Measure)

* compositeScoring MS

* group MS
* group.code from vbp-performance-metric (extensible)
* group.code ^short = "Performance metric"
* group.code MS
* improvementNotation 0..0

