accessing
enumeration: anEnumeration
	"The Enumeration that this EnumerationLiteral is a member of."
	enumeration := OPUMLToOneLink
		on: self
		update: #ownedLiterals
		from: enumeration
		to: anEnumeration