"
A BehavioralFeature is a feature of a Classifier that specifies an aspect of the behavior of its instances.  A BehavioralFeature is implemented (realized) by a Behavior. A BehavioralFeature specifies that a Classifier will respond to a designated request by invoking its implementing method.
"
Class {
	#name : 'OPUMLBehavioralFeature',
	#superclass : 'OPUMLElement',
	#instVars : [
		'concurrency',
		'raisedExceptions',
		'isAbstract',
		'ownedParameterSets',
		'methods',
		'ownedParameters'
	],
	#category : 'OP-UML-Metamodel-Classification',
	#package : 'OP-UML-Metamodel',
	#tag : 'Classification'
}

{ #category : 'accessing - NamedElement' }
OPUMLBehavioralFeature >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLBehavioralFeature >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'accessing' }
OPUMLBehavioralFeature >> concurrency [
	"Specifies the semantics of concurrent calls to the same passive instance (i.e., an instance originating from a Class with isActive being false). Active instances control access to their own BehavioralFeatures."
	^ concurrency ifNil: [ concurrency := OPUMLCallConcurrencyKind new sequential ]
]

{ #category : 'accessing' }
OPUMLBehavioralFeature >> concurrency: aCallConcurrencyKind [
	"Specifies the semantics of concurrent calls to the same passive instance (i.e., an instance originating from a Class with isActive being false). Active instances control access to their own BehavioralFeatures."
	concurrency := aCallConcurrencyKind
]

{ #category : 'accessing - Namespace' }
OPUMLBehavioralFeature >> elementImports [
	^ (sharedGeneralizations at: #Namespace) elementImports
]

{ #category : 'accessing - Namespace' }
OPUMLBehavioralFeature >> elementImports: anElementImport [
	(sharedGeneralizations at: #Namespace) elementImports: anElementImport
]

{ #category : 'accessing - Feature' }
OPUMLBehavioralFeature >> featuringClassifier [
	^ (sharedGeneralizations at: #Feature) featuringClassifier
]

{ #category : 'accessing - Feature' }
OPUMLBehavioralFeature >> featuringClassifier: aClassifier [
	(sharedGeneralizations at: #Feature) featuringClassifier: aClassifier
]

{ #category : 'accessing - Namespace' }
OPUMLBehavioralFeature >> importedMembers [
	^ (sharedGeneralizations at: #Namespace) importedMembers
]

{ #category : 'accessing - Namespace' }
OPUMLBehavioralFeature >> importedMembers: aPackageableElement [
	(sharedGeneralizations at: #Namespace) importedMembers: aPackageableElement
]

{ #category : 'initialization' }
OPUMLBehavioralFeature >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Feature.
		sharedGeneralizations at: #Namespace.
	}
]

{ #category : 'initialization' }
OPUMLBehavioralFeature >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Feature put: (OPUMLFeature newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Namespace put: (OPUMLNamespace newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #BehavioralFeature put: self.
]

{ #category : 'operations - stubs' }
OPUMLBehavioralFeature >> inputParametersStub [
	"The ownedParameters with direction in and inout."
	
	"{OCL} result = (ownedParameter->select(direction=ParameterDirectionKind::_'in' or direction=ParameterDirectionKind::inout))"
	
	self notYetImplemented

]

{ #category : 'accessing' }
OPUMLBehavioralFeature >> isAbstract [
	"If true, then the BehavioralFeature does not have an implementation, and one must be supplied by a more specific Classifier. If false, the BehavioralFeature must have an implementation in the Classifier or one must be inherited."
	^ isAbstract ifNil: [ isAbstract := false ]
]

{ #category : 'accessing' }
OPUMLBehavioralFeature >> isAbstract: aBoolean [
	"If true, then the BehavioralFeature does not have an implementation, and one must be supplied by a more specific Classifier. If false, the BehavioralFeature must have an implementation in the Classifier or one must be inherited."
	isAbstract := aBoolean
]

{ #category : 'operations - stubs' }
OPUMLBehavioralFeature >> isDistinguishableFromStub [
	"The query isDistinguishableFrom() determines whether two BehavioralFeatures may coexist in the same Namespace. It specifies that they must have different signatures."
	
	"{OCL} result = ((n.oclIsKindOf(BehavioralFeature) and ns.getNamesOfMember(self)->intersection(ns.getNamesOfMember(n))->notEmpty()) implies
  Set{self}->including(n.oclAsType(BehavioralFeature))->isUnique(ownedParameter->collect(p|
  Tuple { name=p.name, type=p.type,effect=p.effect,direction=p.direction,isException=p.isException,
              isStream=p.isStream,isOrdered=p.isOrdered,isUnique=p.isUnique,lower=p.lower, upper=p.upper }))
  )"
	
	self notYetImplemented

]

{ #category : 'accessing - RedefinableElement' }
OPUMLBehavioralFeature >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : 'accessing - RedefinableElement' }
OPUMLBehavioralFeature >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : 'accessing - Feature' }
OPUMLBehavioralFeature >> isStatic [
	^ (sharedGeneralizations at: #Feature) isStatic
]

{ #category : 'accessing - Feature' }
OPUMLBehavioralFeature >> isStatic: aBoolean [
	(sharedGeneralizations at: #Feature) isStatic: aBoolean
]

{ #category : 'accessing - Namespace' }
OPUMLBehavioralFeature >> members [
	^ (sharedGeneralizations at: #Namespace) members
]

{ #category : 'accessing - Namespace' }
OPUMLBehavioralFeature >> members: aNamedElement [
	(sharedGeneralizations at: #Namespace) members: aNamedElement
]

{ #category : 'accessing' }
OPUMLBehavioralFeature >> methods [
	"A Behavior that implements the BehavioralFeature. There may be at most one Behavior for a particular pairing of a Classifier (as owner of the Behavior) and a BehavioralFeature (as specification of the Behavior)."
	^ methods ifNil: [ methods := OPUMLToManyLinks on: self identity opposite: #specification: ]
]

{ #category : 'accessing' }
OPUMLBehavioralFeature >> methods: aBehavior [
	"A Behavior that implements the BehavioralFeature. There may be at most one Behavior for a particular pairing of a Classifier (as owner of the Behavior) and a BehavioralFeature (as specification of the Behavior)."
	self methods
		removeAll;
		addAll: aBehavior
]

{ #category : 'accessing - NamedElement' }
OPUMLBehavioralFeature >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLBehavioralFeature >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLBehavioralFeature >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLBehavioralFeature >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLBehavioralFeature >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLBehavioralFeature >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'operations - stubs' }
OPUMLBehavioralFeature >> outputParametersStub [
	"The ownedParameters with direction out, inout, or return."
	
	"{OCL} result = (ownedParameter->select(direction=ParameterDirectionKind::out or direction=ParameterDirectionKind::inout or direction=ParameterDirectionKind::return))"
	
	self notYetImplemented

]

{ #category : 'accessing - Namespace' }
OPUMLBehavioralFeature >> ownedMembers [
	^ (sharedGeneralizations at: #Namespace) ownedMembers
]

{ #category : 'accessing - Namespace' }
OPUMLBehavioralFeature >> ownedMembers: aNamedElement [
	(sharedGeneralizations at: #Namespace) ownedMembers: aNamedElement
]

{ #category : 'accessing' }
OPUMLBehavioralFeature >> ownedParameterSets [
	"The ParameterSets owned by this BehavioralFeature."
	^ ownedParameterSets ifNil: [ ownedParameterSets := OrderedCollection new ]
]

{ #category : 'accessing' }
OPUMLBehavioralFeature >> ownedParameterSets: aParameterSet [
	"The ParameterSets owned by this BehavioralFeature."
	ownedParameterSets := aParameterSet
]

{ #category : 'accessing' }
OPUMLBehavioralFeature >> ownedParameters [
	"The ordered set of formal Parameters of this BehavioralFeature."
	^ ownedParameters ifNil: [ ownedParameters := OrderedCollection new ]
]

{ #category : 'accessing' }
OPUMLBehavioralFeature >> ownedParameters: aParameter [
	"The ordered set of formal Parameters of this BehavioralFeature."
	ownedParameters := aParameter
]

{ #category : 'accessing - Namespace' }
OPUMLBehavioralFeature >> ownedRules [
	^ (sharedGeneralizations at: #Namespace) ownedRules
]

{ #category : 'accessing - Namespace' }
OPUMLBehavioralFeature >> ownedRules: aConstraint [
	(sharedGeneralizations at: #Namespace) ownedRules: aConstraint
]

{ #category : 'accessing - Namespace' }
OPUMLBehavioralFeature >> packageImports [
	^ (sharedGeneralizations at: #Namespace) packageImports
]

{ #category : 'accessing - Namespace' }
OPUMLBehavioralFeature >> packageImports: aPackageImport [
	(sharedGeneralizations at: #Namespace) packageImports: aPackageImport
]

{ #category : 'accessing - NamedElement' }
OPUMLBehavioralFeature >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLBehavioralFeature >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing' }
OPUMLBehavioralFeature >> raisedExceptions [
	"The Types representing exceptions that may be raised during an invocation of this BehavioralFeature."
	^ raisedExceptions ifNil: [ raisedExceptions := OrderedCollection new ]
]

{ #category : 'accessing' }
OPUMLBehavioralFeature >> raisedExceptions: aType [
	"The Types representing exceptions that may be raised during an invocation of this BehavioralFeature."
	raisedExceptions := aType
]

{ #category : 'accessing - RedefinableElement' }
OPUMLBehavioralFeature >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : 'accessing - RedefinableElement' }
OPUMLBehavioralFeature >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : 'accessing - RedefinableElement' }
OPUMLBehavioralFeature >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : 'accessing - RedefinableElement' }
OPUMLBehavioralFeature >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : 'accessing - NamedElement' }
OPUMLBehavioralFeature >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : 'accessing - NamedElement' }
OPUMLBehavioralFeature >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
