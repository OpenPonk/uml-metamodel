operations
ownedType
	"Derivation for Package::/ownedType"
	
	"{OCL} result = (packagedElement->select(oclIsKindOf(Type))->collect(oclAsType(Type))->asSet())"
	
	^ (self packagedElements
		select: [ :each | each oclIsKindOf: #Type ]
		thenCollect: [ :each | each oclAsType: #Type ]) asSet
