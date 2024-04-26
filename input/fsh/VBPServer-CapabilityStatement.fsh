
Instance: capabilityVbpReportingServer
InstanceOf: CapabilityStatement
Usage: #definition
Title: "VBP Reporting Server Capability Statement"
* description = "This profile defines the expected capabilities of the Value-Based Performance (VBP) Reporting Server actor which is responsible for producing value-based performance MeasureReports to be consumed by a Value-Based Performance Reporting Client. The complete list of FHIR profiles 
and search parameters that a VBP Reporting Server could support are defined. VBP Reporting Servers have the option of choosing from this list to access necessary data based on their local use cases and other contextual requirements."
* id = "vbp-reporting-server"
* url = "http://hl7.org/fhir/us/davinci-vbpr/CapabilityStatement/vbp-reporting-server"
* name = "VBPReportingServerCapabilityStatement"
* status = #active
* date = "2024-04-25"
* experimental = false
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"></div>"
* text.status = #generated
* kind = #requirements
* format[0] = #xml
* format[+] = #json
* fhirVersion = #4.0.1
* patchFormat = #application/json-patch+json
//* insert CapabilityCommon
* implementationGuide[0] = "http://hl7.org/fhir/us/davinci-deqm/ImplementationGuide/hl7.fhir.us.davinci-deqm"
* implementationGuide[+] = "http://hl7.org/fhir/us/cqfmeasures/ImplementationGuide/hl7.fhir.us.cqfmeasures"

//* rest[+]
//  * mode = #server
//  * documentation = "Da Vinci Value-Based Performance Reporting Server **SHALL** support the profiles specified in this implementation guide."
* rest.mode = #server
* rest.security.description = "For general security consideration refer to the [Security and Privacy Considerations](http://hl7.org/fhir/R4/secpriv-module.html)."
* rest.documentation = "Da Vinci Value-Based Performance Reporting Server **SHALL** support the profiles specified in this implementation guide."
* rest.interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.interaction[=].extension.valueCode = #SHOULD
* rest.interaction[=].code = #batch
* rest.interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.interaction[=].extension.valueCode = #SHALL
* rest.interaction[=].code = #transaction
* rest.interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.interaction[=].extension.valueCode = #MAY
* rest.interaction[=].code = #search-system
* rest.interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.interaction[=].extension.valueCode = #MAY
* rest.interaction[=].code = #history-system
* rest.resource[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension.valueCode = #MAY

* rest.resource[=].type = #Measure
* rest.resource[=].profile = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/vbp-measure"
* rest.resource[=].interaction.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction.extension.valueCode = #SHALL
* rest.resource[=].interaction.code = #read
* rest.resource[=].interaction[=].documentation = "Read allows maintainers of the Measures to get the logical definitions of the Measure"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #MAY
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[=].documentation = "Create allows maintainers of the Measures to create the logical definition of a Measure"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].interaction[=].documentation = "Update allows maintainers of the Measures to update the logical definitions of a Measure by its id or create a new one if it is new"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #patch
* rest.resource[=].interaction[=].documentation = "Patch allows maintainers of the Measures to update the logical definition of a Measure by posting a set of changes to it"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #delete
* rest.resource[=].interaction[=].documentation = "Delete allows maintainers of the Measures to delete the logical definition of a Measure"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #MAY
* rest.resource[=].interaction[=].code = #history-instance
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #MAY
* rest.resource[=].interaction[=].code = #history-type
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[=].documentation = "Search allows maintainers of the Measures to find the logical definition of a Measure"

* rest.resource[+].type = #MeasureReport
* rest.resource[=].supportedProfile[0] = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/vbp-performance-measurereport"
* rest.resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/vbp-quality-measurereport"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[=].documentation = "Read allows maintainers of the MeasureReports to get the logical definitions of the MeasureReports"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #MAY
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[=].documentation = "Create allows maintainers of the MeasureReports to create the logical definition of a MeasureReport"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].interaction[=].documentation = "Update allows maintainers of the MeasureReports to update the logical definitions of a MeasureReport by its id or create a new one if it is new"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #patch
* rest.resource[=].interaction[=].documentation = "Patch allows maintainers of the MeasureReports to update the logical definition of a MeasureReport by posting a set of changes to it"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #delete
* rest.resource[=].interaction[=].documentation = "Delete allows maintainers of the MeasureReports to delete the logical definition of a MeasureReport"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #MAY
* rest.resource[=].interaction[=].code = #history-instance
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #MAY
* rest.resource[=].interaction[=].code = #history-type
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[=].documentation = "Search allows maintainers of the MeasureReports to find the logical definition of a MeasureReport"
* rest.resource[=].conditionalCreate = true
* rest.resource[=].conditionalUpdate = true
* rest.resource[=].conditionalDelete = #multiple
* rest.resource[=].referencePolicy[0] = #literal
* rest.resource[=].referencePolicy[+] = #logical
* rest.resource[=].searchInclude = "MeasureReport.evaluatedResources"
* rest.resource[=].searchParam[0].name = "date"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/MeasureReport-date"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[+].name = "evaluatedResource"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/MeasureReport-evaluated-resource"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/MeasureReport-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].name = "measure"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/MeasureReport-measure"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[+].name = "patient"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/MeasureReport-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[+].name = "period"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/MeasureReport-period"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[+].name = "reporter"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/MeasureReport-reporter"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/MeasureReport-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].name = "subject"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/MeasureReport-subject"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[+].name = "measurereport-category"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/davinci-vbpr/SearchParameter/measurereport-category"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[+].name = "measurereport-subject-organization"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/davinci-vbpr/SearchParameter/measurereport-subject-organization"
* rest.resource[=].searchParam[=].type = #reference


