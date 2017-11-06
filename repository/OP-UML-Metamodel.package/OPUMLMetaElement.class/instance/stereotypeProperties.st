GTInspector - extensions
stereotypeProperties
	| props |
	props := OrderedCollection new.
	^ self appliedStereotypes
		flatCollect: [ :stereo | 
			| meta |
			meta := stereo umlMetaClass.
			(meta ownedAttributes reject: [ :each | each name beginsWith: 'base_' ])
				collect: [ :each | 
					{each name.
					meta name.
					stereo perform: each name asSymbol} ] ]