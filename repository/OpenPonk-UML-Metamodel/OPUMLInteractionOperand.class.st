"
An InteractionOperand is contained in a CombinedFragment. An InteractionOperand represents one operand of the expression given by the enclosing CombinedFragment.
"
Class {
	#name : 'OPUMLInteractionOperand',
	#superclass : 'OPUMLElement',
	#instVars : [
		'fragments',
		'guard'
	],
	#category : 'OpenPonk-UML-Metamodel-Interactions',
	#package : 'OpenPonk-UML-Metamodel',
	#tag : 'Interactions'
}

{ #category : 'accessing - NamedElement' }
OPUMLInteractionOperand >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLInteractionOperand >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'accessing - InteractionFragment' }
OPUMLInteractionOperand >> covereds [
	^ (sharedGeneralizations at: #InteractionFragment) covereds
]

{ #category : 'accessing - InteractionFragment' }
OPUMLInteractionOperand >> covereds: aLifeline [
	(sharedGeneralizations at: #InteractionFragment) covereds: aLifeline
]

{ #category : 'accessing - Namespace' }
OPUMLInteractionOperand >> elementImports [
	^ (sharedGeneralizations at: #Namespace) elementImports
]

{ #category : 'accessing - Namespace' }
OPUMLInteractionOperand >> elementImports: anElementImport [
	(sharedGeneralizations at: #Namespace) elementImports: anElementImport
]

{ #category : 'accessing - InteractionFragment' }
OPUMLInteractionOperand >> enclosingInteraction [
	^ (sharedGeneralizations at: #InteractionFragment) enclosingInteraction
]

{ #category : 'accessing - InteractionFragment' }
OPUMLInteractionOperand >> enclosingInteraction: anInteraction [
	(sharedGeneralizations at: #InteractionFragment) enclosingInteraction: anInteraction
]

{ #category : 'accessing - InteractionFragment' }
OPUMLInteractionOperand >> enclosingOperand [
	^ (sharedGeneralizations at: #InteractionFragment) enclosingOperand
]

{ #category : 'accessing - InteractionFragment' }
OPUMLInteractionOperand >> enclosingOperand: anInteractionOperand [
	(sharedGeneralizations at: #InteractionFragment) enclosingOperand: anInteractionOperand
]

{ #category : 'accessing' }
OPUMLInteractionOperand >> fragments [
	"The fragments of the operand."
	^ fragments ifNil: [ fragments := OPUMLToManyLinks on: self identity opposite: #enclosingOperand: ]
]

{ #category : 'accessing' }
OPUMLInteractionOperand >> fragments: anInteractionFragment [
	"The fragments of the operand."
	self fragments
		removeAll;
		addAll: anInteractionFragment
]

{ #category : 'accessing - InteractionFragment' }
OPUMLInteractionOperand >> generalOrderings [
	^ (sharedGeneralizations at: #InteractionFragment) generalOrderings
]

{ #category : 'accessing - InteractionFragment' }
OPUMLInteractionOperand >> generalOrderings: aGeneralOrdering [
	(sharedGeneralizations at: #InteractionFragment) generalOrderings: aGeneralOrdering
]

{ #category : 'accessing' }
OPUMLInteractionOperand >> guard [
	"Constraint of the operand."
	^ guard
]

{ #category : 'accessing' }
OPUMLInteractionOperand >> guard: anInteractionConstraint [
	"Constraint of the operand."
	guard := anInteractionConstraint
]

{ #category : 'accessing - Namespace' }
OPUMLInteractionOperand >> importedMembers [
	^ (sharedGeneralizations at: #Namespace) importedMembers
]

{ #category : 'accessing - Namespace' }
OPUMLInteractionOperand >> importedMembers: aPackageableElement [
	(sharedGeneralizations at: #Namespace) importedMembers: aPackageableElement
]

{ #category : 'initialization' }
OPUMLInteractionOperand >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #InteractionFragment.
		sharedGeneralizations at: #Namespace.
	}
]

{ #category : 'initialization' }
OPUMLInteractionOperand >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #InteractionFragment put: (OPUMLInteractionFragment newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Namespace put: (OPUMLNamespace newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #InteractionOperand put: self.
]

{ #category : 'accessing - Namespace' }
OPUMLInteractionOperand >> members [
	^ (sharedGeneralizations at: #Namespace) members
]

{ #category : 'accessing - Namespace' }
OPUMLInteractionOperand >> members: aNamedElement [
	(sharedGeneralizations at: #Namespace) members: aNamedElement
]

{ #category : 'accessing - NamedElement' }
OPUMLInteractionOperand >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLInteractionOperand >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLInteractionOperand >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLInteractionOperand >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLInteractionOperand >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLInteractionOperand >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing - Namespace' }
OPUMLInteractionOperand >> ownedMembers [
	^ (sharedGeneralizations at: #Namespace) ownedMembers
]

{ #category : 'accessing - Namespace' }
OPUMLInteractionOperand >> ownedMembers: aNamedElement [
	(sharedGeneralizations at: #Namespace) ownedMembers: aNamedElement
]

{ #category : 'accessing - Namespace' }
OPUMLInteractionOperand >> ownedRules [
	^ (sharedGeneralizations at: #Namespace) ownedRules
]

{ #category : 'accessing - Namespace' }
OPUMLInteractionOperand >> ownedRules: aConstraint [
	(sharedGeneralizations at: #Namespace) ownedRules: aConstraint
]

{ #category : 'accessing - Namespace' }
OPUMLInteractionOperand >> packageImports [
	^ (sharedGeneralizations at: #Namespace) packageImports
]

{ #category : 'accessing - Namespace' }
OPUMLInteractionOperand >> packageImports: aPackageImport [
	(sharedGeneralizations at: #Namespace) packageImports: aPackageImport
]

{ #category : 'accessing - NamedElement' }
OPUMLInteractionOperand >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLInteractionOperand >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLInteractionOperand >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : 'accessing - NamedElement' }
OPUMLInteractionOperand >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
