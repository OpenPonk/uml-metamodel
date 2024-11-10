"
An extension end is used to tie an extension to a stereotype when extending a metaclass.
The default multiplicity of an extension end is 0..1.
"
Class {
	#name : 'OPUMLExtensionEnd',
	#superclass : 'OPUMLElement',
	#instVars : [
		'type',
		'lower'
	],
	#category : 'OpenPonk-UML-Metamodel-Packages',
	#package : 'OpenPonk-UML-Metamodel',
	#tag : 'Packages'
}

{ #category : 'accessing - Property' }
OPUMLExtensionEnd >> aggregation [
	^ (sharedGeneralizations at: #Property) aggregation
]

{ #category : 'accessing - Property' }
OPUMLExtensionEnd >> aggregation: anAggregationKind [
	(sharedGeneralizations at: #Property) aggregation: anAggregationKind
]

{ #category : 'accessing - Property' }
OPUMLExtensionEnd >> association [
	^ (sharedGeneralizations at: #Property) association
]

{ #category : 'accessing - Property' }
OPUMLExtensionEnd >> association: anAssociation [
	(sharedGeneralizations at: #Property) association: anAssociation
]

{ #category : 'accessing - Property' }
OPUMLExtensionEnd >> associationEnd [
	^ (sharedGeneralizations at: #Property) associationEnd
]

{ #category : 'accessing - Property' }
OPUMLExtensionEnd >> associationEnd: aProperty [
	(sharedGeneralizations at: #Property) associationEnd: aProperty
]

{ #category : 'accessing - NamedElement' }
OPUMLExtensionEnd >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLExtensionEnd >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'accessing - Property' }
OPUMLExtensionEnd >> datatype [
	^ (sharedGeneralizations at: #Property) datatype
]

{ #category : 'accessing - Property' }
OPUMLExtensionEnd >> datatype: aDataType [
	(sharedGeneralizations at: #Property) datatype: aDataType
]

{ #category : 'accessing - Property' }
OPUMLExtensionEnd >> defaultValue [
	^ (sharedGeneralizations at: #Property) defaultValue
]

{ #category : 'accessing - Property' }
OPUMLExtensionEnd >> defaultValue: aValueSpecification [
	(sharedGeneralizations at: #Property) defaultValue: aValueSpecification
]

{ #category : 'accessing - DeploymentTarget' }
OPUMLExtensionEnd >> deployedElements [
	^ (sharedGeneralizations at: #DeploymentTarget) deployedElements
]

{ #category : 'accessing - DeploymentTarget' }
OPUMLExtensionEnd >> deployedElements: aPackageableElement [
	(sharedGeneralizations at: #DeploymentTarget) deployedElements: aPackageableElement
]

{ #category : 'accessing - DeploymentTarget' }
OPUMLExtensionEnd >> deployments [
	^ (sharedGeneralizations at: #DeploymentTarget) deployments
]

{ #category : 'accessing - DeploymentTarget' }
OPUMLExtensionEnd >> deployments: aDeployment [
	(sharedGeneralizations at: #DeploymentTarget) deployments: aDeployment
]

{ #category : 'accessing - ConnectableElement' }
OPUMLExtensionEnd >> ends [
	^ (sharedGeneralizations at: #ConnectableElement) ends
]

{ #category : 'accessing - ConnectableElement' }
OPUMLExtensionEnd >> ends: aConnectorEnd [
	(sharedGeneralizations at: #ConnectableElement) ends: aConnectorEnd
]

{ #category : 'accessing - Feature' }
OPUMLExtensionEnd >> featuringClassifier [
	^ (sharedGeneralizations at: #Feature) featuringClassifier
]

{ #category : 'accessing - Feature' }
OPUMLExtensionEnd >> featuringClassifier: aClassifier [
	(sharedGeneralizations at: #Feature) featuringClassifier: aClassifier
]

{ #category : 'initialization' }
OPUMLExtensionEnd >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Property.
	}
]

{ #category : 'initialization' }
OPUMLExtensionEnd >> initializeSharedGeneralizations [
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
	sharedGeneralizations at: #ExtensionEnd put: self.
]

{ #category : 'accessing - Property' }
OPUMLExtensionEnd >> interface [
	^ (sharedGeneralizations at: #Property) interface
]

{ #category : 'accessing - Property' }
OPUMLExtensionEnd >> interface: anInterface [
	(sharedGeneralizations at: #Property) interface: anInterface
]

{ #category : 'operations - Property' }
OPUMLExtensionEnd >> isComposite [
	^ (sharedGeneralizations at: #Property) isComposite
]

{ #category : 'accessing - Property' }
OPUMLExtensionEnd >> isComposite: aBoolean [
	(sharedGeneralizations at: #Property) isComposite: aBoolean
]

{ #category : 'accessing - Property' }
OPUMLExtensionEnd >> isDerived [
	^ (sharedGeneralizations at: #Property) isDerived
]

{ #category : 'accessing - Property' }
OPUMLExtensionEnd >> isDerived: aBoolean [
	(sharedGeneralizations at: #Property) isDerived: aBoolean
]

{ #category : 'accessing - Property' }
OPUMLExtensionEnd >> isDerivedUnion [
	^ (sharedGeneralizations at: #Property) isDerivedUnion
]

{ #category : 'accessing - Property' }
OPUMLExtensionEnd >> isDerivedUnion: aBoolean [
	(sharedGeneralizations at: #Property) isDerivedUnion: aBoolean
]

{ #category : 'accessing - Property' }
OPUMLExtensionEnd >> isID [
	^ (sharedGeneralizations at: #Property) isID
]

{ #category : 'accessing - Property' }
OPUMLExtensionEnd >> isID: aBoolean [
	(sharedGeneralizations at: #Property) isID: aBoolean
]

{ #category : 'accessing - RedefinableElement' }
OPUMLExtensionEnd >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : 'accessing - RedefinableElement' }
OPUMLExtensionEnd >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : 'operations - MultiplicityElement' }
OPUMLExtensionEnd >> isMultivalued [
	^ (sharedGeneralizations at: #MultiplicityElement) isMultivalued
]

{ #category : 'operations - Property' }
OPUMLExtensionEnd >> isNavigable [
	^ (sharedGeneralizations at: #Property) isNavigable
]

{ #category : 'accessing - MultiplicityElement' }
OPUMLExtensionEnd >> isOrdered [
	^ (sharedGeneralizations at: #MultiplicityElement) isOrdered
]

{ #category : 'accessing - MultiplicityElement' }
OPUMLExtensionEnd >> isOrdered: aBoolean [
	(sharedGeneralizations at: #MultiplicityElement) isOrdered: aBoolean
]

{ #category : 'accessing - StructuralFeature' }
OPUMLExtensionEnd >> isReadOnly [
	^ (sharedGeneralizations at: #StructuralFeature) isReadOnly
]

{ #category : 'accessing - StructuralFeature' }
OPUMLExtensionEnd >> isReadOnly: aBoolean [
	(sharedGeneralizations at: #StructuralFeature) isReadOnly: aBoolean
]

{ #category : 'accessing - Feature' }
OPUMLExtensionEnd >> isStatic [
	^ (sharedGeneralizations at: #Feature) isStatic
]

{ #category : 'accessing - Feature' }
OPUMLExtensionEnd >> isStatic: aBoolean [
	(sharedGeneralizations at: #Feature) isStatic: aBoolean
]

{ #category : 'accessing - MultiplicityElement' }
OPUMLExtensionEnd >> isUnique [
	^ (sharedGeneralizations at: #MultiplicityElement) isUnique
]

{ #category : 'accessing - MultiplicityElement' }
OPUMLExtensionEnd >> isUnique: aBoolean [
	(sharedGeneralizations at: #MultiplicityElement) isUnique: aBoolean
]

{ #category : 'operations - MultiplicityElement' }
OPUMLExtensionEnd >> lower [
	^ (sharedGeneralizations at: #MultiplicityElement) lower
]

{ #category : 'accessing' }
OPUMLExtensionEnd >> lower: anInteger [
	"This redefinition changes the default multiplicity of association ends, since model elements are usually extended by 0 or 1 instance of the extension stereotype."
	lower := anInteger
]

{ #category : 'operations' }
OPUMLExtensionEnd >> lowerBound [
	"The query lowerBound() returns the lower bound of the multiplicity as an Integer. This is a redefinition of the default lower bound, which normally, for MultiplicityElements, evaluates to 1 if empty."
	
	"{OCL} result = (if lowerValue=null then 0 else lowerValue.integerValue() endif)"
	
	^ self lowerValue ifNil: [ 0 ] ifNotNil: [ self lowerValue integerValue ]

]

{ #category : 'operations - stubs' }
OPUMLExtensionEnd >> lowerBoundStub [
	"The query lowerBound() returns the lower bound of the multiplicity as an Integer. This is a redefinition of the default lower bound, which normally, for MultiplicityElements, evaluates to 1 if empty."
	
	"{OCL} result = (if lowerValue=null then 0 else lowerValue.integerValue() endif)"
	
	self notYetImplemented

]

{ #category : 'accessing - MultiplicityElement' }
OPUMLExtensionEnd >> lowerValue [
	^ (sharedGeneralizations at: #MultiplicityElement) lowerValue
]

{ #category : 'accessing - MultiplicityElement' }
OPUMLExtensionEnd >> lowerValue: aValueSpecification [
	(sharedGeneralizations at: #MultiplicityElement) lowerValue: aValueSpecification
]

{ #category : 'accessing - NamedElement' }
OPUMLExtensionEnd >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLExtensionEnd >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLExtensionEnd >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLExtensionEnd >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLExtensionEnd >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLExtensionEnd >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'operations - Property' }
OPUMLExtensionEnd >> opposite [
	^ (sharedGeneralizations at: #Property) opposite
]

{ #category : 'accessing - Property' }
OPUMLExtensionEnd >> opposite: aProperty [
	(sharedGeneralizations at: #Property) opposite: aProperty
]

{ #category : 'accessing - Property' }
OPUMLExtensionEnd >> owningAssociation [
	^ (sharedGeneralizations at: #Property) owningAssociation
]

{ #category : 'accessing - Property' }
OPUMLExtensionEnd >> owningAssociation: anAssociation [
	(sharedGeneralizations at: #Property) owningAssociation: anAssociation
]

{ #category : 'accessing - Property' }
OPUMLExtensionEnd >> owningClass [
	^ (sharedGeneralizations at: #Property) owningClass
]

{ #category : 'accessing - Property' }
OPUMLExtensionEnd >> owningClass: aClass [
	(sharedGeneralizations at: #Property) owningClass: aClass
]

{ #category : 'accessing - ParameterableElement' }
OPUMLExtensionEnd >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : 'accessing - ParameterableElement' }
OPUMLExtensionEnd >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : 'accessing - NamedElement' }
OPUMLExtensionEnd >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLExtensionEnd >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing - Property' }
OPUMLExtensionEnd >> qualifiers [
	^ (sharedGeneralizations at: #Property) qualifiers
]

{ #category : 'accessing - Property' }
OPUMLExtensionEnd >> qualifiers: aProperty [
	(sharedGeneralizations at: #Property) qualifiers: aProperty
]

{ #category : 'accessing - RedefinableElement' }
OPUMLExtensionEnd >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : 'accessing - RedefinableElement' }
OPUMLExtensionEnd >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : 'accessing - Property' }
OPUMLExtensionEnd >> redefinedProperties [
	^ (sharedGeneralizations at: #Property) redefinedProperties
]

{ #category : 'accessing - Property' }
OPUMLExtensionEnd >> redefinedProperties: aProperty [
	(sharedGeneralizations at: #Property) redefinedProperties: aProperty
]

{ #category : 'accessing - RedefinableElement' }
OPUMLExtensionEnd >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : 'accessing - RedefinableElement' }
OPUMLExtensionEnd >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : 'accessing - Property' }
OPUMLExtensionEnd >> subsettedProperties [
	^ (sharedGeneralizations at: #Property) subsettedProperties
]

{ #category : 'accessing - Property' }
OPUMLExtensionEnd >> subsettedProperties: aProperty [
	(sharedGeneralizations at: #Property) subsettedProperties: aProperty
]

{ #category : 'accessing - ConnectableElement' }
OPUMLExtensionEnd >> templateParameter [
	^ (sharedGeneralizations at: #ConnectableElement) templateParameter
]

{ #category : 'accessing - ConnectableElement' }
OPUMLExtensionEnd >> templateParameter: aConnectableElementTemplateParameter [
	(sharedGeneralizations at: #ConnectableElement) templateParameter: aConnectableElementTemplateParameter
]

{ #category : 'accessing' }
OPUMLExtensionEnd >> type [
	"References the type of the ExtensionEnd. Note that this association restricts the possible types of an ExtensionEnd to only be Stereotypes."
	^ type
]

{ #category : 'accessing' }
OPUMLExtensionEnd >> type: aStereotype [
	"References the type of the ExtensionEnd. Note that this association restricts the possible types of an ExtensionEnd to only be Stereotypes."
	type := aStereotype
]

{ #category : 'operations - MultiplicityElement' }
OPUMLExtensionEnd >> upper [
	^ (sharedGeneralizations at: #MultiplicityElement) upper
]

{ #category : 'accessing - MultiplicityElement' }
OPUMLExtensionEnd >> upper: anUnlimitedNatural [
	(sharedGeneralizations at: #MultiplicityElement) upper: anUnlimitedNatural
]

{ #category : 'operations - MultiplicityElement' }
OPUMLExtensionEnd >> upperBound [
	^ (sharedGeneralizations at: #MultiplicityElement) upperBound
]

{ #category : 'accessing - MultiplicityElement' }
OPUMLExtensionEnd >> upperValue [
	^ (sharedGeneralizations at: #MultiplicityElement) upperValue
]

{ #category : 'accessing - MultiplicityElement' }
OPUMLExtensionEnd >> upperValue: aValueSpecification [
	(sharedGeneralizations at: #MultiplicityElement) upperValue: aValueSpecification
]

{ #category : 'accessing - NamedElement' }
OPUMLExtensionEnd >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : 'accessing - NamedElement' }
OPUMLExtensionEnd >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
