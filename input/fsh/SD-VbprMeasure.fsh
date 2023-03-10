Profile: VbprMeasure
Parent: $CQFMCompositeMeasure
Id: vbpr-measure
Title: "Value-Based Performance Measure"
Description: "The measure definition for the value-based performance report."
* extension contains LOB named lineOfBusiness 0..1 MS
* extension contains ProgramModel named programModel 0..1 MS
* url 1..1 MS
* url ^short = "Canonical identifier for this measure, represented as a URI (globally unique)"
* name 1..1 MS
* status 1..1 MS
* status only code
* status = #active (exactly)
* description MS