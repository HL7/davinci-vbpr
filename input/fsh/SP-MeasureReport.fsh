Instance: measurereport-subject-organization
InstanceOf: SearchParameter
Usage: #definition
* url = "http://hl7.org/fhir/us/davinci-vbpr/SearchParameter/measurereport-subject-organization"
* version = "1.0.0-ballot"
* name = "MeasureReportSubjectOrganization"
* status = #active
* code = #subject-organization
* base = #MeasureReport
* type = #reference
* description = "Search based on subject of type Organization"
//* expression = "MeasureReport.subject.extension('http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/organization-subject').value as Reference"
* expression = "MeasureReport.subject.extension('http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/organization-subject').value"
* xpath = "f:MeasureReport/f:subject.extension[@url='http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/organization-subject'].valueReference"
* xpathUsage = #normal
//* processingMode = #normal
* target = #Organization