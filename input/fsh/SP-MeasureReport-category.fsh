Instance: measurereport-category
InstanceOf: SearchParameter
Usage: #definition
* url = "http://hl7.org/fhir/us/davinci-vbpr/SearchParameter/measurereport-category"
* version = "1.0.0"
* name = "MeasureReportCategory"
* status = #active
* code = #category
* base = #MeasureReport
* type = #string
* description = "Search based on the measurereport-category extension"
* expression = "MeasureReport.extension('http://hl7.org/fhir/StructureDefinition/measurereport-category').value"
* xpath = "f:MeasureReport/f:extension[@url='http://hl7.org/fhir/StructureDefinition/measurereport-category'].value"
* xpathUsage = #normal
//* processingMode = #normal
