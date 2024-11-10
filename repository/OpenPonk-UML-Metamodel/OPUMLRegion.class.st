"
A Region is a top-level part of a StateMachine or a composite State, that serves as a container for the Vertices and Transitions of the StateMachine. A StateMachine or composite State may contain multiple Regions representing behaviors that may occur in parallel.
"
Class {
	#name : 'OPUMLRegion',
	#superclass : 'OPUMLElement',
	#instVars : [
		'extendedRegion',
		'transitions',
		'stateMachine',
		'subvertexs',
		'state',
		'redefinitionContext'
	],
	#category : 'OpenPonk-UML-Metamodel-StateMachines',
	#package : 'OpenPonk-UML-Metamodel',
	#tag : 'StateMachines'
}

{ #category : 'operations - stubs' }
OPUMLRegion >> belongsToPSMStub [
	"The operation belongsToPSM () checks if the Region belongs to a ProtocolStateMachine."
	
	"{OCL} result = (if  stateMachine <> null 
then
  stateMachine.oclIsKindOf(ProtocolStateMachine)
else 
  state <> null  implies  state.container.belongsToPSM()
endif )"
	
	self notYetImplemented

]

{ #category : 'accessing - NamedElement' }
OPUMLRegion >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLRegion >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'operations - stubs' }
OPUMLRegion >> containingStateMachineStub [
	"The operation containingStateMachine() returns the StateMachine in which this Region is defined."
	
	"{OCL} result = (if stateMachine = null 
then
  state.containingStateMachine()
else
  stateMachine
endif)"
	
	self notYetImplemented

]

{ #category : 'accessing - Namespace' }
OPUMLRegion >> elementImports [
	^ (sharedGeneralizations at: #Namespace) elementImports
]

{ #category : 'accessing - Namespace' }
OPUMLRegion >> elementImports: anElementImport [
	(sharedGeneralizations at: #Namespace) elementImports: anElementImport
]

{ #category : 'accessing' }
OPUMLRegion >> extendedRegion [
	"The region of which this region is an extension."
	^ extendedRegion
]

{ #category : 'accessing' }
OPUMLRegion >> extendedRegion: aRegion [
	"The region of which this region is an extension."
	extendedRegion := aRegion
]

{ #category : 'accessing - Namespace' }
OPUMLRegion >> importedMembers [
	^ (sharedGeneralizations at: #Namespace) importedMembers
]

{ #category : 'accessing - Namespace' }
OPUMLRegion >> importedMembers: aPackageableElement [
	(sharedGeneralizations at: #Namespace) importedMembers: aPackageableElement
]

{ #category : 'initialization' }
OPUMLRegion >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Namespace.
		sharedGeneralizations at: #RedefinableElement.
	}
]

{ #category : 'initialization' }
OPUMLRegion >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Namespace put: (OPUMLNamespace newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Region put: self.
]

{ #category : 'operations - stubs' }
OPUMLRegion >> isConsistentWithStub [
	"The query isConsistentWith() specifies that a redefining Region is consistent with a redefined Region provided that the redefining Region is an extension of the Redefined region, i.e., its Vertices and Transitions conform to one of the following: (1) they are equal to corresponding elements of the redefined Region or, (2) they consistently redefine a State or Transition of the redefined region, or (3) they add new States or Transitions."
	
	"pre: {OCL} redefiningElement.isRedefinitionContextValid(self)"
	"{OCL} result = (-- the following is merely a default body; it is expected that the specific form of this constraint will be specified by profiles
true)"
	
	self notYetImplemented

]

{ #category : 'accessing - RedefinableElement' }
OPUMLRegion >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : 'accessing - RedefinableElement' }
OPUMLRegion >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : 'operations - stubs' }
OPUMLRegion >> isRedefinitionContextValidStub [
	"The query isRedefinitionContextValid() specifies whether the redefinition contexts of a Region are properly related to the redefinition contexts of the specified Region to allow this element to redefine the other. The containing StateMachine or State of a redefining Region must Redefine the containing StateMachine or State of the redefined Region."
	
	"{OCL} result = (if redefinedElement.oclIsKindOf(Region) then
  let redefinedRegion : Region = redefinedElement.oclAsType(Region) in
    if stateMachine->isEmpty() then
    -- the Region is owned by a State
      (state.redefinedState->notEmpty() and state.redefinedState.region->includes(redefinedRegion))
    else -- the region is owned by a StateMachine
      (stateMachine.extendedStateMachine->notEmpty() and
        stateMachine.extendedStateMachine->exists(sm : StateMachine |
          sm.region->includes(redefinedRegion)))
    endif
else
  false
endif)"
	
	self notYetImplemented

]

{ #category : 'accessing - Namespace' }
OPUMLRegion >> members [
	^ (sharedGeneralizations at: #Namespace) members
]

{ #category : 'accessing - Namespace' }
OPUMLRegion >> members: aNamedElement [
	(sharedGeneralizations at: #Namespace) members: aNamedElement
]

{ #category : 'accessing - NamedElement' }
OPUMLRegion >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLRegion >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLRegion >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLRegion >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLRegion >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLRegion >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing - Namespace' }
OPUMLRegion >> ownedMembers [
	^ (sharedGeneralizations at: #Namespace) ownedMembers
]

{ #category : 'accessing - Namespace' }
OPUMLRegion >> ownedMembers: aNamedElement [
	(sharedGeneralizations at: #Namespace) ownedMembers: aNamedElement
]

{ #category : 'accessing - Namespace' }
OPUMLRegion >> ownedRules [
	^ (sharedGeneralizations at: #Namespace) ownedRules
]

{ #category : 'accessing - Namespace' }
OPUMLRegion >> ownedRules: aConstraint [
	(sharedGeneralizations at: #Namespace) ownedRules: aConstraint
]

{ #category : 'accessing - Namespace' }
OPUMLRegion >> packageImports [
	^ (sharedGeneralizations at: #Namespace) packageImports
]

{ #category : 'accessing - Namespace' }
OPUMLRegion >> packageImports: aPackageImport [
	(sharedGeneralizations at: #Namespace) packageImports: aPackageImport
]

{ #category : 'accessing - NamedElement' }
OPUMLRegion >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLRegion >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing - RedefinableElement' }
OPUMLRegion >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : 'accessing - RedefinableElement' }
OPUMLRegion >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : 'accessing' }
OPUMLRegion >> redefinitionContext [
	"References the Classifier in which context this element may be redefined."
	^ redefinitionContext
]

{ #category : 'accessing' }
OPUMLRegion >> redefinitionContext: aClassifier [
	"References the Classifier in which context this element may be redefined."
	redefinitionContext := aClassifier
]

{ #category : 'operations - stubs' }
OPUMLRegion >> redefinitionContextStub [
	"The redefinition context of a Region is the nearest containing StateMachine."
	
	"{OCL} result = (let sm : StateMachine = containingStateMachine() in
if sm._'context' = null or sm.general->notEmpty() then
  sm
else
  sm._'context'
endif)"
	
	self notYetImplemented

]

{ #category : 'accessing - RedefinableElement' }
OPUMLRegion >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : 'accessing - RedefinableElement' }
OPUMLRegion >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : 'accessing' }
OPUMLRegion >> state [
	"The State that owns the Region. If a Region is owned by a State, then it cannot also be owned by a StateMachine."
	^ state
]

{ #category : 'accessing' }
OPUMLRegion >> state: aState [
	"The State that owns the Region. If a Region is owned by a State, then it cannot also be owned by a StateMachine."
	state := OPUMLToOneLink
		on: self identity
		update: #regions
		from: state
		to: aState
]

{ #category : 'accessing' }
OPUMLRegion >> stateMachine [
	"The StateMachine that owns the Region. If a Region is owned by a StateMachine, then it cannot also be owned by a State."
	^ stateMachine
]

{ #category : 'accessing' }
OPUMLRegion >> stateMachine: aStateMachine [
	"The StateMachine that owns the Region. If a Region is owned by a StateMachine, then it cannot also be owned by a State."
	stateMachine := OPUMLToOneLink
		on: self identity
		update: #regions
		from: stateMachine
		to: aStateMachine
]

{ #category : 'accessing' }
OPUMLRegion >> subvertexs [
	"The set of Vertices that are owned by this Region."
	^ subvertexs ifNil: [ subvertexs := OPUMLToManyLinks on: self identity opposite: #container: ]
]

{ #category : 'accessing' }
OPUMLRegion >> subvertexs: aVertex [
	"The set of Vertices that are owned by this Region."
	self subvertexs
		removeAll;
		addAll: aVertex
]

{ #category : 'accessing' }
OPUMLRegion >> transitions [
	"The set of Transitions owned by the Region."
	^ transitions ifNil: [ transitions := OPUMLToManyLinks on: self identity opposite: #container: ]
]

{ #category : 'accessing' }
OPUMLRegion >> transitions: aTransition [
	"The set of Transitions owned by the Region."
	self transitions
		removeAll;
		addAll: aTransition
]

{ #category : 'accessing - NamedElement' }
OPUMLRegion >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : 'accessing - NamedElement' }
OPUMLRegion >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
