operations
nestedPackage
	"Derivation for Package::/nestedPackage "
	
	"{OCL} result = (packagedElement->select(oclIsKindOf(Package))->collect(oclAsType(Package))->asSet())"
	
	^ (self packagedElements
		select: [ :each | each oclIsKindOf: #Package ]
		thenCollect: [ :each | each oclAsType: #Package ]) asSet
