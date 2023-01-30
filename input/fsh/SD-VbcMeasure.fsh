Profile: VbcMeasure
Parent: $Measure
Id: vbc-measure
Title: "Value-Based Contract Measure"
Description: "The value-based contract (VBC) that the value-based performance report is measured against."
* extension contains Contract named contract 1..1 MS
* url 1..1 MS
* url ^short = "Canonical identifier for this measure, represented as a URI (globally unique)"
* name 1..1 MS
* status 1..1 MS
* status only code
* status = #active (exactly)
* description MS