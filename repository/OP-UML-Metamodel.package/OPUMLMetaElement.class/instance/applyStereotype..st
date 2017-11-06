accessing - stereotypes
applyStereotype: aStereotype
	| meta attribute |
	self appliedStereotypes addIfNotPresent: aStereotype.
	meta := aStereotype umlMetaClass.
	attribute := (meta allAttributes select: [ :each | each name beginsWith: 'base_' ])
		detect: [ :each | self oclIsKindOf: each type name ].
	self perform: (attribute opposite name , ':') asSymbol with: aStereotype