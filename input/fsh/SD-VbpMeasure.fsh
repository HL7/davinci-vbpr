Profile: VbpMeasure
Parent: $CQFMCompositeMeasure
Id: vbp-measure
Title: "Value-Based Performance Measure"
Description: "The measure definition that describes value-based contract level information for a value-based performance report."
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
* group.code from vbp-performance-metric (extensible)
* group.code ^short = "Performance metric"
* group.code MS
* improvementNotation 0..0
