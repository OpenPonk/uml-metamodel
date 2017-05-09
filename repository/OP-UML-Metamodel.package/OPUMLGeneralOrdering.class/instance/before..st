accessing
before: anOccurrenceSpecification
	"The OccurrenceSpecification referenced comes before the OccurrenceSpecification referenced by after."
	before := OPUMLToOneLink
		on: self
		update: #toAfters
		from: before
		to: anOccurrenceSpecification