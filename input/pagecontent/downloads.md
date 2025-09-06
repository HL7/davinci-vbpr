### Downloads
* FHIR Da Vinci Value-Based Performance Reporting (VBPR) IG downloads:
    * The full [FHIR Da Vinci VBPR IG](full-ig.zip) that can be hosted locally
    * FHIR VBPR Resource definitions [(JSON)](definitions.json.zip) [(XML)](definitions.xml.zip) [(TTL)](definitions.ttl.zip)
    * All examples in the VBPR IG [(JSON)](examples.json.zip) [(XML)](examples.xml.zip) [(TTL)](examples.ttl.zip)
    * FHIR VBPR IG [Validator Pack](validator-hl7.fhir.us.davinci-vbpr.pack)
    * [Schematrons](schematrons.zip)
* FHIR R4 Specification [Downloads](http://hl7.org/fhir/R4/downloads.html)
* FHIR R4 [Core Specification Text](http://hl7.org/fhir/R4/fhir-spec.zip)
* [Instructions for the FHIR Validator](https://confluence.hl7.org/display/FHIR/Using+the+FHIR+Validator)
* Current version of the [FHIR Validator](https://fhir.github.io/latest-ig-validator/org.hl7.fhir.validator.jar)

### Package File

The following package file includes a Node Package Manager ([NPM](https://hl7.org/fhir/packages.html)) package file used by many of the FHIR tools. It contains all the value sets, profiles, extensions, list of pages and URLs, etc., that are defined as part of this version of the implementation guide (IG). This file should be the first choice whenever generating any implementation artifacts since it contains all of the rules about what makes the profiles valid. Implementers will still need to be familiar with the content of the specification and profiles that apply in order to make a conformant implementation. See the [Validating Resources]({{site.data.fhir.path}}validation.html) documentation in FHIR.

- [Package](package.tgz){::download="true"}

### Examples

All the examples that are used in this IG are available for download:

- [XML](examples.xml.zip)
- [JSON](examples.json.zip)

### Schematrons

Schematrons are available for download:

- 

#### Cross Version Analysis

{% include cross-version-analysis.xhtml %}

#### Dependency Table

{% include dependency-table.xhtml %}

#### Globals Table

{% include globals-table.xhtml %}

#### IP Statements

{% include ip-statements.xhtml %}
