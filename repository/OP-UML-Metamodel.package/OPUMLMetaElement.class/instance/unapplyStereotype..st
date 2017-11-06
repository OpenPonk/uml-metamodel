accessing - stereotypes
unapplyStereotype: aStereotype
	| meta attribute |
	self appliedStereotypes remove: aStereotype ifAbsent: [  ].
	meta := aStereotype umlMetaClass.
	attribute := (meta allAttributes select: [ :each | each name beginsWith: 'base_' ])
		detect: [ :each | self oclIsKindOf: each type name ].
	self perform: (attribute opposite name , ':') asSymbol with: nil