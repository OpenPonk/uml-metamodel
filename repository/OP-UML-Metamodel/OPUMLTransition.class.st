"
A Transition represents an arc between exactly one source Vertex and exactly one Target vertex (the source and targets may be the same Vertex). It may form part of a compound transition, which takes the StateMachine from one steady State configuration to another, representing the full response of the StateMachine to an occurrence of an Event that triggered it.
"
Class {
	#name : 'OPUMLTransition',
	#superclass : 'OPUMLElement',
	#instVars : [
		'redefinitionContext',
		'source',
		'effect',
		'guard',
		'container',
		'target',
		'kind',
		'triggers',
		'redefinedTransition'
	],
	#category : 'OP-UML-Metamodel-StateMachines',
	#package : 'OP-UML-Metamodel',
	#tag : 'StateMachines'
}

{ #category : 'accessing - NamedElement' }
OPUMLTransition >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLTransition >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'accessing' }
OPUMLTransition >> container [
	"Designates the Region that owns this Transition."
	^ container
]

{ #category : 'accessing' }
OPUMLTransition >> container: aRegion [
	"Designates the Region that owns this Transition."
	container := OPUMLToOneLink
		on: self identity
		update: #transitions
		from: container
		to: aRegion
]

{ #category : 'operations - stubs' }
OPUMLTransition >> containingStateMachineStub [
	"The query containingStateMachine() returns the StateMachine that contains the Transition either directly or transitively."
	
	"{OCL} result = (container.containingStateMachine())"
	
	self notYetImplemented

]

{ #category : 'accessing' }
OPUMLTransition >> effect [
	"Specifies an optional behavior to be performed when the Transition fires."
	^ effect
]

{ #category : 'accessing' }
OPUMLTransition >> effect: aBehavior [
	"Specifies an optional behavior to be performed when the Transition fires."
	effect := aBehavior
]

{ #category : 'accessing - Namespace' }
OPUMLTransition >> elementImports [
	^ (sharedGeneralizations at: #Namespace) elementImports
]

{ #category : 'accessing - Namespace' }
OPUMLTransition >> elementImports: anElementImport [
	(sharedGeneralizations at: #Namespace) elementImports: anElementImport
]

{ #category : 'accessing' }
OPUMLTransition >> guard [
	"A guard is a Constraint that provides a fine-grained control over the firing of the Transition. The guard is evaluated when an Event occurrence is dispatched by the StateMachine. If the guard is true at that time, the Transition may be enabled, otherwise, it is disabled. Guards should be pure expressions without side effects. Guard expressions with side effects are ill formed."
	^ guard
]

{ #category : 'accessing' }
OPUMLTransition >> guard: aConstraint [
	"A guard is a Constraint that provides a fine-grained control over the firing of the Transition. The guard is evaluated when an Event occurrence is dispatched by the StateMachine. If the guard is true at that time, the Transition may be enabled, otherwise, it is disabled. Guards should be pure expressions without side effects. Guard expressions with side effects are ill formed."
	guard := aConstraint
]

{ #category : 'accessing - Namespace' }
OPUMLTransition >> importedMembers [
	^ (sharedGeneralizations at: #Namespace) importedMembers
]

{ #category : 'accessing - Namespace' }
OPUMLTransition >> importedMembers: aPackageableElement [
	(sharedGeneralizations at: #Namespace) importedMembers: aPackageableElement
]

{ #category : 'initialization' }
OPUMLTransition >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Namespace.
		sharedGeneralizations at: #RedefinableElement.
	}
]

{ #category : 'initialization' }
OPUMLTransition >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Namespace put: (OPUMLNamespace newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Transition put: self.
]

{ #category : 'operations - stubs' }
OPUMLTransition >> isConsistentWithStub [
	"The query isConsistentWith() specifies that a redefining Transition is consistent with a redefined Transition provided that the redefining Transition has the following relation to the redefined Transition: A redefining Transition redefines all properties of the corresponding redefined Transition except the source State and the Trigger."
	
	"pre: {OCL} redefiningElement.isRedefinitionContextValid(self)"
	"{OCL} result = (-- the following is merely a default body; it is expected that the specific form of this constraint will be specified by profiles
true)"
	
	self notYetImplemented

]

{ #category : 'accessing - RedefinableElement' }
OPUMLTransition >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : 'accessing - RedefinableElement' }
OPUMLTransition >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : 'accessing' }
OPUMLTransition >> kind [
	"Indicates the precise type of the Transition."
	^ kind ifNil: [ kind := OPUMLTransitionKind new external ]
]

{ #category : 'accessing' }
OPUMLTransition >> kind: aTransitionKind [
	"Indicates the precise type of the Transition."
	kind := aTransitionKind
]

{ #category : 'accessing - Namespace' }
OPUMLTransition >> members [
	^ (sharedGeneralizations at: #Namespace) members
]

{ #category : 'accessing - Namespace' }
OPUMLTransition >> members: aNamedElement [
	(sharedGeneralizations at: #Namespace) members: aNamedElement
]

{ #category : 'accessing - NamedElement' }
OPUMLTransition >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLTransition >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLTransition >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLTransition >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLTransition >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLTransition >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing - Namespace' }
OPUMLTransition >> ownedMembers [
	^ (sharedGeneralizations at: #Namespace) ownedMembers
]

{ #category : 'accessing - Namespace' }
OPUMLTransition >> ownedMembers: aNamedElement [
	(sharedGeneralizations at: #Namespace) ownedMembers: aNamedElement
]

{ #category : 'accessing - Namespace' }
OPUMLTransition >> ownedRules [
	^ (sharedGeneralizations at: #Namespace) ownedRules
]

{ #category : 'accessing - Namespace' }
OPUMLTransition >> ownedRules: aConstraint [
	(sharedGeneralizations at: #Namespace) ownedRules: aConstraint
]

{ #category : 'accessing - Namespace' }
OPUMLTransition >> packageImports [
	^ (sharedGeneralizations at: #Namespace) packageImports
]

{ #category : 'accessing - Namespace' }
OPUMLTransition >> packageImports: aPackageImport [
	(sharedGeneralizations at: #Namespace) packageImports: aPackageImport
]

{ #category : 'accessing - NamedElement' }
OPUMLTransition >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLTransition >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing - RedefinableElement' }
OPUMLTransition >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : 'accessing - RedefinableElement' }
OPUMLTransition >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : 'accessing' }
OPUMLTransition >> redefinedTransition [
	"The Transition that is redefined by this Transition."
	^ redefinedTransition
]

{ #category : 'accessing' }
OPUMLTransition >> redefinedTransition: aTransition [
	"The Transition that is redefined by this Transition."
	redefinedTransition := aTransition
]

{ #category : 'accessing' }
OPUMLTransition >> redefinitionContext [
	"References the Classifier in which context this element may be redefined."
	^ redefinitionContext
]

{ #category : 'accessing' }
OPUMLTransition >> redefinitionContext: aClassifier [
	"References the Classifier in which context this element may be redefined."
	redefinitionContext := aClassifier
]

{ #category : 'operations - stubs' }
OPUMLTransition >> redefinitionContextStub [
	"The redefinition context of a Transition is the nearest containing StateMachine."
	
	"{OCL} result = (let sm : StateMachine = containingStateMachine() in
if sm._'context' = null or sm.general->notEmpty() then
  sm
else
  sm._'context'
endif)"
	
	self notYetImplemented

]

{ #category : 'accessing - RedefinableElement' }
OPUMLTransition >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : 'accessing - RedefinableElement' }
OPUMLTransition >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : 'accessing' }
OPUMLTransition >> source [
	"Designates the originating Vertex (State or Pseudostate) of the Transition."
	^ source
]

{ #category : 'accessing' }
OPUMLTransition >> source: aVertex [
	"Designates the originating Vertex (State or Pseudostate) of the Transition."
	source := OPUMLToOneLink
		on: self identity
		update: #outgoings
		from: source
		to: aVertex
]

{ #category : 'accessing' }
OPUMLTransition >> target [
	"Designates the target Vertex that is reached when the Transition is taken."
	^ target
]

{ #category : 'accessing' }
OPUMLTransition >> target: aVertex [
	"Designates the target Vertex that is reached when the Transition is taken."
	target := OPUMLToOneLink
		on: self identity
		update: #incomings
		from: target
		to: aVertex
]

{ #category : 'accessing' }
OPUMLTransition >> triggers [
	"Specifies the Triggers that may fire the transition."
	^ triggers ifNil: [ triggers := OrderedCollection new ]
]

{ #category : 'accessing' }
OPUMLTransition >> triggers: aTrigger [
	"Specifies the Triggers that may fire the transition."
	triggers := aTrigger
]

{ #category : 'accessing - NamedElement' }
OPUMLTransition >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : 'accessing - NamedElement' }
OPUMLTransition >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
