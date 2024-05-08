{% assign id = {{include.id}} %}

The [Formal Views](StructureDefinition-vbp-performance-measurereport.html#profile) below provides the formal summary, definitions, and terminology requirements.

**Each Value-Based Performance MeasureReport has the following mandatory elements**
1. A `measurereport-category` - with a fixed code `vbp`
1. A `status` - status of this report
1. A `type` - with a fixed value `summary`
1. A `measure` - that references the Value-Based Performance Measure
1. An `orgSubject` extention on `subject` - that references the organization the report is for
1. A `date` 
1. A `reporter` - references the organization who is reporting the data
1. A `period` - the performance period the report covers

**Each Value-Based Performance MeasureReport should have the following elements**
1. Zero to many `group` - each group corresponds to a performance metric
    * If `group` is present, each group must have a `group.code` that represents the performance metric   
1. Zero to many `evaluatedResource` - references the VBP Quality MeasureReport profile


{% include link-list.md %}
