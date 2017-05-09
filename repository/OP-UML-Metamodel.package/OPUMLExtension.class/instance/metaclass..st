accessing
metaclass: aClass
	"References the Class that is extended through an Extension. The property is derived from the type of the memberEnd that is not the ownedEnd."
	metaclass := OPUMLToOneLink
		on: self
		update: #extensions
		from: metaclass
		to: aClass