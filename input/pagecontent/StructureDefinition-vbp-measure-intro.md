{% assign id = {{include.id}} %}

The Value-Based Performance Measure is designed to derive from the [CQFM Composite Measure](http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/composite-measure-cqfm) profile because value-based contracts may include performance based on quality measures. Basing on the CQMF Composite Measure profile would allow the Value-Based Performance Measure profile to reuse the standardized representation of a composite measure as defined in the [Quality Measure Implementation Guide](http://hl7.org/fhir/us/cqfmeasures/) to represent the list of quality measures and the weight of each measure in a value-based contract that tie to a payment stream using `Measure.relatedArtifact`.  

The [Formal Views](StructureDefinition-vbp-measure.html#profile) below provides the formal summary, definitions, and terminology requirements.

**Each Value-Based Performance Measure has the following mandatory elements:**
1. A `url` - a canonical identifier for this measure (value-based contract)
1. A `version` - version of the measure (value-based contract)
1. A `name` - a computer friendly name for this measure (value-based contract)
1. A `status` - status of this measure
1. An `experimental` element - set to `true` if for testing
1. A `publisher` - name of the publisher for this measure (value-based contract)
1. A `description` - description of the measure (value-based contract)

**Each Value-Based Performance Measure should have the following elements:**
1. Zero to many `identifier` - business identifier of the measure (value-based contract)
1. Zero to one `title` - a human friendly title for this measure (value-based contract)
1. Zero to one `effectivePeriod` - effective period of the measure, which is the contract term period for a value-based contract
1. Zero to one `lineOfBusiness` - line of business for the measure (value-based contract)
1. Zero to many `paymentStream` - list of payment streams covered in the measure (value-based contract)
1. Zeor to one `programModel` - program model for the measure (value-based contract) based on the HPCLAN Framework
1. Zero to many `group.code` - list of performance metrics that could be reported on the measure (value-based contract)
1. zero to many `relatedArtifact` - list of quality measures specified in the value-based contract that ties to the payment stream based on quality measures
1. zero to one `relatedArtifact.weight` for each relatedArtifact - the weight of a quality measure that contributes to the scoring


{% include link-list.md %}
