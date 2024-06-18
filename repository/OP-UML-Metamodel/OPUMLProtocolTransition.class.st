"
A ProtocolTransition specifies a legal Transition for an Operation. Transitions of ProtocolStateMachines have the following information: a pre-condition (guard), a Trigger, and a post-condition. Every ProtocolTransition is associated with at most one BehavioralFeature belonging to the context Classifier of the ProtocolStateMachine.
"
Class {
	#name : 'OPUMLProtocolTransition',
	#superclass : 'OPUMLElement',
	#instVars : [
		'preCondition',
		'postCondition',
		'referreds'
	],
	#category : 'OP-UML-Metamodel-StateMachines',
	#package : 'OP-UML-Metamodel',
	#tag : 'StateMachines'
}

{ #category : 'accessing - NamedElement' }
OPUMLProtocolTransition >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLProtocolTransition >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'accessing - Transition' }
OPUMLProtocolTransition >> container [
	^ (sharedGeneralizations at: #Transition) container
]

{ #category : 'accessing - Transition' }
OPUMLProtocolTransition >> container: aRegion [
	(sharedGeneralizations at: #Transition) container: aRegion
]

{ #category : 'accessing - Transition' }
OPUMLProtocolTransition >> effect [
	^ (sharedGeneralizations at: #Transition) effect
]

{ #category : 'accessing - Transition' }
OPUMLProtocolTransition >> effect: aBehavior [
	(sharedGeneralizations at: #Transition) effect: aBehavior
]

{ #category : 'accessing - Namespace' }
OPUMLProtocolTransition >> elementImports [
	^ (sharedGeneralizations at: #Namespace) elementImports
]

{ #category : 'accessing - Namespace' }
OPUMLProtocolTransition >> elementImports: anElementImport [
	(sharedGeneralizations at: #Namespace) elementImports: anElementImport
]

{ #category : 'accessing - Transition' }
OPUMLProtocolTransition >> guard [
	^ (sharedGeneralizations at: #Transition) guard
]

{ #category : 'accessing - Transition' }
OPUMLProtocolTransition >> guard: aConstraint [
	(sharedGeneralizations at: #Transition) guard: aConstraint
]

{ #category : 'accessing - Namespace' }
OPUMLProtocolTransition >> importedMembers [
	^ (sharedGeneralizations at: #Namespace) importedMembers
]

{ #category : 'accessing - Namespace' }
OPUMLProtocolTransition >> importedMembers: aPackageableElement [
	(sharedGeneralizations at: #Namespace) importedMembers: aPackageableElement
]

{ #category : 'initialization' }
OPUMLProtocolTransition >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Transition.
	}
]

{ #category : 'initialization' }
OPUMLProtocolTransition >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Namespace put: (OPUMLNamespace newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Transition put: (OPUMLTransition newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ProtocolTransition put: self.
]

{ #category : 'accessing - RedefinableElement' }
OPUMLProtocolTransition >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : 'accessing - RedefinableElement' }
OPUMLProtocolTransition >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : 'accessing - Transition' }
OPUMLProtocolTransition >> kind [
	^ (sharedGeneralizations at: #Transition) kind
]

{ #category : 'accessing - Transition' }
OPUMLProtocolTransition >> kind: aTransitionKind [
	(sharedGeneralizations at: #Transition) kind: aTransitionKind
]

{ #category : 'accessing - Namespace' }
OPUMLProtocolTransition >> members [
	^ (sharedGeneralizations at: #Namespace) members
]

{ #category : 'accessing - Namespace' }
OPUMLProtocolTransition >> members: aNamedElement [
	(sharedGeneralizations at: #Namespace) members: aNamedElement
]

{ #category : 'accessing - NamedElement' }
OPUMLProtocolTransition >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLProtocolTransition >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLProtocolTransition >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLProtocolTransition >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLProtocolTransition >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLProtocolTransition >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing - Namespace' }
OPUMLProtocolTransition >> ownedMembers [
	^ (sharedGeneralizations at: #Namespace) ownedMembers
]

{ #category : 'accessing - Namespace' }
OPUMLProtocolTransition >> ownedMembers: aNamedElement [
	(sharedGeneralizations at: #Namespace) ownedMembers: aNamedElement
]

{ #category : 'accessing - Namespace' }
OPUMLProtocolTransition >> ownedRules [
	^ (sharedGeneralizations at: #Namespace) ownedRules
]

{ #category : 'accessing - Namespace' }
OPUMLProtocolTransition >> ownedRules: aConstraint [
	(sharedGeneralizations at: #Namespace) ownedRules: aConstraint
]

{ #category : 'accessing - Namespace' }
OPUMLProtocolTransition >> packageImports [
	^ (sharedGeneralizations at: #Namespace) packageImports
]

{ #category : 'accessing - Namespace' }
OPUMLProtocolTransition >> packageImports: aPackageImport [
	(sharedGeneralizations at: #Namespace) packageImports: aPackageImport
]

{ #category : 'accessing' }
OPUMLProtocolTransition >> postCondition [
	"Specifies the post condition of the Transition which is the Condition that should be obtained once the Transition is triggered. This post condition is part of the post condition of the Operation connected to the Transition."
	^ postCondition
]

{ #category : 'accessing' }
OPUMLProtocolTransition >> postCondition: aConstraint [
	"Specifies the post condition of the Transition which is the Condition that should be obtained once the Transition is triggered. This post condition is part of the post condition of the Operation connected to the Transition."
	postCondition := aConstraint
]

{ #category : 'accessing' }
OPUMLProtocolTransition >> preCondition [
	"Specifies the precondition of the Transition. It specifies the Condition that should be verified before triggering the Transition. This guard condition added to the source State will be evaluated as part of the precondition of the Operation referred by the Transition if any."
	^ preCondition
]

{ #category : 'accessing' }
OPUMLProtocolTransition >> preCondition: aConstraint [
	"Specifies the precondition of the Transition. It specifies the Condition that should be verified before triggering the Transition. This guard condition added to the source State will be evaluated as part of the precondition of the Operation referred by the Transition if any."
	preCondition := aConstraint
]

{ #category : 'accessing - NamedElement' }
OPUMLProtocolTransition >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLProtocolTransition >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing - RedefinableElement' }
OPUMLProtocolTransition >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : 'accessing - RedefinableElement' }
OPUMLProtocolTransition >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : 'accessing - Transition' }
OPUMLProtocolTransition >> redefinedTransition [
	^ (sharedGeneralizations at: #Transition) redefinedTransition
]

{ #category : 'accessing - Transition' }
OPUMLProtocolTransition >> redefinedTransition: aTransition [
	(sharedGeneralizations at: #Transition) redefinedTransition: aTransition
]

{ #category : 'accessing - Transition' }
OPUMLProtocolTransition >> redefinitionContext [
	^ (sharedGeneralizations at: #Transition) redefinitionContext
]

{ #category : 'accessing - Transition' }
OPUMLProtocolTransition >> redefinitionContext: aClassifier [
	(sharedGeneralizations at: #Transition) redefinitionContext: aClassifier
]

{ #category : 'accessing - RedefinableElement' }
OPUMLProtocolTransition >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : 'accessing - RedefinableElement' }
OPUMLProtocolTransition >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : 'operations - stubs' }
OPUMLProtocolTransition >> referredStub [
	"Derivation for ProtocolTransition::/referred"
	
	"{OCL} result = (trigger->collect(event)->select(oclIsKindOf(CallEvent))->collect(oclAsType(CallEvent).operation)->asSet())"
	
	self notYetImplemented

]

{ #category : 'accessing' }
OPUMLProtocolTransition >> referreds [
	"This association refers to the associated Operation. It is derived from the Operation of the CallEvent Trigger when applicable."
	^ referreds ifNil: [ referreds := OrderedCollection new ]
]

{ #category : 'accessing' }
OPUMLProtocolTransition >> referreds: anOperation [
	"This association refers to the associated Operation. It is derived from the Operation of the CallEvent Trigger when applicable."
	referreds := anOperation
]

{ #category : 'accessing - Transition' }
OPUMLProtocolTransition >> source [
	^ (sharedGeneralizations at: #Transition) source
]

{ #category : 'accessing - Transition' }
OPUMLProtocolTransition >> source: aVertex [
	(sharedGeneralizations at: #Transition) source: aVertex
]

{ #category : 'accessing - Transition' }
OPUMLProtocolTransition >> target [
	^ (sharedGeneralizations at: #Transition) target
]

{ #category : 'accessing - Transition' }
OPUMLProtocolTransition >> target: aVertex [
	(sharedGeneralizations at: #Transition) target: aVertex
]

{ #category : 'accessing - Transition' }
OPUMLProtocolTransition >> triggers [
	^ (sharedGeneralizations at: #Transition) triggers
]

{ #category : 'accessing - Transition' }
OPUMLProtocolTransition >> triggers: aTrigger [
	(sharedGeneralizations at: #Transition) triggers: aTrigger
]

{ #category : 'accessing - NamedElement' }
OPUMLProtocolTransition >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : 'accessing - NamedElement' }
OPUMLProtocolTransition >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
