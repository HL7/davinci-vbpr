Profile: VbcMeasure
Parent: $Measure
Id: vbc-measure
Title: "Value-Based Contract Measure"
Description: "The value-based contract (VBC) that the value-based performance report is measured against."
* extension contains LOB named lineOfBusiness 0..1 MS
* extension contains ProgramModel named programModel 0..1 MS
* extension contains PaymentStream named paymentStream 0..* MS 
* url 1..1 MS
* url ^short = "Canonical identifier for this measure, represented as a URI (globally unique)"
* name 1..1 MS
* status 1..1 MS
* status only code
* status = #active (exactly)
* description MS