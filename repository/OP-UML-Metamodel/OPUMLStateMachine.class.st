"
StateMachines can be used to express event-driven behaviors of parts of a system. Behavior is modeled as a traversal of a graph of Vertices interconnected by one or more joined Transition arcs that are triggered by the dispatching of successive Event occurrences. During this traversal, the StateMachine may execute a sequence of Behaviors associated with various elements of the StateMachine.
"
Class {
	#name : 'OPUMLStateMachine',
	#superclass : 'OPUMLElement',
	#instVars : [
		'regions',
		'connectionPoints',
		'extendedStateMachines',
		'submachineStates'
	],
	#category : 'OP-UML-Metamodel-StateMachines',
	#package : 'OP-UML-Metamodel',
	#tag : 'StateMachines'
}

{ #category : 'operations - stubs' }
OPUMLStateMachine >> LCAStateStub [
	"This utility funciton is like the LCA, except that it returns the nearest composite State that contains both input Vertices."
	
	"{OCL} result = (if v2.oclIsTypeOf(State) and ancestor(v1, v2) then
	v2.oclAsType(State)
else if v1.oclIsTypeOf(State) and ancestor(v2, v1) then
	v1.oclAsType(State)
else if (v1.container.state->isEmpty() or v2.container.state->isEmpty()) then 
	null.oclAsType(State)
else LCAState(v1.container.state, v2.container.state)
endif endif endif)"
	
	self notYetImplemented

]

{ #category : 'operations - stubs' }
OPUMLStateMachine >> LCAStub [
	"The operation LCA(s1,s2) returns the Region that is the least common ancestor of Vertices s1 and s2, based on the StateMachine containment hierarchy."
	
	"{OCL} result = (if ancestor(s1, s2) then 
    s2.container
else
	if ancestor(s2, s1) then
	    s1.container 
	else 
	    LCA(s1.container.state, s2.container.state)
	endif
endif)"
	
	self notYetImplemented

]

{ #category : 'operations - Classifier' }
OPUMLStateMachine >> allAttributes [
	^ (sharedGeneralizations at: #Classifier) allAttributes
]

{ #category : 'operations - Classifier' }
OPUMLStateMachine >> allParents [
	^ (sharedGeneralizations at: #Classifier) allParents
]

{ #category : 'operations - stubs' }
OPUMLStateMachine >> ancestorStub [
	"The query ancestor(s1, s2) checks whether Vertex s2 is an ancestor of Vertex s1."
	
	"{OCL} result = (if (s2 = s1) then 
	true 
else 
	if s1.container.stateMachine->notEmpty() then 
	    true
	else 
	    if s2.container.stateMachine->notEmpty() then 
	        false
	    else
	        ancestor(s1, s2.container.state)
	     endif
	 endif
endif  )"
	
	self notYetImplemented

]

{ #category : 'accessing - Classifier' }
OPUMLStateMachine >> attributes [
	^ (sharedGeneralizations at: #Classifier) attributes
]

{ #category : 'accessing - Classifier' }
OPUMLStateMachine >> attributes: aProperty [
	(sharedGeneralizations at: #Classifier) attributes: aProperty
]

{ #category : 'accessing - BehavioredClassifier' }
OPUMLStateMachine >> classifierBehavior [
	^ (sharedGeneralizations at: #BehavioredClassifier) classifierBehavior
]

{ #category : 'accessing - BehavioredClassifier' }
OPUMLStateMachine >> classifierBehavior: aBehavior [
	(sharedGeneralizations at: #BehavioredClassifier) classifierBehavior: aBehavior
]

{ #category : 'accessing - NamedElement' }
OPUMLStateMachine >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLStateMachine >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'accessing - Classifier' }
OPUMLStateMachine >> collaborationUses [
	^ (sharedGeneralizations at: #Classifier) collaborationUses
]

{ #category : 'accessing - Classifier' }
OPUMLStateMachine >> collaborationUses: aCollaborationUse [
	(sharedGeneralizations at: #Classifier) collaborationUses: aCollaborationUse
]

{ #category : 'accessing' }
OPUMLStateMachine >> connectionPoints [
	"The connection points defined for this StateMachine. They represent the interface of the StateMachine when used as part of submachine State"
	^ connectionPoints ifNil: [ connectionPoints := OPUMLToManyLinks on: self identity opposite: #stateMachine: ]
]

{ #category : 'accessing' }
OPUMLStateMachine >> connectionPoints: aPseudostate [
	"The connection points defined for this StateMachine. They represent the interface of the StateMachine when used as part of submachine State"
	self connectionPoints
		removeAll;
		addAll: aPseudostate
]

{ #category : 'accessing - Behavior' }
OPUMLStateMachine >> context [
	^ (sharedGeneralizations at: #Behavior) context
]

{ #category : 'accessing - Behavior' }
OPUMLStateMachine >> context: aBehavioredClassifier [
	(sharedGeneralizations at: #Behavior) context: aBehavioredClassifier
]

{ #category : 'accessing - Namespace' }
OPUMLStateMachine >> elementImports [
	^ (sharedGeneralizations at: #Namespace) elementImports
]

{ #category : 'accessing - Namespace' }
OPUMLStateMachine >> elementImports: anElementImport [
	(sharedGeneralizations at: #Namespace) elementImports: anElementImport
]

{ #category : 'accessing' }
OPUMLStateMachine >> extendedStateMachines [
	"The StateMachines of which this is an extension."
	^ extendedStateMachines ifNil: [ extendedStateMachines := OrderedCollection new ]
]

{ #category : 'accessing' }
OPUMLStateMachine >> extendedStateMachines: aStateMachine [
	"The StateMachines of which this is an extension."
	extendedStateMachines := aStateMachine
]

{ #category : 'accessing - Class' }
OPUMLStateMachine >> extensions [
	^ (sharedGeneralizations at: #Class) extensions
]

{ #category : 'accessing - Class' }
OPUMLStateMachine >> extensions: anExtension [
	(sharedGeneralizations at: #Class) extensions: anExtension
]

{ #category : 'accessing - Classifier' }
OPUMLStateMachine >> features [
	^ (sharedGeneralizations at: #Classifier) features
]

{ #category : 'accessing - Classifier' }
OPUMLStateMachine >> features: aFeature [
	(sharedGeneralizations at: #Classifier) features: aFeature
]

{ #category : 'operations - Classifier' }
OPUMLStateMachine >> general [
	^ (sharedGeneralizations at: #Classifier) general
]

{ #category : 'accessing - Classifier' }
OPUMLStateMachine >> generalizations [
	^ (sharedGeneralizations at: #Classifier) generalizations
]

{ #category : 'accessing - Classifier' }
OPUMLStateMachine >> generalizations: aGeneralization [
	(sharedGeneralizations at: #Classifier) generalizations: aGeneralization
]

{ #category : 'accessing - Classifier' }
OPUMLStateMachine >> generals [
	^ (sharedGeneralizations at: #Classifier) generals
]

{ #category : 'accessing - Classifier' }
OPUMLStateMachine >> generals: aClassifier [
	(sharedGeneralizations at: #Classifier) generals: aClassifier
]

{ #category : 'accessing - Namespace' }
OPUMLStateMachine >> importedMembers [
	^ (sharedGeneralizations at: #Namespace) importedMembers
]

{ #category : 'accessing - Namespace' }
OPUMLStateMachine >> importedMembers: aPackageableElement [
	(sharedGeneralizations at: #Namespace) importedMembers: aPackageableElement
]

{ #category : 'accessing - Classifier' }
OPUMLStateMachine >> inheritedMembers [
	^ (sharedGeneralizations at: #Classifier) inheritedMembers
]

{ #category : 'accessing - Classifier' }
OPUMLStateMachine >> inheritedMembers: aNamedElement [
	(sharedGeneralizations at: #Classifier) inheritedMembers: aNamedElement
]

{ #category : 'initialization' }
OPUMLStateMachine >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Behavior.
	}
]

{ #category : 'initialization' }
OPUMLStateMachine >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PackageableElement put: (OPUMLPackageableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Namespace put: (OPUMLNamespace newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Type put: (OPUMLType newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #TemplateableElement put: (OPUMLTemplateableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Classifier put: (OPUMLClassifier newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #StructuredClassifier put: (OPUMLStructuredClassifier newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #BehavioredClassifier put: (OPUMLBehavioredClassifier newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #EncapsulatedClassifier put: (OPUMLEncapsulatedClassifier newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Class put: (OPUMLClass newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Behavior put: (OPUMLBehavior newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #StateMachine put: self.
]

{ #category : 'accessing - BehavioredClassifier' }
OPUMLStateMachine >> interfaceRealizations [
	^ (sharedGeneralizations at: #BehavioredClassifier) interfaceRealizations
]

{ #category : 'accessing - BehavioredClassifier' }
OPUMLStateMachine >> interfaceRealizations: anInterfaceRealization [
	(sharedGeneralizations at: #BehavioredClassifier) interfaceRealizations: anInterfaceRealization
]

{ #category : 'accessing - Class' }
OPUMLStateMachine >> isAbstract [
	^ (sharedGeneralizations at: #Class) isAbstract
]

{ #category : 'accessing - Class' }
OPUMLStateMachine >> isAbstract: aBoolean [
	(sharedGeneralizations at: #Class) isAbstract: aBoolean
]

{ #category : 'accessing - Class' }
OPUMLStateMachine >> isActive [
	^ (sharedGeneralizations at: #Class) isActive
]

{ #category : 'accessing - Class' }
OPUMLStateMachine >> isActive: aBoolean [
	(sharedGeneralizations at: #Class) isActive: aBoolean
]

{ #category : 'operations - stubs' }
OPUMLStateMachine >> isConsistentWithStub [
	"The query isConsistentWith() specifies that a redefining StateMachine is consistent with a redefined StateMachine provided that the redefining StateMachine is an extension of the redefined StateMachine : Regions are inherited and Regions can be added, inherited Regions can be redefined. In case of multiple redefining StateMachine, extension implies that the redefining StateMachine gets orthogonal Regions for each of the redefined StateMachine."
	
	"{OCL} result = (-- the following is merely a default body; it is expected that the specific form of this constraint will be specified by profiles
true)"
	
	self notYetImplemented

]

{ #category : 'accessing - Classifier' }
OPUMLStateMachine >> isFinalSpecialization [
	^ (sharedGeneralizations at: #Classifier) isFinalSpecialization
]

{ #category : 'accessing - Classifier' }
OPUMLStateMachine >> isFinalSpecialization: aBoolean [
	(sharedGeneralizations at: #Classifier) isFinalSpecialization: aBoolean
]

{ #category : 'accessing - RedefinableElement' }
OPUMLStateMachine >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : 'accessing - RedefinableElement' }
OPUMLStateMachine >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : 'operations - stubs' }
OPUMLStateMachine >> isRedefinitionContextValidStub [
	"The query isRedefinitionContextValid() specifies whether the redefinition context of a StateMachine is properly related to the redefinition contexts of the specified StateMachine to allow this element to redefine the other. The context Classifier of a redefining StateMachine must redefine the context Classifier of the redefined StateMachine."
	
	"{OCL} result = (if redefinedElement.oclIsKindOf(StateMachine) then
  let redefinedStateMachine : StateMachine = redefinedElement.oclAsType(StateMachine) in
    self._'context'().oclAsType(BehavioredClassifier).redefinedClassifier->
      includes(redefinedStateMachine._'context'())
else
  false
endif)"
	
	self notYetImplemented

]

{ #category : 'accessing - Behavior' }
OPUMLStateMachine >> isReentrant [
	^ (sharedGeneralizations at: #Behavior) isReentrant
]

{ #category : 'accessing - Behavior' }
OPUMLStateMachine >> isReentrant: aBoolean [
	(sharedGeneralizations at: #Behavior) isReentrant: aBoolean
]

{ #category : 'accessing - Namespace' }
OPUMLStateMachine >> members [
	^ (sharedGeneralizations at: #Namespace) members
]

{ #category : 'accessing - Namespace' }
OPUMLStateMachine >> members: aNamedElement [
	(sharedGeneralizations at: #Namespace) members: aNamedElement
]

{ #category : 'accessing - NamedElement' }
OPUMLStateMachine >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLStateMachine >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLStateMachine >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLStateMachine >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLStateMachine >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLStateMachine >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing - Class' }
OPUMLStateMachine >> nestedClassifiers [
	^ (sharedGeneralizations at: #Class) nestedClassifiers
]

{ #category : 'accessing - Class' }
OPUMLStateMachine >> nestedClassifiers: aClassifier [
	(sharedGeneralizations at: #Class) nestedClassifiers: aClassifier
]

{ #category : 'accessing - Class' }
OPUMLStateMachine >> ownedAttributes [
	^ (sharedGeneralizations at: #Class) ownedAttributes
]

{ #category : 'accessing - Class' }
OPUMLStateMachine >> ownedAttributes: aProperty [
	(sharedGeneralizations at: #Class) ownedAttributes: aProperty
]

{ #category : 'accessing - BehavioredClassifier' }
OPUMLStateMachine >> ownedBehaviors [
	^ (sharedGeneralizations at: #BehavioredClassifier) ownedBehaviors
]

{ #category : 'accessing - BehavioredClassifier' }
OPUMLStateMachine >> ownedBehaviors: aBehavior [
	(sharedGeneralizations at: #BehavioredClassifier) ownedBehaviors: aBehavior
]

{ #category : 'accessing - StructuredClassifier' }
OPUMLStateMachine >> ownedConnectors [
	^ (sharedGeneralizations at: #StructuredClassifier) ownedConnectors
]

{ #category : 'accessing - StructuredClassifier' }
OPUMLStateMachine >> ownedConnectors: aConnector [
	(sharedGeneralizations at: #StructuredClassifier) ownedConnectors: aConnector
]

{ #category : 'accessing - Namespace' }
OPUMLStateMachine >> ownedMembers [
	^ (sharedGeneralizations at: #Namespace) ownedMembers
]

{ #category : 'accessing - Namespace' }
OPUMLStateMachine >> ownedMembers: aNamedElement [
	(sharedGeneralizations at: #Namespace) ownedMembers: aNamedElement
]

{ #category : 'accessing - Class' }
OPUMLStateMachine >> ownedOperations [
	^ (sharedGeneralizations at: #Class) ownedOperations
]

{ #category : 'accessing - Class' }
OPUMLStateMachine >> ownedOperations: anOperation [
	(sharedGeneralizations at: #Class) ownedOperations: anOperation
]

{ #category : 'accessing - Behavior' }
OPUMLStateMachine >> ownedParameterSets [
	^ (sharedGeneralizations at: #Behavior) ownedParameterSets
]

{ #category : 'accessing - Behavior' }
OPUMLStateMachine >> ownedParameterSets: aParameterSet [
	(sharedGeneralizations at: #Behavior) ownedParameterSets: aParameterSet
]

{ #category : 'accessing - Behavior' }
OPUMLStateMachine >> ownedParameters [
	^ (sharedGeneralizations at: #Behavior) ownedParameters
]

{ #category : 'accessing - Behavior' }
OPUMLStateMachine >> ownedParameters: aParameter [
	(sharedGeneralizations at: #Behavior) ownedParameters: aParameter
]

{ #category : 'accessing - EncapsulatedClassifier' }
OPUMLStateMachine >> ownedPorts [
	^ (sharedGeneralizations at: #EncapsulatedClassifier) ownedPorts
]

{ #category : 'accessing - EncapsulatedClassifier' }
OPUMLStateMachine >> ownedPorts: aPort [
	(sharedGeneralizations at: #EncapsulatedClassifier) ownedPorts: aPort
]

{ #category : 'accessing - Class' }
OPUMLStateMachine >> ownedReceptions [
	^ (sharedGeneralizations at: #Class) ownedReceptions
]

{ #category : 'accessing - Class' }
OPUMLStateMachine >> ownedReceptions: aReception [
	(sharedGeneralizations at: #Class) ownedReceptions: aReception
]

{ #category : 'accessing - Namespace' }
OPUMLStateMachine >> ownedRules [
	^ (sharedGeneralizations at: #Namespace) ownedRules
]

{ #category : 'accessing - Namespace' }
OPUMLStateMachine >> ownedRules: aConstraint [
	(sharedGeneralizations at: #Namespace) ownedRules: aConstraint
]

{ #category : 'accessing - Classifier' }
OPUMLStateMachine >> ownedTemplateSignature [
	^ (sharedGeneralizations at: #Classifier) ownedTemplateSignature
]

{ #category : 'accessing - Classifier' }
OPUMLStateMachine >> ownedTemplateSignature: aRedefinableTemplateSignature [
	(sharedGeneralizations at: #Classifier) ownedTemplateSignature: aRedefinableTemplateSignature
]

{ #category : 'accessing - Classifier' }
OPUMLStateMachine >> ownedUseCases [
	^ (sharedGeneralizations at: #Classifier) ownedUseCases
]

{ #category : 'accessing - Classifier' }
OPUMLStateMachine >> ownedUseCases: anUseCase [
	(sharedGeneralizations at: #Classifier) ownedUseCases: anUseCase
]

{ #category : 'accessing - ParameterableElement' }
OPUMLStateMachine >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : 'accessing - ParameterableElement' }
OPUMLStateMachine >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : 'accessing - Type' }
OPUMLStateMachine >> package [
	^ (sharedGeneralizations at: #Type) package
]

{ #category : 'accessing - Type' }
OPUMLStateMachine >> package: aPackage [
	(sharedGeneralizations at: #Type) package: aPackage
]

{ #category : 'accessing - Namespace' }
OPUMLStateMachine >> packageImports [
	^ (sharedGeneralizations at: #Namespace) packageImports
]

{ #category : 'accessing - Namespace' }
OPUMLStateMachine >> packageImports: aPackageImport [
	(sharedGeneralizations at: #Namespace) packageImports: aPackageImport
]

{ #category : 'operations - Classifier' }
OPUMLStateMachine >> parents [
	^ (sharedGeneralizations at: #Classifier) parents
]

{ #category : 'accessing - StructuredClassifier' }
OPUMLStateMachine >> parts [
	^ (sharedGeneralizations at: #StructuredClassifier) parts
]

{ #category : 'accessing - StructuredClassifier' }
OPUMLStateMachine >> parts: aProperty [
	(sharedGeneralizations at: #StructuredClassifier) parts: aProperty
]

{ #category : 'accessing - Behavior' }
OPUMLStateMachine >> postconditions [
	^ (sharedGeneralizations at: #Behavior) postconditions
]

{ #category : 'accessing - Behavior' }
OPUMLStateMachine >> postconditions: aConstraint [
	(sharedGeneralizations at: #Behavior) postconditions: aConstraint
]

{ #category : 'accessing - Classifier' }
OPUMLStateMachine >> powertypeExtents [
	^ (sharedGeneralizations at: #Classifier) powertypeExtents
]

{ #category : 'accessing - Classifier' }
OPUMLStateMachine >> powertypeExtents: aGeneralizationSet [
	(sharedGeneralizations at: #Classifier) powertypeExtents: aGeneralizationSet
]

{ #category : 'accessing - Behavior' }
OPUMLStateMachine >> preconditions [
	^ (sharedGeneralizations at: #Behavior) preconditions
]

{ #category : 'accessing - Behavior' }
OPUMLStateMachine >> preconditions: aConstraint [
	(sharedGeneralizations at: #Behavior) preconditions: aConstraint
]

{ #category : 'accessing - NamedElement' }
OPUMLStateMachine >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLStateMachine >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing - Behavior' }
OPUMLStateMachine >> redefinedBehaviors [
	^ (sharedGeneralizations at: #Behavior) redefinedBehaviors
]

{ #category : 'accessing - Behavior' }
OPUMLStateMachine >> redefinedBehaviors: aBehavior [
	(sharedGeneralizations at: #Behavior) redefinedBehaviors: aBehavior
]

{ #category : 'accessing - Classifier' }
OPUMLStateMachine >> redefinedClassifiers [
	^ (sharedGeneralizations at: #Classifier) redefinedClassifiers
]

{ #category : 'accessing - Classifier' }
OPUMLStateMachine >> redefinedClassifiers: aClassifier [
	(sharedGeneralizations at: #Classifier) redefinedClassifiers: aClassifier
]

{ #category : 'accessing - RedefinableElement' }
OPUMLStateMachine >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : 'accessing - RedefinableElement' }
OPUMLStateMachine >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : 'accessing - RedefinableElement' }
OPUMLStateMachine >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : 'accessing - RedefinableElement' }
OPUMLStateMachine >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : 'accessing' }
OPUMLStateMachine >> regions [
	"The Regions owned directly by the StateMachine."
	^ regions ifNil: [ regions := OPUMLToManyLinks on: self identity opposite: #stateMachine: ]
]

{ #category : 'accessing' }
OPUMLStateMachine >> regions: aRegion [
	"The Regions owned directly by the StateMachine."
	self regions
		removeAll;
		addAll: aRegion
]

{ #category : 'accessing - Classifier' }
OPUMLStateMachine >> representation [
	^ (sharedGeneralizations at: #Classifier) representation
]

{ #category : 'accessing - Classifier' }
OPUMLStateMachine >> representation: aCollaborationUse [
	(sharedGeneralizations at: #Classifier) representation: aCollaborationUse
]

{ #category : 'accessing - StructuredClassifier' }
OPUMLStateMachine >> roles [
	^ (sharedGeneralizations at: #StructuredClassifier) roles
]

{ #category : 'accessing - StructuredClassifier' }
OPUMLStateMachine >> roles: aConnectableElement [
	(sharedGeneralizations at: #StructuredClassifier) roles: aConnectableElement
]

{ #category : 'accessing - Behavior' }
OPUMLStateMachine >> specification [
	^ (sharedGeneralizations at: #Behavior) specification
]

{ #category : 'accessing - Behavior' }
OPUMLStateMachine >> specification: aBehavioralFeature [
	(sharedGeneralizations at: #Behavior) specification: aBehavioralFeature
]

{ #category : 'accessing' }
OPUMLStateMachine >> submachineStates [
	"References the submachine(s) in case of a submachine State. Multiple machines are referenced in case of a concurrent State."
	^ submachineStates ifNil: [ submachineStates := OPUMLToManyLinks on: self identity opposite: #submachine: ]
]

{ #category : 'accessing' }
OPUMLStateMachine >> submachineStates: aState [
	"References the submachine(s) in case of a submachine State. Multiple machines are referenced in case of a concurrent State."
	self submachineStates
		removeAll;
		addAll: aState
]

{ #category : 'accessing - Classifier' }
OPUMLStateMachine >> substitutions [
	^ (sharedGeneralizations at: #Classifier) substitutions
]

{ #category : 'accessing - Classifier' }
OPUMLStateMachine >> substitutions: aSubstitution [
	(sharedGeneralizations at: #Classifier) substitutions: aSubstitution
]

{ #category : 'accessing - Class' }
OPUMLStateMachine >> superClasses [
	^ (sharedGeneralizations at: #Class) superClasses
]

{ #category : 'accessing - Class' }
OPUMLStateMachine >> superClasses: aClass [
	(sharedGeneralizations at: #Class) superClasses: aClass
]

{ #category : 'accessing - TemplateableElement' }
OPUMLStateMachine >> templateBindings [
	^ (sharedGeneralizations at: #TemplateableElement) templateBindings
]

{ #category : 'accessing - TemplateableElement' }
OPUMLStateMachine >> templateBindings: aTemplateBinding [
	(sharedGeneralizations at: #TemplateableElement) templateBindings: aTemplateBinding
]

{ #category : 'accessing - Classifier' }
OPUMLStateMachine >> templateParameter [
	^ (sharedGeneralizations at: #Classifier) templateParameter
]

{ #category : 'accessing - Classifier' }
OPUMLStateMachine >> templateParameter: aClassifierTemplateParameter [
	(sharedGeneralizations at: #Classifier) templateParameter: aClassifierTemplateParameter
]

{ #category : 'accessing - Classifier' }
OPUMLStateMachine >> useCases [
	^ (sharedGeneralizations at: #Classifier) useCases
]

{ #category : 'accessing - Classifier' }
OPUMLStateMachine >> useCases: anUseCase [
	(sharedGeneralizations at: #Classifier) useCases: anUseCase
]

{ #category : 'accessing - PackageableElement' }
OPUMLStateMachine >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : 'accessing - PackageableElement' }
OPUMLStateMachine >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]
