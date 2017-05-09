instance creation
on: anOwner update: anOppositeSelector from: anOldObject to: aNewObject
	anOldObject = aNewObject
		ifTrue: [ ^ aNewObject ].
	anOldObject
		ifNotNil: [ (anOldObject perform: anOppositeSelector) uncheckedRemove: anOwner ].
	aNewObject ifNotNil: [ (aNewObject perform: anOppositeSelector) uncheckedAdd: anOwner ].
	^ aNewObject