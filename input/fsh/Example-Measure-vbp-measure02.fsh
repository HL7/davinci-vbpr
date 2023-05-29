Instance: vbp-measure02
InstanceOf: Measure
Usage: #example
Description: "This is an example measure for the *VBP Measure* profile."
* meta.profile = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/vbp-measure"
* meta.extension[0].url = "http://hl7.org/fhir/StructureDefinition/instance-name"
* meta.extension[=].valueString = "Payer"
* meta.extension[+].url = "http://hl7.org/fhir/StructureDefinition/instance-description"
* meta.extension[=].valueMarkdown = "This is an example measure for the *VBP Measure* profile."

* url = "https://build.fhir.org/ig/HL7/davinci-vbpr/Measure-vbp-measure02"
* identifier.use = #temp
* identifier.system = "http://example.org/fhir/server"
* identifier.value = "ex-vbp-measure02"
* version = "1"
* name = "VbprMeasureExample02"
* title = "Example Value-Based Contract - ABC Payer and EveryHospital"
* status = #active
* description = "Example Value-Based Contract between ABC Payer and EveryHospital"
* experimental = true
* publisher = "ABC Payer"

* effectivePeriod.start = "2022-10-01"
* effectivePeriod.end = "2023-09-30"
//* extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/payment-stream"
//* extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/payment-stream#ubip
//* extension[=].valueCodeableConcept.text = "Utilization incentive payment"
//* extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/payment-stream"
//* extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/payment-stream#p4p
//* extension[=].valueCodeableConcept.text = "Pay for performance"

* extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/payment-stream"
* extension[=].extension[0].url = "type"
* extension[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/payment-stream#ubip
* extension[=].extension[=].valueCodeableConcept.text = "Utilization incentive payment"

* extension[+].url = "http://hl7.org/fhir/us/davinci-vbpr/StructureDefinition/payment-stream"
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/us/davinci-vbpr/CodeSystem/payment-stream#p4p
* extension[=].extension[=].valueCodeableConcept.text = "Pay for performance"

* relatedArtifact[0].type = #composed-of
* relatedArtifact[=].display = "Breast Cancer Screening"
* relatedArtifact[=].resource = "http://hl7.org/fhir/us/cqfmeasures/Measure/measure-exm125-FHIR"

* relatedArtifact[+].type = #composed-of
* relatedArtifact[=].display = "Colorectal Cancer Screening"
* relatedArtifact[=].resource = "http://hl7.org/fhir/us/cqfmeasures/Measure/measure-exm130-FHIR"

* relatedArtifact[+].type = #composed-of
* relatedArtifact[=].display = "Diabetic Retinopathy: Communication with the Physician Managing Ongoing Diabetes Care"
* relatedArtifact[=].resource = "http://example.org/Measure/measure-diabetes-retinopathy-FHIR"

* relatedArtifact[+].type = #composed-of
* relatedArtifact[=].display = "Diabetes: Hemoglobin A1c (HbA1c) Poor Control (> 9%)"
* relatedArtifact[=].resource = "http://example.org/Measure/measure-diabetes-A1c-FHIR"

* relatedArtifact[+].type = #composed-of
* relatedArtifact[=].display = "Diabetes: Medical Attention for Nephropathy"
* relatedArtifact[=].resource = "http://example.org/Measure/measure-diabetes-nephropathy-FHIR"

