operations
ownedStereotype
	"Derivation for Package::/ownedStereotype "
	
	"{OCL} result = (packagedElement->select(oclIsKindOf(Stereotype))->collect(oclAsType(Stereotype))->asSet())"
	
	^ (self packagedElements
		select: [ :each | each oclIsKindOf: #Stereotype ]
		thenCollect: [ :each | each oclAsType: #Stereotype ]) asSet
