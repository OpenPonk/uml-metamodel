"
A special kind of State, which, when entered, signifies that the enclosing Region has completed. If the enclosing Region is directly contained in a StateMachine and all other Regions in that StateMachine also are completed, then it means that the entire StateMachine behavior is completed.
"
Class {
	#name : 'OPUMLFinalState',
	#superclass : 'OPUMLElement',
	#category : 'OpenPonk-UML-Metamodel-StateMachines',
	#package : 'OpenPonk-UML-Metamodel',
	#tag : 'StateMachines'
}

{ #category : 'accessing - NamedElement' }
OPUMLFinalState >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLFinalState >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'accessing - State' }
OPUMLFinalState >> connectionPoints [
	^ (sharedGeneralizations at: #State) connectionPoints
]

{ #category : 'accessing - State' }
OPUMLFinalState >> connectionPoints: aPseudostate [
	(sharedGeneralizations at: #State) connectionPoints: aPseudostate
]

{ #category : 'accessing - State' }
OPUMLFinalState >> connections [
	^ (sharedGeneralizations at: #State) connections
]

{ #category : 'accessing - State' }
OPUMLFinalState >> connections: aConnectionPointReference [
	(sharedGeneralizations at: #State) connections: aConnectionPointReference
]

{ #category : 'accessing - Vertex' }
OPUMLFinalState >> container [
	^ (sharedGeneralizations at: #Vertex) container
]

{ #category : 'accessing - Vertex' }
OPUMLFinalState >> container: aRegion [
	(sharedGeneralizations at: #Vertex) container: aRegion
]

{ #category : 'accessing - State' }
OPUMLFinalState >> deferrableTriggers [
	^ (sharedGeneralizations at: #State) deferrableTriggers
]

{ #category : 'accessing - State' }
OPUMLFinalState >> deferrableTriggers: aTrigger [
	(sharedGeneralizations at: #State) deferrableTriggers: aTrigger
]

{ #category : 'accessing - State' }
OPUMLFinalState >> doActivity [
	^ (sharedGeneralizations at: #State) doActivity
]

{ #category : 'accessing - State' }
OPUMLFinalState >> doActivity: aBehavior [
	(sharedGeneralizations at: #State) doActivity: aBehavior
]

{ #category : 'accessing - Namespace' }
OPUMLFinalState >> elementImports [
	^ (sharedGeneralizations at: #Namespace) elementImports
]

{ #category : 'accessing - Namespace' }
OPUMLFinalState >> elementImports: anElementImport [
	(sharedGeneralizations at: #Namespace) elementImports: anElementImport
]

{ #category : 'accessing - State' }
OPUMLFinalState >> entry [
	^ (sharedGeneralizations at: #State) entry
]

{ #category : 'accessing - State' }
OPUMLFinalState >> entry: aBehavior [
	(sharedGeneralizations at: #State) entry: aBehavior
]

{ #category : 'accessing - State' }
OPUMLFinalState >> exit [
	^ (sharedGeneralizations at: #State) exit
]

{ #category : 'accessing - State' }
OPUMLFinalState >> exit: aBehavior [
	(sharedGeneralizations at: #State) exit: aBehavior
]

{ #category : 'accessing - Namespace' }
OPUMLFinalState >> importedMembers [
	^ (sharedGeneralizations at: #Namespace) importedMembers
]

{ #category : 'accessing - Namespace' }
OPUMLFinalState >> importedMembers: aPackageableElement [
	(sharedGeneralizations at: #Namespace) importedMembers: aPackageableElement
]

{ #category : 'accessing - Vertex' }
OPUMLFinalState >> incomings [
	^ (sharedGeneralizations at: #Vertex) incomings
]

{ #category : 'accessing - Vertex' }
OPUMLFinalState >> incomings: aTransition [
	(sharedGeneralizations at: #Vertex) incomings: aTransition
]

{ #category : 'initialization' }
OPUMLFinalState >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #State.
	}
]

{ #category : 'initialization' }
OPUMLFinalState >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Namespace put: (OPUMLNamespace newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Vertex put: (OPUMLVertex newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #State put: (OPUMLState newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #FinalState put: self.
]

{ #category : 'accessing - State' }
OPUMLFinalState >> isComposite [
	^ (sharedGeneralizations at: #State) isComposite
]

{ #category : 'accessing - State' }
OPUMLFinalState >> isComposite: aBoolean [
	(sharedGeneralizations at: #State) isComposite: aBoolean
]

{ #category : 'accessing - RedefinableElement' }
OPUMLFinalState >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : 'accessing - RedefinableElement' }
OPUMLFinalState >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : 'accessing - State' }
OPUMLFinalState >> isOrthogonal [
	^ (sharedGeneralizations at: #State) isOrthogonal
]

{ #category : 'accessing - State' }
OPUMLFinalState >> isOrthogonal: aBoolean [
	(sharedGeneralizations at: #State) isOrthogonal: aBoolean
]

{ #category : 'accessing - State' }
OPUMLFinalState >> isSimple [
	^ (sharedGeneralizations at: #State) isSimple
]

{ #category : 'accessing - State' }
OPUMLFinalState >> isSimple: aBoolean [
	(sharedGeneralizations at: #State) isSimple: aBoolean
]

{ #category : 'accessing - State' }
OPUMLFinalState >> isSubmachineState [
	^ (sharedGeneralizations at: #State) isSubmachineState
]

{ #category : 'accessing - State' }
OPUMLFinalState >> isSubmachineState: aBoolean [
	(sharedGeneralizations at: #State) isSubmachineState: aBoolean
]

{ #category : 'accessing - Namespace' }
OPUMLFinalState >> members [
	^ (sharedGeneralizations at: #Namespace) members
]

{ #category : 'accessing - Namespace' }
OPUMLFinalState >> members: aNamedElement [
	(sharedGeneralizations at: #Namespace) members: aNamedElement
]

{ #category : 'accessing - NamedElement' }
OPUMLFinalState >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLFinalState >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLFinalState >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLFinalState >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLFinalState >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLFinalState >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing - Vertex' }
OPUMLFinalState >> outgoings [
	^ (sharedGeneralizations at: #Vertex) outgoings
]

{ #category : 'accessing - Vertex' }
OPUMLFinalState >> outgoings: aTransition [
	(sharedGeneralizations at: #Vertex) outgoings: aTransition
]

{ #category : 'accessing - Namespace' }
OPUMLFinalState >> ownedMembers [
	^ (sharedGeneralizations at: #Namespace) ownedMembers
]

{ #category : 'accessing - Namespace' }
OPUMLFinalState >> ownedMembers: aNamedElement [
	(sharedGeneralizations at: #Namespace) ownedMembers: aNamedElement
]

{ #category : 'accessing - Namespace' }
OPUMLFinalState >> ownedRules [
	^ (sharedGeneralizations at: #Namespace) ownedRules
]

{ #category : 'accessing - Namespace' }
OPUMLFinalState >> ownedRules: aConstraint [
	(sharedGeneralizations at: #Namespace) ownedRules: aConstraint
]

{ #category : 'accessing - Namespace' }
OPUMLFinalState >> packageImports [
	^ (sharedGeneralizations at: #Namespace) packageImports
]

{ #category : 'accessing - Namespace' }
OPUMLFinalState >> packageImports: aPackageImport [
	(sharedGeneralizations at: #Namespace) packageImports: aPackageImport
]

{ #category : 'accessing - NamedElement' }
OPUMLFinalState >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLFinalState >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing - RedefinableElement' }
OPUMLFinalState >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : 'accessing - RedefinableElement' }
OPUMLFinalState >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : 'accessing - State' }
OPUMLFinalState >> redefinedState [
	^ (sharedGeneralizations at: #State) redefinedState
]

{ #category : 'accessing - State' }
OPUMLFinalState >> redefinedState: aState [
	(sharedGeneralizations at: #State) redefinedState: aState
]

{ #category : 'accessing - State' }
OPUMLFinalState >> redefinitionContext [
	^ (sharedGeneralizations at: #State) redefinitionContext
]

{ #category : 'accessing - State' }
OPUMLFinalState >> redefinitionContext: aClassifier [
	(sharedGeneralizations at: #State) redefinitionContext: aClassifier
]

{ #category : 'accessing - RedefinableElement' }
OPUMLFinalState >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : 'accessing - RedefinableElement' }
OPUMLFinalState >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : 'accessing - State' }
OPUMLFinalState >> regions [
	^ (sharedGeneralizations at: #State) regions
]

{ #category : 'accessing - State' }
OPUMLFinalState >> regions: aRegion [
	(sharedGeneralizations at: #State) regions: aRegion
]

{ #category : 'accessing - State' }
OPUMLFinalState >> stateInvariant [
	^ (sharedGeneralizations at: #State) stateInvariant
]

{ #category : 'accessing - State' }
OPUMLFinalState >> stateInvariant: aConstraint [
	(sharedGeneralizations at: #State) stateInvariant: aConstraint
]

{ #category : 'accessing - State' }
OPUMLFinalState >> submachine [
	^ (sharedGeneralizations at: #State) submachine
]

{ #category : 'accessing - State' }
OPUMLFinalState >> submachine: aStateMachine [
	(sharedGeneralizations at: #State) submachine: aStateMachine
]

{ #category : 'accessing - NamedElement' }
OPUMLFinalState >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : 'accessing - NamedElement' }
OPUMLFinalState >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
