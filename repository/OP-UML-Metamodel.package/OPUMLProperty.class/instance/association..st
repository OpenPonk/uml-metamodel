accessing
association: anAssociation
	"The Association of which this Property is a member, if any."
	association := OPUMLToOneLink
		on: self
		update: #memberEnds
		from: association
		to: anAssociation