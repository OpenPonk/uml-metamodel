accessing
owningAssociation: anAssociation
	"The owning association of this property, if any."
	owningAssociation := OPUMLToOneLink
		on: self
		update: #ownedEnds
		from: owningAssociation
		to: anAssociation