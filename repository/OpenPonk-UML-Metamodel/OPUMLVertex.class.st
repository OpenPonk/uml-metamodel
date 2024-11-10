"
A Vertex is an abstraction of a node in a StateMachine graph. It can be the source or destination of any number of Transitions.
"
Class {
	#name : 'OPUMLVertex',
	#superclass : 'OPUMLElement',
	#instVars : [
		'incomings',
		'container',
		'outgoings'
	],
	#category : 'OpenPonk-UML-Metamodel-StateMachines',
	#package : 'OpenPonk-UML-Metamodel',
	#tag : 'StateMachines'
}

{ #category : 'accessing - NamedElement' }
OPUMLVertex >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLVertex >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'accessing' }
OPUMLVertex >> container [
	"The Region that contains this Vertex."
	^ container
]

{ #category : 'accessing' }
OPUMLVertex >> container: aRegion [
	"The Region that contains this Vertex."
	container := OPUMLToOneLink
		on: self identity
		update: #subvertexs
		from: container
		to: aRegion
]

{ #category : 'operations - stubs' }
OPUMLVertex >> containingStateMachineStub [
	"The operation containingStateMachine() returns the StateMachine in which this Vertex is defined."
	
	"{OCL} result = (if container <> null
then
-- the container is a region
   container.containingStateMachine()
else 
   if (self.oclIsKindOf(Pseudostate)) and ((self.oclAsType(Pseudostate).kind = PseudostateKind::entryPoint) or (self.oclAsType(Pseudostate).kind = PseudostateKind::exitPoint)) then
      self.oclAsType(Pseudostate).stateMachine
   else 
      if (self.oclIsKindOf(ConnectionPointReference)) then
          self.oclAsType(ConnectionPointReference).state.containingStateMachine() -- no other valid cases possible
      else 
          null
      endif
   endif
endif

)"
	
	self notYetImplemented

]

{ #category : 'operations - stubs' }
OPUMLVertex >> incomingStub [
	"Derivation for Vertex::/incoming."
	
	"{OCL} result = (Transition.allInstances()->select(target=self))"
	
	self notYetImplemented

]

{ #category : 'accessing' }
OPUMLVertex >> incomings [
	"Specifies the Transitions entering this Vertex."
	^ incomings ifNil: [ incomings := OPUMLToManyLinks on: self identity opposite: #target: ]
]

{ #category : 'accessing' }
OPUMLVertex >> incomings: aTransition [
	"Specifies the Transitions entering this Vertex."
	self incomings
		removeAll;
		addAll: aTransition
]

{ #category : 'initialization' }
OPUMLVertex >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #NamedElement.
	}
]

{ #category : 'initialization' }
OPUMLVertex >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Vertex put: self.
]

{ #category : 'operations - stubs' }
OPUMLVertex >> isContainedInRegionStub [
	"This utility query returns true if the Vertex is contained in the Region r (input argument)."
	
	"{OCL} result = (if (container = r) then
	true
else
	if (r.state->isEmpty()) then
		false
	else
		container.state.isContainedInRegion(r)
	endif
endif)"
	
	self notYetImplemented

]

{ #category : 'operations - stubs' }
OPUMLVertex >> isContainedInStateStub [
	"This utility operation returns true if the Vertex is contained in the State s (input argument)."
	
	"{OCL} result = (if not s.isComposite() or container->isEmpty() then
	false
else
	if container.state = s then 
		true
	else
		container.state.isContainedInState(s)
	endif
endif)"
	
	self notYetImplemented

]

{ #category : 'accessing - NamedElement' }
OPUMLVertex >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLVertex >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLVertex >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLVertex >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLVertex >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLVertex >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'operations - stubs' }
OPUMLVertex >> outgoingStub [
	"Derivation for Vertex::/outgoing"
	
	"{OCL} result = (Transition.allInstances()->select(source=self))"
	
	self notYetImplemented

]

{ #category : 'accessing' }
OPUMLVertex >> outgoings [
	"Specifies the Transitions departing from this Vertex."
	^ outgoings ifNil: [ outgoings := OPUMLToManyLinks on: self identity opposite: #source: ]
]

{ #category : 'accessing' }
OPUMLVertex >> outgoings: aTransition [
	"Specifies the Transitions departing from this Vertex."
	self outgoings
		removeAll;
		addAll: aTransition
]

{ #category : 'accessing - NamedElement' }
OPUMLVertex >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLVertex >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLVertex >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : 'accessing - NamedElement' }
OPUMLVertex >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
