"
Behavior is a specification of how its context BehavioredClassifier changes state over time. This specification may be either a definition of possible behavior execution or emergent behavior, or a selective illustration of an interesting subset of possible executions. The latter form is typically used for capturing examples, such as a trace of a particular execution.
"
Class {
	#name : #OPUMLBehavior,
	#superclass : #OPUMLElement,
	#instVars : [
		'redefinedBehaviors',
		'specification',
		'postconditions',
		'ownedParameterSets',
		'context',
		'ownedParameters',
		'isReentrant',
		'preconditions'
	],
	#category : 'OP-UML-Metamodel-CommonBehavior'
}

{ #category : #'operations - Classifier' }
OPUMLBehavior >> allAttributes [
	^ (sharedGeneralizations at: #Classifier) allAttributes
]

{ #category : #'operations - Classifier' }
OPUMLBehavior >> allParents [
	^ (sharedGeneralizations at: #Classifier) allParents
]

{ #category : #'accessing - Classifier' }
OPUMLBehavior >> attributes [
	^ (sharedGeneralizations at: #Classifier) attributes
]

{ #category : #'accessing - Classifier' }
OPUMLBehavior >> attributes: aProperty [
	(sharedGeneralizations at: #Classifier) attributes: aProperty
]

{ #category : #'operations - stubs' }
OPUMLBehavior >> behavioredClassifierStub [
	"The first BehavioredClassifier reached by following the chain of owner relationships from the Behavior, if any."
	
	"spec: {OCL} if from.oclIsKindOf(BehavioredClassifier) then
    from.oclAsType(BehavioredClassifier)
else if from.owner = null then
    null
else
    self.behavioredClassifier(from.owner)
endif
endif
    "
	
	self notYetImplemented

]

{ #category : #'accessing - BehavioredClassifier' }
OPUMLBehavior >> classifierBehavior [
	^ (sharedGeneralizations at: #BehavioredClassifier) classifierBehavior
]

{ #category : #'accessing - BehavioredClassifier' }
OPUMLBehavior >> classifierBehavior: aBehavior [
	(sharedGeneralizations at: #BehavioredClassifier) classifierBehavior: aBehavior
]

{ #category : #'accessing - NamedElement' }
OPUMLBehavior >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLBehavior >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #'accessing - Classifier' }
OPUMLBehavior >> collaborationUses [
	^ (sharedGeneralizations at: #Classifier) collaborationUses
]

{ #category : #'accessing - Classifier' }
OPUMLBehavior >> collaborationUses: aCollaborationUse [
	(sharedGeneralizations at: #Classifier) collaborationUses: aCollaborationUse
]

{ #category : #accessing }
OPUMLBehavior >> context [
	"The BehavioredClassifier that is the context for the execution of the Behavior. A Behavior that is directly owned as a nestedClassifier does not have a context. Otherwise, to determine the context of a Behavior, find the first BehavioredClassifier reached by following the chain of owner relationships from the Behavior, if any. If there is such a BehavioredClassifier, then it is the context, unless it is itself a Behavior with a non-empty context, in which case that is also the context for the original Behavior. For example, following this algorithm, the context of an entry Behavior in a StateMachine is the BehavioredClassifier that owns the StateMachine. The features of the context BehavioredClassifier as well as the Elements visible to the context Classifier are visible to the Behavior."
	^ context
]

{ #category : #accessing }
OPUMLBehavior >> context: aBehavioredClassifier [
	"The BehavioredClassifier that is the context for the execution of the Behavior. A Behavior that is directly owned as a nestedClassifier does not have a context. Otherwise, to determine the context of a Behavior, find the first BehavioredClassifier reached by following the chain of owner relationships from the Behavior, if any. If there is such a BehavioredClassifier, then it is the context, unless it is itself a Behavior with a non-empty context, in which case that is also the context for the original Behavior. For example, following this algorithm, the context of an entry Behavior in a StateMachine is the BehavioredClassifier that owns the StateMachine. The features of the context BehavioredClassifier as well as the Elements visible to the context Classifier are visible to the Behavior."
	context := aBehavioredClassifier
]

{ #category : #'operations - stubs' }
OPUMLBehavior >> contextStub [
	"A Behavior that is directly owned as a nestedClassifier does not have a context. Otherwise, to determine the context of a Behavior, find the first BehavioredClassifier reached by following the chain of owner relationships from the Behavior, if any. If there is such a BehavioredClassifier, then it is the context, unless it is itself a Behavior with a non-empty context, in which case that is also the context for the original Behavior. "
	
	"{OCL} result = (if nestingClass <> null then
    null
else
    let b:BehavioredClassifier = self.behavioredClassifier(self.owner) in
    if b.oclIsKindOf(Behavior) and b.oclAsType(Behavior)._'context' <> null then 
        b.oclAsType(Behavior)._'context'
    else 
        b 
    endif
endif
        )"
	
	self notYetImplemented

]

{ #category : #'accessing - Namespace' }
OPUMLBehavior >> elementImports [
	^ (sharedGeneralizations at: #Namespace) elementImports
]

{ #category : #'accessing - Namespace' }
OPUMLBehavior >> elementImports: anElementImport [
	(sharedGeneralizations at: #Namespace) elementImports: anElementImport
]

{ #category : #'accessing - Class' }
OPUMLBehavior >> extensions [
	^ (sharedGeneralizations at: #Class) extensions
]

{ #category : #'accessing - Class' }
OPUMLBehavior >> extensions: anExtension [
	(sharedGeneralizations at: #Class) extensions: anExtension
]

{ #category : #'accessing - Classifier' }
OPUMLBehavior >> features [
	^ (sharedGeneralizations at: #Classifier) features
]

{ #category : #'accessing - Classifier' }
OPUMLBehavior >> features: aFeature [
	(sharedGeneralizations at: #Classifier) features: aFeature
]

{ #category : #'operations - Classifier' }
OPUMLBehavior >> general [
	^ (sharedGeneralizations at: #Classifier) general
]

{ #category : #'accessing - Classifier' }
OPUMLBehavior >> generalizations [
	^ (sharedGeneralizations at: #Classifier) generalizations
]

{ #category : #'accessing - Classifier' }
OPUMLBehavior >> generalizations: aGeneralization [
	(sharedGeneralizations at: #Classifier) generalizations: aGeneralization
]

{ #category : #'accessing - Classifier' }
OPUMLBehavior >> generals [
	^ (sharedGeneralizations at: #Classifier) generals
]

{ #category : #'accessing - Classifier' }
OPUMLBehavior >> generals: aClassifier [
	(sharedGeneralizations at: #Classifier) generals: aClassifier
]

{ #category : #'accessing - Namespace' }
OPUMLBehavior >> importedMembers [
	^ (sharedGeneralizations at: #Namespace) importedMembers
]

{ #category : #'accessing - Namespace' }
OPUMLBehavior >> importedMembers: aPackageableElement [
	(sharedGeneralizations at: #Namespace) importedMembers: aPackageableElement
]

{ #category : #'accessing - Classifier' }
OPUMLBehavior >> inheritedMembers [
	^ (sharedGeneralizations at: #Classifier) inheritedMembers
]

{ #category : #'accessing - Classifier' }
OPUMLBehavior >> inheritedMembers: aNamedElement [
	(sharedGeneralizations at: #Classifier) inheritedMembers: aNamedElement
]

{ #category : #initialization }
OPUMLBehavior >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Class.
	}
]

{ #category : #initialization }
OPUMLBehavior >> initializeSharedGeneralizations [
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
	sharedGeneralizations at: #Behavior put: self.
]

{ #category : #'operations - stubs' }
OPUMLBehavior >> inputParametersStub [
	"The in and inout ownedParameters of the Behavior."
	
	"{OCL} result = (ownedParameter->select(direction=ParameterDirectionKind::_'in' or direction=ParameterDirectionKind::inout))"
	
	self notYetImplemented

]

{ #category : #'accessing - BehavioredClassifier' }
OPUMLBehavior >> interfaceRealizations [
	^ (sharedGeneralizations at: #BehavioredClassifier) interfaceRealizations
]

{ #category : #'accessing - BehavioredClassifier' }
OPUMLBehavior >> interfaceRealizations: anInterfaceRealization [
	(sharedGeneralizations at: #BehavioredClassifier) interfaceRealizations: anInterfaceRealization
]

{ #category : #'accessing - Class' }
OPUMLBehavior >> isAbstract [
	^ (sharedGeneralizations at: #Class) isAbstract
]

{ #category : #'accessing - Class' }
OPUMLBehavior >> isAbstract: aBoolean [
	(sharedGeneralizations at: #Class) isAbstract: aBoolean
]

{ #category : #'accessing - Class' }
OPUMLBehavior >> isActive [
	^ (sharedGeneralizations at: #Class) isActive
]

{ #category : #'accessing - Class' }
OPUMLBehavior >> isActive: aBoolean [
	(sharedGeneralizations at: #Class) isActive: aBoolean
]

{ #category : #'accessing - Classifier' }
OPUMLBehavior >> isFinalSpecialization [
	^ (sharedGeneralizations at: #Classifier) isFinalSpecialization
]

{ #category : #'accessing - Classifier' }
OPUMLBehavior >> isFinalSpecialization: aBoolean [
	(sharedGeneralizations at: #Classifier) isFinalSpecialization: aBoolean
]

{ #category : #'accessing - RedefinableElement' }
OPUMLBehavior >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : #'accessing - RedefinableElement' }
OPUMLBehavior >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : #accessing }
OPUMLBehavior >> isReentrant [
	"Tells whether the Behavior can be invoked while it is still executing from a previous invocation."
	^ isReentrant ifNil: [ isReentrant := true ]
]

{ #category : #accessing }
OPUMLBehavior >> isReentrant: aBoolean [
	"Tells whether the Behavior can be invoked while it is still executing from a previous invocation."
	isReentrant := aBoolean
]

{ #category : #'accessing - Namespace' }
OPUMLBehavior >> members [
	^ (sharedGeneralizations at: #Namespace) members
]

{ #category : #'accessing - Namespace' }
OPUMLBehavior >> members: aNamedElement [
	(sharedGeneralizations at: #Namespace) members: aNamedElement
]

{ #category : #'accessing - NamedElement' }
OPUMLBehavior >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLBehavior >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLBehavior >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLBehavior >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLBehavior >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLBehavior >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'accessing - Class' }
OPUMLBehavior >> nestedClassifiers [
	^ (sharedGeneralizations at: #Class) nestedClassifiers
]

{ #category : #'accessing - Class' }
OPUMLBehavior >> nestedClassifiers: aClassifier [
	(sharedGeneralizations at: #Class) nestedClassifiers: aClassifier
]

{ #category : #'operations - stubs' }
OPUMLBehavior >> outputParametersStub [
	"The out, inout and return ownedParameters."
	
	"{OCL} result = (ownedParameter->select(direction=ParameterDirectionKind::out or direction=ParameterDirectionKind::inout or direction=ParameterDirectionKind::return))"
	
	self notYetImplemented

]

{ #category : #'accessing - Class' }
OPUMLBehavior >> ownedAttributes [
	^ (sharedGeneralizations at: #Class) ownedAttributes
]

{ #category : #'accessing - Class' }
OPUMLBehavior >> ownedAttributes: aProperty [
	(sharedGeneralizations at: #Class) ownedAttributes: aProperty
]

{ #category : #'accessing - BehavioredClassifier' }
OPUMLBehavior >> ownedBehaviors [
	^ (sharedGeneralizations at: #BehavioredClassifier) ownedBehaviors
]

{ #category : #'accessing - BehavioredClassifier' }
OPUMLBehavior >> ownedBehaviors: aBehavior [
	(sharedGeneralizations at: #BehavioredClassifier) ownedBehaviors: aBehavior
]

{ #category : #'accessing - StructuredClassifier' }
OPUMLBehavior >> ownedConnectors [
	^ (sharedGeneralizations at: #StructuredClassifier) ownedConnectors
]

{ #category : #'accessing - StructuredClassifier' }
OPUMLBehavior >> ownedConnectors: aConnector [
	(sharedGeneralizations at: #StructuredClassifier) ownedConnectors: aConnector
]

{ #category : #'accessing - Namespace' }
OPUMLBehavior >> ownedMembers [
	^ (sharedGeneralizations at: #Namespace) ownedMembers
]

{ #category : #'accessing - Namespace' }
OPUMLBehavior >> ownedMembers: aNamedElement [
	(sharedGeneralizations at: #Namespace) ownedMembers: aNamedElement
]

{ #category : #'accessing - Class' }
OPUMLBehavior >> ownedOperations [
	^ (sharedGeneralizations at: #Class) ownedOperations
]

{ #category : #'accessing - Class' }
OPUMLBehavior >> ownedOperations: anOperation [
	(sharedGeneralizations at: #Class) ownedOperations: anOperation
]

{ #category : #accessing }
OPUMLBehavior >> ownedParameterSets [
	"The ParameterSets owned by this Behavior."
	^ ownedParameterSets ifNil: [ ownedParameterSets := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLBehavior >> ownedParameterSets: aParameterSet [
	"The ParameterSets owned by this Behavior."
	ownedParameterSets := aParameterSet
]

{ #category : #accessing }
OPUMLBehavior >> ownedParameters [
	"References a list of Parameters to the Behavior which describes the order and type of arguments that can be given when the Behavior is invoked and of the values which will be returned when the Behavior completes its execution."
	^ ownedParameters ifNil: [ ownedParameters := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLBehavior >> ownedParameters: aParameter [
	"References a list of Parameters to the Behavior which describes the order and type of arguments that can be given when the Behavior is invoked and of the values which will be returned when the Behavior completes its execution."
	ownedParameters := aParameter
]

{ #category : #'accessing - EncapsulatedClassifier' }
OPUMLBehavior >> ownedPorts [
	^ (sharedGeneralizations at: #EncapsulatedClassifier) ownedPorts
]

{ #category : #'accessing - EncapsulatedClassifier' }
OPUMLBehavior >> ownedPorts: aPort [
	(sharedGeneralizations at: #EncapsulatedClassifier) ownedPorts: aPort
]

{ #category : #'accessing - Class' }
OPUMLBehavior >> ownedReceptions [
	^ (sharedGeneralizations at: #Class) ownedReceptions
]

{ #category : #'accessing - Class' }
OPUMLBehavior >> ownedReceptions: aReception [
	(sharedGeneralizations at: #Class) ownedReceptions: aReception
]

{ #category : #'accessing - Namespace' }
OPUMLBehavior >> ownedRules [
	^ (sharedGeneralizations at: #Namespace) ownedRules
]

{ #category : #'accessing - Namespace' }
OPUMLBehavior >> ownedRules: aConstraint [
	(sharedGeneralizations at: #Namespace) ownedRules: aConstraint
]

{ #category : #'accessing - Classifier' }
OPUMLBehavior >> ownedTemplateSignature [
	^ (sharedGeneralizations at: #Classifier) ownedTemplateSignature
]

{ #category : #'accessing - Classifier' }
OPUMLBehavior >> ownedTemplateSignature: aRedefinableTemplateSignature [
	(sharedGeneralizations at: #Classifier) ownedTemplateSignature: aRedefinableTemplateSignature
]

{ #category : #'accessing - Classifier' }
OPUMLBehavior >> ownedUseCases [
	^ (sharedGeneralizations at: #Classifier) ownedUseCases
]

{ #category : #'accessing - Classifier' }
OPUMLBehavior >> ownedUseCases: anUseCase [
	(sharedGeneralizations at: #Classifier) ownedUseCases: anUseCase
]

{ #category : #'accessing - ParameterableElement' }
OPUMLBehavior >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLBehavior >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : #'accessing - Type' }
OPUMLBehavior >> package [
	^ (sharedGeneralizations at: #Type) package
]

{ #category : #'accessing - Type' }
OPUMLBehavior >> package: aPackage [
	(sharedGeneralizations at: #Type) package: aPackage
]

{ #category : #'accessing - Namespace' }
OPUMLBehavior >> packageImports [
	^ (sharedGeneralizations at: #Namespace) packageImports
]

{ #category : #'accessing - Namespace' }
OPUMLBehavior >> packageImports: aPackageImport [
	(sharedGeneralizations at: #Namespace) packageImports: aPackageImport
]

{ #category : #'operations - Classifier' }
OPUMLBehavior >> parents [
	^ (sharedGeneralizations at: #Classifier) parents
]

{ #category : #'accessing - StructuredClassifier' }
OPUMLBehavior >> parts [
	^ (sharedGeneralizations at: #StructuredClassifier) parts
]

{ #category : #'accessing - StructuredClassifier' }
OPUMLBehavior >> parts: aProperty [
	(sharedGeneralizations at: #StructuredClassifier) parts: aProperty
]

{ #category : #accessing }
OPUMLBehavior >> postconditions [
	"An optional set of Constraints specifying what is fulfilled after the execution of the Behavior is completed, if its precondition was fulfilled before its invocation."
	^ postconditions ifNil: [ postconditions := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLBehavior >> postconditions: aConstraint [
	"An optional set of Constraints specifying what is fulfilled after the execution of the Behavior is completed, if its precondition was fulfilled before its invocation."
	postconditions := aConstraint
]

{ #category : #'accessing - Classifier' }
OPUMLBehavior >> powertypeExtents [
	^ (sharedGeneralizations at: #Classifier) powertypeExtents
]

{ #category : #'accessing - Classifier' }
OPUMLBehavior >> powertypeExtents: aGeneralizationSet [
	(sharedGeneralizations at: #Classifier) powertypeExtents: aGeneralizationSet
]

{ #category : #accessing }
OPUMLBehavior >> preconditions [
	"An optional set of Constraints specifying what must be fulfilled before the Behavior is invoked."
	^ preconditions ifNil: [ preconditions := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLBehavior >> preconditions: aConstraint [
	"An optional set of Constraints specifying what must be fulfilled before the Behavior is invoked."
	preconditions := aConstraint
]

{ #category : #'accessing - NamedElement' }
OPUMLBehavior >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLBehavior >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #accessing }
OPUMLBehavior >> redefinedBehaviors [
	"References the Behavior that this Behavior redefines. A subtype of Behavior may redefine any other subtype of Behavior. If the Behavior implements a BehavioralFeature, it replaces the redefined Behavior. If the Behavior is a classifierBehavior, it extends the redefined Behavior."
	^ redefinedBehaviors ifNil: [ redefinedBehaviors := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLBehavior >> redefinedBehaviors: aBehavior [
	"References the Behavior that this Behavior redefines. A subtype of Behavior may redefine any other subtype of Behavior. If the Behavior implements a BehavioralFeature, it replaces the redefined Behavior. If the Behavior is a classifierBehavior, it extends the redefined Behavior."
	redefinedBehaviors := aBehavior
]

{ #category : #'accessing - Classifier' }
OPUMLBehavior >> redefinedClassifiers [
	^ (sharedGeneralizations at: #Classifier) redefinedClassifiers
]

{ #category : #'accessing - Classifier' }
OPUMLBehavior >> redefinedClassifiers: aClassifier [
	(sharedGeneralizations at: #Classifier) redefinedClassifiers: aClassifier
]

{ #category : #'accessing - RedefinableElement' }
OPUMLBehavior >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : #'accessing - RedefinableElement' }
OPUMLBehavior >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : #'accessing - RedefinableElement' }
OPUMLBehavior >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : #'accessing - RedefinableElement' }
OPUMLBehavior >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : #'accessing - Classifier' }
OPUMLBehavior >> representation [
	^ (sharedGeneralizations at: #Classifier) representation
]

{ #category : #'accessing - Classifier' }
OPUMLBehavior >> representation: aCollaborationUse [
	(sharedGeneralizations at: #Classifier) representation: aCollaborationUse
]

{ #category : #'accessing - StructuredClassifier' }
OPUMLBehavior >> roles [
	^ (sharedGeneralizations at: #StructuredClassifier) roles
]

{ #category : #'accessing - StructuredClassifier' }
OPUMLBehavior >> roles: aConnectableElement [
	(sharedGeneralizations at: #StructuredClassifier) roles: aConnectableElement
]

{ #category : #accessing }
OPUMLBehavior >> specification [
	"Designates a BehavioralFeature that the Behavior implements. The BehavioralFeature must be owned by the BehavioredClassifier that owns the Behavior or be inherited by it. The Parameters of the BehavioralFeature and the implementing Behavior must match. A Behavior does not need to have a specification, in which case it either is the classifierBehavior of a BehavioredClassifier or it can only be invoked by another Behavior of the Classifier."
	^ specification
]

{ #category : #accessing }
OPUMLBehavior >> specification: aBehavioralFeature [
	"Designates a BehavioralFeature that the Behavior implements. The BehavioralFeature must be owned by the BehavioredClassifier that owns the Behavior or be inherited by it. The Parameters of the BehavioralFeature and the implementing Behavior must match. A Behavior does not need to have a specification, in which case it either is the classifierBehavior of a BehavioredClassifier or it can only be invoked by another Behavior of the Classifier."
	specification := OPUMLToOneLink
		on: self identity
		update: #methods
		from: specification
		to: aBehavioralFeature
]

{ #category : #'accessing - Classifier' }
OPUMLBehavior >> substitutions [
	^ (sharedGeneralizations at: #Classifier) substitutions
]

{ #category : #'accessing - Classifier' }
OPUMLBehavior >> substitutions: aSubstitution [
	(sharedGeneralizations at: #Classifier) substitutions: aSubstitution
]

{ #category : #'accessing - Class' }
OPUMLBehavior >> superClasses [
	^ (sharedGeneralizations at: #Class) superClasses
]

{ #category : #'accessing - Class' }
OPUMLBehavior >> superClasses: aClass [
	(sharedGeneralizations at: #Class) superClasses: aClass
]

{ #category : #'accessing - TemplateableElement' }
OPUMLBehavior >> templateBindings [
	^ (sharedGeneralizations at: #TemplateableElement) templateBindings
]

{ #category : #'accessing - TemplateableElement' }
OPUMLBehavior >> templateBindings: aTemplateBinding [
	(sharedGeneralizations at: #TemplateableElement) templateBindings: aTemplateBinding
]

{ #category : #'accessing - Classifier' }
OPUMLBehavior >> templateParameter [
	^ (sharedGeneralizations at: #Classifier) templateParameter
]

{ #category : #'accessing - Classifier' }
OPUMLBehavior >> templateParameter: aClassifierTemplateParameter [
	(sharedGeneralizations at: #Classifier) templateParameter: aClassifierTemplateParameter
]

{ #category : #'accessing - Classifier' }
OPUMLBehavior >> useCases [
	^ (sharedGeneralizations at: #Classifier) useCases
]

{ #category : #'accessing - Classifier' }
OPUMLBehavior >> useCases: anUseCase [
	(sharedGeneralizations at: #Classifier) useCases: anUseCase
]

{ #category : #'accessing - PackageableElement' }
OPUMLBehavior >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : #'accessing - PackageableElement' }
OPUMLBehavior >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]
