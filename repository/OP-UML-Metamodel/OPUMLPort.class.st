"
A Port is a property of an EncapsulatedClassifier that specifies a distinct interaction point between that EncapsulatedClassifier and its environment or between the (behavior of the) EncapsulatedClassifier and its internal parts. Ports are connected to Properties of the EncapsulatedClassifier by Connectors through which requests can be made to invoke BehavioralFeatures. A Port may specify the services an EncapsulatedClassifier provides (offers) to its environment as well as the services that an EncapsulatedClassifier expects (requires) of its environment.  A Port may have an associated ProtocolStateMachine.
"
Class {
	#name : #OPUMLPort,
	#superclass : #OPUMLElement,
	#instVars : [
		'isBehavior',
		'requireds',
		'redefinedPorts',
		'isService',
		'protocol',
		'isConjugated',
		'provideds'
	],
	#category : 'OP-UML-Metamodel-StructuredClassifiers'
}

{ #category : #'accessing - Property' }
OPUMLPort >> aggregation [
	^ (sharedGeneralizations at: #Property) aggregation
]

{ #category : #'accessing - Property' }
OPUMLPort >> aggregation: anAggregationKind [
	(sharedGeneralizations at: #Property) aggregation: anAggregationKind
]

{ #category : #'accessing - Property' }
OPUMLPort >> association [
	^ (sharedGeneralizations at: #Property) association
]

{ #category : #'accessing - Property' }
OPUMLPort >> association: anAssociation [
	(sharedGeneralizations at: #Property) association: anAssociation
]

{ #category : #'accessing - Property' }
OPUMLPort >> associationEnd [
	^ (sharedGeneralizations at: #Property) associationEnd
]

{ #category : #'accessing - Property' }
OPUMLPort >> associationEnd: aProperty [
	(sharedGeneralizations at: #Property) associationEnd: aProperty
]

{ #category : #'operations - stubs' }
OPUMLPort >> basicProvidedStub [
	"The union of the sets of Interfaces realized by the type of the Port and its supertypes, or directly the type of the Port if the Port is typed by an Interface."
	
	"{OCL} result = (if type.oclIsKindOf(Interface) 
then type.oclAsType(Interface)->asSet() 
else type.oclAsType(Classifier).allRealizedInterfaces() 
endif)"
	
	self notYetImplemented

]

{ #category : #'operations - stubs' }
OPUMLPort >> basicRequiredStub [
	"The union of the sets of Interfaces used by the type of the Port and its supertypes."
	
	"{OCL} result = ( type.oclAsType(Classifier).allUsedInterfaces() )"
	
	self notYetImplemented

]

{ #category : #'accessing - NamedElement' }
OPUMLPort >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLPort >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #'accessing - Property' }
OPUMLPort >> datatype [
	^ (sharedGeneralizations at: #Property) datatype
]

{ #category : #'accessing - Property' }
OPUMLPort >> datatype: aDataType [
	(sharedGeneralizations at: #Property) datatype: aDataType
]

{ #category : #'accessing - Property' }
OPUMLPort >> defaultValue [
	^ (sharedGeneralizations at: #Property) defaultValue
]

{ #category : #'accessing - Property' }
OPUMLPort >> defaultValue: aValueSpecification [
	(sharedGeneralizations at: #Property) defaultValue: aValueSpecification
]

{ #category : #'accessing - DeploymentTarget' }
OPUMLPort >> deployedElements [
	^ (sharedGeneralizations at: #DeploymentTarget) deployedElements
]

{ #category : #'accessing - DeploymentTarget' }
OPUMLPort >> deployedElements: aPackageableElement [
	(sharedGeneralizations at: #DeploymentTarget) deployedElements: aPackageableElement
]

{ #category : #'accessing - DeploymentTarget' }
OPUMLPort >> deployments [
	^ (sharedGeneralizations at: #DeploymentTarget) deployments
]

{ #category : #'accessing - DeploymentTarget' }
OPUMLPort >> deployments: aDeployment [
	(sharedGeneralizations at: #DeploymentTarget) deployments: aDeployment
]

{ #category : #'accessing - ConnectableElement' }
OPUMLPort >> ends [
	^ (sharedGeneralizations at: #ConnectableElement) ends
]

{ #category : #'accessing - ConnectableElement' }
OPUMLPort >> ends: aConnectorEnd [
	(sharedGeneralizations at: #ConnectableElement) ends: aConnectorEnd
]

{ #category : #'accessing - Feature' }
OPUMLPort >> featuringClassifier [
	^ (sharedGeneralizations at: #Feature) featuringClassifier
]

{ #category : #'accessing - Feature' }
OPUMLPort >> featuringClassifier: aClassifier [
	(sharedGeneralizations at: #Feature) featuringClassifier: aClassifier
]

{ #category : #initialization }
OPUMLPort >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Property.
	}
]

{ #category : #initialization }
OPUMLPort >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #TypedElement put: (OPUMLTypedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #MultiplicityElement put: (OPUMLMultiplicityElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Feature put: (OPUMLFeature newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ConnectableElement put: (OPUMLConnectableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #DeploymentTarget put: (OPUMLDeploymentTarget newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #StructuralFeature put: (OPUMLStructuralFeature newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Property put: (OPUMLProperty newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Port put: self.
]

{ #category : #'accessing - Property' }
OPUMLPort >> interface [
	^ (sharedGeneralizations at: #Property) interface
]

{ #category : #'accessing - Property' }
OPUMLPort >> interface: anInterface [
	(sharedGeneralizations at: #Property) interface: anInterface
]

{ #category : #accessing }
OPUMLPort >> isBehavior [
	"Specifies whether requests arriving at this Port are sent to the classifier behavior of this EncapsulatedClassifier. Such a Port is referred to as a behavior Port. Any invocation of a BehavioralFeature targeted at a behavior Port will be handled by the instance of the owning EncapsulatedClassifier itself, rather than by any instances that it may contain."
	^ isBehavior ifNil: [ isBehavior := false ]
]

{ #category : #accessing }
OPUMLPort >> isBehavior: aBoolean [
	"Specifies whether requests arriving at this Port are sent to the classifier behavior of this EncapsulatedClassifier. Such a Port is referred to as a behavior Port. Any invocation of a BehavioralFeature targeted at a behavior Port will be handled by the instance of the owning EncapsulatedClassifier itself, rather than by any instances that it may contain."
	isBehavior := aBoolean
]

{ #category : #'operations - Property' }
OPUMLPort >> isComposite [
	^ (sharedGeneralizations at: #Property) isComposite
]

{ #category : #'accessing - Property' }
OPUMLPort >> isComposite: aBoolean [
	(sharedGeneralizations at: #Property) isComposite: aBoolean
]

{ #category : #accessing }
OPUMLPort >> isConjugated [
	"Specifies the way that the provided and required Interfaces are derived from the Port’s Type."
	^ isConjugated ifNil: [ isConjugated := false ]
]

{ #category : #accessing }
OPUMLPort >> isConjugated: aBoolean [
	"Specifies the way that the provided and required Interfaces are derived from the Port’s Type."
	isConjugated := aBoolean
]

{ #category : #'accessing - Property' }
OPUMLPort >> isDerived [
	^ (sharedGeneralizations at: #Property) isDerived
]

{ #category : #'accessing - Property' }
OPUMLPort >> isDerived: aBoolean [
	(sharedGeneralizations at: #Property) isDerived: aBoolean
]

{ #category : #'accessing - Property' }
OPUMLPort >> isDerivedUnion [
	^ (sharedGeneralizations at: #Property) isDerivedUnion
]

{ #category : #'accessing - Property' }
OPUMLPort >> isDerivedUnion: aBoolean [
	(sharedGeneralizations at: #Property) isDerivedUnion: aBoolean
]

{ #category : #'accessing - Property' }
OPUMLPort >> isID [
	^ (sharedGeneralizations at: #Property) isID
]

{ #category : #'accessing - Property' }
OPUMLPort >> isID: aBoolean [
	(sharedGeneralizations at: #Property) isID: aBoolean
]

{ #category : #'accessing - RedefinableElement' }
OPUMLPort >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : #'accessing - RedefinableElement' }
OPUMLPort >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : #'operations - MultiplicityElement' }
OPUMLPort >> isMultivalued [
	^ (sharedGeneralizations at: #MultiplicityElement) isMultivalued
]

{ #category : #'operations - Property' }
OPUMLPort >> isNavigable [
	^ (sharedGeneralizations at: #Property) isNavigable
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLPort >> isOrdered [
	^ (sharedGeneralizations at: #MultiplicityElement) isOrdered
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLPort >> isOrdered: aBoolean [
	(sharedGeneralizations at: #MultiplicityElement) isOrdered: aBoolean
]

{ #category : #'accessing - StructuralFeature' }
OPUMLPort >> isReadOnly [
	^ (sharedGeneralizations at: #StructuralFeature) isReadOnly
]

{ #category : #'accessing - StructuralFeature' }
OPUMLPort >> isReadOnly: aBoolean [
	(sharedGeneralizations at: #StructuralFeature) isReadOnly: aBoolean
]

{ #category : #accessing }
OPUMLPort >> isService [
	"If true, indicates that this Port is used to provide the published functionality of an EncapsulatedClassifier.  If false, this Port is used to implement the EncapsulatedClassifier but is not part of the essential externally-visible functionality of the EncapsulatedClassifier and can, therefore, be altered or deleted along with the internal implementation of the EncapsulatedClassifier and other properties that are considered part of its implementation."
	^ isService ifNil: [ isService := true ]
]

{ #category : #accessing }
OPUMLPort >> isService: aBoolean [
	"If true, indicates that this Port is used to provide the published functionality of an EncapsulatedClassifier.  If false, this Port is used to implement the EncapsulatedClassifier but is not part of the essential externally-visible functionality of the EncapsulatedClassifier and can, therefore, be altered or deleted along with the internal implementation of the EncapsulatedClassifier and other properties that are considered part of its implementation."
	isService := aBoolean
]

{ #category : #'accessing - Feature' }
OPUMLPort >> isStatic [
	^ (sharedGeneralizations at: #Feature) isStatic
]

{ #category : #'accessing - Feature' }
OPUMLPort >> isStatic: aBoolean [
	(sharedGeneralizations at: #Feature) isStatic: aBoolean
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLPort >> isUnique [
	^ (sharedGeneralizations at: #MultiplicityElement) isUnique
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLPort >> isUnique: aBoolean [
	(sharedGeneralizations at: #MultiplicityElement) isUnique: aBoolean
]

{ #category : #'operations - MultiplicityElement' }
OPUMLPort >> lower [
	^ (sharedGeneralizations at: #MultiplicityElement) lower
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLPort >> lower: anInteger [
	(sharedGeneralizations at: #MultiplicityElement) lower: anInteger
]

{ #category : #'operations - MultiplicityElement' }
OPUMLPort >> lowerBound [
	^ (sharedGeneralizations at: #MultiplicityElement) lowerBound
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLPort >> lowerValue [
	^ (sharedGeneralizations at: #MultiplicityElement) lowerValue
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLPort >> lowerValue: aValueSpecification [
	(sharedGeneralizations at: #MultiplicityElement) lowerValue: aValueSpecification
]

{ #category : #'accessing - NamedElement' }
OPUMLPort >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLPort >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLPort >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLPort >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLPort >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLPort >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'operations - Property' }
OPUMLPort >> opposite [
	^ (sharedGeneralizations at: #Property) opposite
]

{ #category : #'accessing - Property' }
OPUMLPort >> opposite: aProperty [
	(sharedGeneralizations at: #Property) opposite: aProperty
]

{ #category : #'accessing - Property' }
OPUMLPort >> owningAssociation [
	^ (sharedGeneralizations at: #Property) owningAssociation
]

{ #category : #'accessing - Property' }
OPUMLPort >> owningAssociation: anAssociation [
	(sharedGeneralizations at: #Property) owningAssociation: anAssociation
]

{ #category : #'accessing - Property' }
OPUMLPort >> owningClass [
	^ (sharedGeneralizations at: #Property) owningClass
]

{ #category : #'accessing - Property' }
OPUMLPort >> owningClass: aClass [
	(sharedGeneralizations at: #Property) owningClass: aClass
]

{ #category : #'accessing - ParameterableElement' }
OPUMLPort >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLPort >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : #accessing }
OPUMLPort >> protocol [
	"An optional ProtocolStateMachine which describes valid interactions at this interaction point."
	^ protocol
]

{ #category : #accessing }
OPUMLPort >> protocol: aProtocolStateMachine [
	"An optional ProtocolStateMachine which describes valid interactions at this interaction point."
	protocol := aProtocolStateMachine
]

{ #category : #'operations - stubs' }
OPUMLPort >> providedStub [
	"Derivation for Port::/provided"
	
	"{OCL} result = (if isConjugated then basicRequired() else basicProvided() endif)"
	
	self notYetImplemented

]

{ #category : #accessing }
OPUMLPort >> provideds [
	"The Interfaces specifying the set of Operations and Receptions that the EncapsulatedCclassifier offers to its environment via this Port, and which it will handle either directly or by forwarding it to a part of its internal structure. This association is derived according to the value of isConjugated. If isConjugated is false, provided is derived as the union of the sets of Interfaces realized by the type of the port and its supertypes, or directly from the type of the Port if the Port is typed by an Interface. If isConjugated is true, it is derived as the union of the sets of Interfaces used by the type of the Port and its supertypes."
	^ provideds ifNil: [ provideds := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLPort >> provideds: anInterface [
	"The Interfaces specifying the set of Operations and Receptions that the EncapsulatedCclassifier offers to its environment via this Port, and which it will handle either directly or by forwarding it to a part of its internal structure. This association is derived according to the value of isConjugated. If isConjugated is false, provided is derived as the union of the sets of Interfaces realized by the type of the port and its supertypes, or directly from the type of the Port if the Port is typed by an Interface. If isConjugated is true, it is derived as the union of the sets of Interfaces used by the type of the Port and its supertypes."
	provideds := anInterface
]

{ #category : #'accessing - NamedElement' }
OPUMLPort >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLPort >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #'accessing - Property' }
OPUMLPort >> qualifiers [
	^ (sharedGeneralizations at: #Property) qualifiers
]

{ #category : #'accessing - Property' }
OPUMLPort >> qualifiers: aProperty [
	(sharedGeneralizations at: #Property) qualifiers: aProperty
]

{ #category : #'accessing - RedefinableElement' }
OPUMLPort >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : #'accessing - RedefinableElement' }
OPUMLPort >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : #accessing }
OPUMLPort >> redefinedPorts [
	"A Port may be redefined when its containing EncapsulatedClassifier is specialized. The redefining Port may have additional Interfaces to those that are associated with the redefined Port or it may replace an Interface by one of its subtypes."
	^ redefinedPorts ifNil: [ redefinedPorts := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLPort >> redefinedPorts: aPort [
	"A Port may be redefined when its containing EncapsulatedClassifier is specialized. The redefining Port may have additional Interfaces to those that are associated with the redefined Port or it may replace an Interface by one of its subtypes."
	redefinedPorts := aPort
]

{ #category : #'accessing - Property' }
OPUMLPort >> redefinedProperties [
	^ (sharedGeneralizations at: #Property) redefinedProperties
]

{ #category : #'accessing - Property' }
OPUMLPort >> redefinedProperties: aProperty [
	(sharedGeneralizations at: #Property) redefinedProperties: aProperty
]

{ #category : #'accessing - RedefinableElement' }
OPUMLPort >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : #'accessing - RedefinableElement' }
OPUMLPort >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : #'operations - stubs' }
OPUMLPort >> requiredStub [
	"Derivation for Port::/required"
	
	"{OCL} result = (if isConjugated then basicProvided() else basicRequired() endif)"
	
	self notYetImplemented

]

{ #category : #accessing }
OPUMLPort >> requireds [
	"The Interfaces specifying the set of Operations and Receptions that the EncapsulatedCassifier expects its environment to handle via this port. This association is derived according to the value of isConjugated. If isConjugated is false, required is derived as the union of the sets of Interfaces used by the type of the Port and its supertypes. If isConjugated is true, it is derived as the union of the sets of Interfaces realized by the type of the Port and its supertypes, or directly from the type of the Port if the Port is typed by an Interface."
	^ requireds ifNil: [ requireds := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLPort >> requireds: anInterface [
	"The Interfaces specifying the set of Operations and Receptions that the EncapsulatedCassifier expects its environment to handle via this port. This association is derived according to the value of isConjugated. If isConjugated is false, required is derived as the union of the sets of Interfaces used by the type of the Port and its supertypes. If isConjugated is true, it is derived as the union of the sets of Interfaces realized by the type of the Port and its supertypes, or directly from the type of the Port if the Port is typed by an Interface."
	requireds := anInterface
]

{ #category : #'accessing - Property' }
OPUMLPort >> subsettedProperties [
	^ (sharedGeneralizations at: #Property) subsettedProperties
]

{ #category : #'accessing - Property' }
OPUMLPort >> subsettedProperties: aProperty [
	(sharedGeneralizations at: #Property) subsettedProperties: aProperty
]

{ #category : #'accessing - ConnectableElement' }
OPUMLPort >> templateParameter [
	^ (sharedGeneralizations at: #ConnectableElement) templateParameter
]

{ #category : #'accessing - ConnectableElement' }
OPUMLPort >> templateParameter: aConnectableElementTemplateParameter [
	(sharedGeneralizations at: #ConnectableElement) templateParameter: aConnectableElementTemplateParameter
]

{ #category : #'accessing - TypedElement' }
OPUMLPort >> type [
	^ (sharedGeneralizations at: #TypedElement) type
]

{ #category : #'accessing - TypedElement' }
OPUMLPort >> type: aType [
	(sharedGeneralizations at: #TypedElement) type: aType
]

{ #category : #'operations - MultiplicityElement' }
OPUMLPort >> upper [
	^ (sharedGeneralizations at: #MultiplicityElement) upper
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLPort >> upper: anUnlimitedNatural [
	(sharedGeneralizations at: #MultiplicityElement) upper: anUnlimitedNatural
]

{ #category : #'operations - MultiplicityElement' }
OPUMLPort >> upperBound [
	^ (sharedGeneralizations at: #MultiplicityElement) upperBound
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLPort >> upperValue [
	^ (sharedGeneralizations at: #MultiplicityElement) upperValue
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLPort >> upperValue: aValueSpecification [
	(sharedGeneralizations at: #MultiplicityElement) upperValue: aValueSpecification
]

{ #category : #'accessing - NamedElement' }
OPUMLPort >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : #'accessing - NamedElement' }
OPUMLPort >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
