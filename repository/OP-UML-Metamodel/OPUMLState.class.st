"
A State models a situation during which some (usually implicit) invariant condition holds.
"
Class {
	#name : 'OPUMLState',
	#superclass : 'OPUMLElement',
	#instVars : [
		'isSubmachineState',
		'regions',
		'exit',
		'doActivity',
		'connectionPoints',
		'redefinitionContext',
		'submachine',
		'deferrableTriggers',
		'isSimple',
		'isComposite',
		'entry',
		'redefinedState',
		'connections',
		'isOrthogonal',
		'stateInvariant'
	],
	#category : 'OP-UML-Metamodel-StateMachines',
	#package : 'OP-UML-Metamodel',
	#tag : 'StateMachines'
}

{ #category : 'accessing - NamedElement' }
OPUMLState >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLState >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'accessing' }
OPUMLState >> connectionPoints [
	"The entry and exit Pseudostates of a composite State. These can only be entry or exit Pseudostates, and they must have different names. They can only be defined for composite States."
	^ connectionPoints ifNil: [ connectionPoints := OPUMLToManyLinks on: self identity opposite: #state: ]
]

{ #category : 'accessing' }
OPUMLState >> connectionPoints: aPseudostate [
	"The entry and exit Pseudostates of a composite State. These can only be entry or exit Pseudostates, and they must have different names. They can only be defined for composite States."
	self connectionPoints
		removeAll;
		addAll: aPseudostate
]

{ #category : 'accessing' }
OPUMLState >> connections [
	"The entry and exit connection points used in conjunction with this (submachine) State, i.e., as targets and sources, respectively, in the Region with the submachine State. A connection point reference references the corresponding definition of a connection point Pseudostate in the StateMachine referenced by the submachine State."
	^ connections ifNil: [ connections := OPUMLToManyLinks on: self identity opposite: #state: ]
]

{ #category : 'accessing' }
OPUMLState >> connections: aConnectionPointReference [
	"The entry and exit connection points used in conjunction with this (submachine) State, i.e., as targets and sources, respectively, in the Region with the submachine State. A connection point reference references the corresponding definition of a connection point Pseudostate in the StateMachine referenced by the submachine State."
	self connections
		removeAll;
		addAll: aConnectionPointReference
]

{ #category : 'accessing - Vertex' }
OPUMLState >> container [
	^ (sharedGeneralizations at: #Vertex) container
]

{ #category : 'accessing - Vertex' }
OPUMLState >> container: aRegion [
	(sharedGeneralizations at: #Vertex) container: aRegion
]

{ #category : 'operations - stubs' }
OPUMLState >> containingStateMachineStub [
	"The query containingStateMachine() returns the StateMachine that contains the State either directly or transitively."
	
	"{OCL} result = (container.containingStateMachine())"
	
	self notYetImplemented

]

{ #category : 'accessing' }
OPUMLState >> deferrableTriggers [
	"A list of Triggers that are candidates to be retained by the StateMachine if they trigger no Transitions out of the State (not consumed). A deferred Trigger is retained until the StateMachine reaches a State configuration where it is no longer deferred."
	^ deferrableTriggers ifNil: [ deferrableTriggers := OrderedCollection new ]
]

{ #category : 'accessing' }
OPUMLState >> deferrableTriggers: aTrigger [
	"A list of Triggers that are candidates to be retained by the StateMachine if they trigger no Transitions out of the State (not consumed). A deferred Trigger is retained until the StateMachine reaches a State configuration where it is no longer deferred."
	deferrableTriggers := aTrigger
]

{ #category : 'accessing' }
OPUMLState >> doActivity [
	"An optional Behavior that is executed while being in the State. The execution starts when this State is entered, and ceases either by itself when done, or when the State is exited, whichever comes first."
	^ doActivity
]

{ #category : 'accessing' }
OPUMLState >> doActivity: aBehavior [
	"An optional Behavior that is executed while being in the State. The execution starts when this State is entered, and ceases either by itself when done, or when the State is exited, whichever comes first."
	doActivity := aBehavior
]

{ #category : 'accessing - Namespace' }
OPUMLState >> elementImports [
	^ (sharedGeneralizations at: #Namespace) elementImports
]

{ #category : 'accessing - Namespace' }
OPUMLState >> elementImports: anElementImport [
	(sharedGeneralizations at: #Namespace) elementImports: anElementImport
]

{ #category : 'accessing' }
OPUMLState >> entry [
	"An optional Behavior that is executed whenever this State is entered regardless of the Transition taken to reach the State. If defined, entry Behaviors are always executed to completion prior to any internal Behavior or Transitions performed within the State."
	^ entry
]

{ #category : 'accessing' }
OPUMLState >> entry: aBehavior [
	"An optional Behavior that is executed whenever this State is entered regardless of the Transition taken to reach the State. If defined, entry Behaviors are always executed to completion prior to any internal Behavior or Transitions performed within the State."
	entry := aBehavior
]

{ #category : 'accessing' }
OPUMLState >> exit [
	"An optional Behavior that is executed whenever this State is exited regardless of which Transition was taken out of the State. If defined, exit Behaviors are always executed to completion only after all internal and transition Behaviors have completed execution."
	^ exit
]

{ #category : 'accessing' }
OPUMLState >> exit: aBehavior [
	"An optional Behavior that is executed whenever this State is exited regardless of which Transition was taken out of the State. If defined, exit Behaviors are always executed to completion only after all internal and transition Behaviors have completed execution."
	exit := aBehavior
]

{ #category : 'accessing - Namespace' }
OPUMLState >> importedMembers [
	^ (sharedGeneralizations at: #Namespace) importedMembers
]

{ #category : 'accessing - Namespace' }
OPUMLState >> importedMembers: aPackageableElement [
	(sharedGeneralizations at: #Namespace) importedMembers: aPackageableElement
]

{ #category : 'accessing - Vertex' }
OPUMLState >> incomings [
	^ (sharedGeneralizations at: #Vertex) incomings
]

{ #category : 'accessing - Vertex' }
OPUMLState >> incomings: aTransition [
	(sharedGeneralizations at: #Vertex) incomings: aTransition
]

{ #category : 'initialization' }
OPUMLState >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #RedefinableElement.
		sharedGeneralizations at: #Namespace.
		sharedGeneralizations at: #Vertex.
	}
]

{ #category : 'initialization' }
OPUMLState >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Namespace put: (OPUMLNamespace newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Vertex put: (OPUMLVertex newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #State put: self.
]

{ #category : 'accessing' }
OPUMLState >> isComposite [
	"A state with isComposite=true is said to be a composite State. A composite State is a State that contains at least one Region."
	^ isComposite
]

{ #category : 'accessing' }
OPUMLState >> isComposite: aBoolean [
	"A state with isComposite=true is said to be a composite State. A composite State is a State that contains at least one Region."
	isComposite := aBoolean
]

{ #category : 'operations - stubs' }
OPUMLState >> isCompositeStub [
	"A composite State is a State with at least one Region."
	
	"{OCL} result = (region->notEmpty())"
	
	self notYetImplemented

]

{ #category : 'operations - stubs' }
OPUMLState >> isConsistentWithStub [
	"The query isConsistentWith() specifies that a redefining State is consistent with a redefined State provided that the redefining State is an extension of the redefined State A simple State can be redefined (extended) to become a composite State (by adding one or more Regions) and a composite State can be redefined (extended) by adding Regions and by adding Vertices, States, and Transitions to inherited Regions. All States may add or replace entry, exit, and 'doActivity' Behaviors."
	
	"pre: {OCL} redefiningElement.isRedefinitionContextValid(self)"
	"{OCL} result = (-- the following is merely a default body; it is expected that the specific form of this constraint will be specified by profiles
true)"
	
	self notYetImplemented

]

{ #category : 'accessing - RedefinableElement' }
OPUMLState >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : 'accessing - RedefinableElement' }
OPUMLState >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : 'accessing' }
OPUMLState >> isOrthogonal [
	"A State with isOrthogonal=true is said to be an orthogonal composite State An orthogonal composite State contains two or more Regions."
	^ isOrthogonal
]

{ #category : 'accessing' }
OPUMLState >> isOrthogonal: aBoolean [
	"A State with isOrthogonal=true is said to be an orthogonal composite State An orthogonal composite State contains two or more Regions."
	isOrthogonal := aBoolean
]

{ #category : 'operations - stubs' }
OPUMLState >> isOrthogonalStub [
	"An orthogonal State is a composite state with at least 2 regions."
	
	"{OCL} result = (region->size () > 1)"
	
	self notYetImplemented

]

{ #category : 'operations - stubs' }
OPUMLState >> isRedefinitionContextValidStub [
	"The query isRedefinitionContextValid() specifies whether the redefinition contexts of a State are properly related to the redefinition contexts of the specified State to allow this element to redefine the other. This means that the containing Region of a redefining State must redefine the containing Region of the redefined State."
	
	"{OCL} result = (if redefinedElement.oclIsKindOf(State) then
  let redefinedState : State = redefinedElement.oclAsType(State) in
    container.redefinedElement.oclAsType(Region)->exists(r:Region |
      r.subvertex->includes(redefinedState))
else
  false
endif)"
	
	self notYetImplemented

]

{ #category : 'accessing' }
OPUMLState >> isSimple [
	"A State with isSimple=true is said to be a simple State A simple State does not have any Regions and it does not refer to any submachine StateMachine."
	^ isSimple
]

{ #category : 'accessing' }
OPUMLState >> isSimple: aBoolean [
	"A State with isSimple=true is said to be a simple State A simple State does not have any Regions and it does not refer to any submachine StateMachine."
	isSimple := aBoolean
]

{ #category : 'operations - stubs' }
OPUMLState >> isSimpleStub [
	"A simple State is a State without any regions."
	
	"{OCL} result = ((region->isEmpty()) and not isSubmachineState())"
	
	self notYetImplemented

]

{ #category : 'accessing' }
OPUMLState >> isSubmachineState [
	"A State with isSubmachineState=true is said to be a submachine State Such a State refers to another StateMachine(submachine)."
	^ isSubmachineState
]

{ #category : 'accessing' }
OPUMLState >> isSubmachineState: aBoolean [
	"A State with isSubmachineState=true is said to be a submachine State Such a State refers to another StateMachine(submachine)."
	isSubmachineState := aBoolean
]

{ #category : 'operations - stubs' }
OPUMLState >> isSubmachineStateStub [
	"Only submachine State references another StateMachine."
	
	"{OCL} result = (submachine <> null)"
	
	self notYetImplemented

]

{ #category : 'accessing - Namespace' }
OPUMLState >> members [
	^ (sharedGeneralizations at: #Namespace) members
]

{ #category : 'accessing - Namespace' }
OPUMLState >> members: aNamedElement [
	(sharedGeneralizations at: #Namespace) members: aNamedElement
]

{ #category : 'accessing - NamedElement' }
OPUMLState >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLState >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLState >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLState >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLState >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLState >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing - Vertex' }
OPUMLState >> outgoings [
	^ (sharedGeneralizations at: #Vertex) outgoings
]

{ #category : 'accessing - Vertex' }
OPUMLState >> outgoings: aTransition [
	(sharedGeneralizations at: #Vertex) outgoings: aTransition
]

{ #category : 'accessing - Namespace' }
OPUMLState >> ownedMembers [
	^ (sharedGeneralizations at: #Namespace) ownedMembers
]

{ #category : 'accessing - Namespace' }
OPUMLState >> ownedMembers: aNamedElement [
	(sharedGeneralizations at: #Namespace) ownedMembers: aNamedElement
]

{ #category : 'accessing - Namespace' }
OPUMLState >> ownedRules [
	^ (sharedGeneralizations at: #Namespace) ownedRules
]

{ #category : 'accessing - Namespace' }
OPUMLState >> ownedRules: aConstraint [
	(sharedGeneralizations at: #Namespace) ownedRules: aConstraint
]

{ #category : 'accessing - Namespace' }
OPUMLState >> packageImports [
	^ (sharedGeneralizations at: #Namespace) packageImports
]

{ #category : 'accessing - Namespace' }
OPUMLState >> packageImports: aPackageImport [
	(sharedGeneralizations at: #Namespace) packageImports: aPackageImport
]

{ #category : 'accessing - NamedElement' }
OPUMLState >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLState >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing - RedefinableElement' }
OPUMLState >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : 'accessing - RedefinableElement' }
OPUMLState >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : 'accessing' }
OPUMLState >> redefinedState [
	"The State of which this State is a redefinition."
	^ redefinedState
]

{ #category : 'accessing' }
OPUMLState >> redefinedState: aState [
	"The State of which this State is a redefinition."
	redefinedState := aState
]

{ #category : 'accessing' }
OPUMLState >> redefinitionContext [
	"References the Classifier in which context this element may be redefined."
	^ redefinitionContext
]

{ #category : 'accessing' }
OPUMLState >> redefinitionContext: aClassifier [
	"References the Classifier in which context this element may be redefined."
	redefinitionContext := aClassifier
]

{ #category : 'operations - stubs' }
OPUMLState >> redefinitionContextStub [
	"The redefinition context of a State is the nearest containing StateMachine."
	
	"{OCL} result = (let sm : StateMachine = containingStateMachine() in
if sm._'context' = null or sm.general->notEmpty() then
  sm
else
  sm._'context'
endif)"
	
	self notYetImplemented

]

{ #category : 'accessing - RedefinableElement' }
OPUMLState >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : 'accessing - RedefinableElement' }
OPUMLState >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : 'accessing' }
OPUMLState >> regions [
	"The Regions owned directly by the State."
	^ regions ifNil: [ regions := OPUMLToManyLinks on: self identity opposite: #state: ]
]

{ #category : 'accessing' }
OPUMLState >> regions: aRegion [
	"The Regions owned directly by the State."
	self regions
		removeAll;
		addAll: aRegion
]

{ #category : 'accessing' }
OPUMLState >> stateInvariant [
	"Specifies conditions that are always true when this State is the current State. In ProtocolStateMachines state invariants are additional conditions to the preconditions of the outgoing Transitions, and to the postcondition of the incoming Transitions."
	^ stateInvariant
]

{ #category : 'accessing' }
OPUMLState >> stateInvariant: aConstraint [
	"Specifies conditions that are always true when this State is the current State. In ProtocolStateMachines state invariants are additional conditions to the preconditions of the outgoing Transitions, and to the postcondition of the incoming Transitions."
	stateInvariant := aConstraint
]

{ #category : 'accessing' }
OPUMLState >> submachine [
	"The StateMachine that is to be inserted in place of the (submachine) State."
	^ submachine
]

{ #category : 'accessing' }
OPUMLState >> submachine: aStateMachine [
	"The StateMachine that is to be inserted in place of the (submachine) State."
	submachine := OPUMLToOneLink
		on: self identity
		update: #submachineStates
		from: submachine
		to: aStateMachine
]

{ #category : 'accessing - NamedElement' }
OPUMLState >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : 'accessing - NamedElement' }
OPUMLState >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
