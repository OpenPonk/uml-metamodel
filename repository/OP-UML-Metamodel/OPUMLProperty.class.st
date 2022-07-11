"
A Property is a StructuralFeature. A Property related by ownedAttribute to a Classifier (other than an association) represents an attribute and might also represent an association end. It relates an instance of the Classifier to a value or set of values of the type of the attribute. A Property related by memberEnd to an Association represents an end of the Association. The type of the Property is the type of the end of the Association. A Property has the capability of being a DeploymentTarget in a Deployment relationship. This enables modeling the deployment to hierarchical nodes that have Properties functioning as internal parts.  Property specializes ParameterableElement to specify that a Property can be exposed as a formal template parameter, and provided as an actual parameter in a binding of a template.
"
Class {
	#name : #OPUMLProperty,
	#superclass : #OPUMLElement,
	#instVars : [
		'defaultValue',
		'datatype',
		'isDerivedUnion',
		'aggregation',
		'redefinedProperties',
		'isDerived',
		'associationEnd',
		'owningAssociation',
		'isID',
		'isComposite',
		'opposite',
		'owningClass',
		'interface',
		'subsettedProperties',
		'qualifiers',
		'association'
	],
	#category : 'OP-UML-Metamodel-Classification'
}

{ #category : #accessing }
OPUMLProperty >> aggregation [
	"Specifies the kind of aggregation that applies to the Property."
	^ aggregation ifNil: [ aggregation := OPUMLAggregationKind new none ]
]

{ #category : #accessing }
OPUMLProperty >> aggregation: anAggregationKind [
	"Specifies the kind of aggregation that applies to the Property."
	aggregation := anAggregationKind
]

{ #category : #accessing }
OPUMLProperty >> association [
	"The Association of which this Property is a member, if any."
	^ association
]

{ #category : #accessing }
OPUMLProperty >> association: anAssociation [
	"The Association of which this Property is a member, if any."
	association := OPUMLToOneLink
		on: self identity
		update: #memberEnds
		from: association
		to: anAssociation
]

{ #category : #accessing }
OPUMLProperty >> associationEnd [
	"Designates the optional association end that owns a qualifier attribute."
	^ associationEnd
]

{ #category : #accessing }
OPUMLProperty >> associationEnd: aProperty [
	"Designates the optional association end that owns a qualifier attribute."
	associationEnd := OPUMLToOneLink
		on: self identity
		update: #qualifiers
		from: associationEnd
		to: aProperty
]

{ #category : #'accessing - NamedElement' }
OPUMLProperty >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLProperty >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #accessing }
OPUMLProperty >> datatype [
	"The DataType that owns this Property, if any."
	^ datatype
]

{ #category : #accessing }
OPUMLProperty >> datatype: aDataType [
	"The DataType that owns this Property, if any."
	datatype := OPUMLToOneLink
		on: self identity
		update: #ownedAttributes
		from: datatype
		to: aDataType
]

{ #category : #accessing }
OPUMLProperty >> defaultValue [
	"A ValueSpecification that is evaluated to give a default value for the Property when an instance of the owning Classifier is instantiated."
	^ defaultValue
]

{ #category : #accessing }
OPUMLProperty >> defaultValue: aValueSpecification [
	"A ValueSpecification that is evaluated to give a default value for the Property when an instance of the owning Classifier is instantiated."
	defaultValue := aValueSpecification
]

{ #category : #'accessing - DeploymentTarget' }
OPUMLProperty >> deployedElements [
	^ (sharedGeneralizations at: #DeploymentTarget) deployedElements
]

{ #category : #'accessing - DeploymentTarget' }
OPUMLProperty >> deployedElements: aPackageableElement [
	(sharedGeneralizations at: #DeploymentTarget) deployedElements: aPackageableElement
]

{ #category : #'accessing - DeploymentTarget' }
OPUMLProperty >> deployments [
	^ (sharedGeneralizations at: #DeploymentTarget) deployments
]

{ #category : #'accessing - DeploymentTarget' }
OPUMLProperty >> deployments: aDeployment [
	(sharedGeneralizations at: #DeploymentTarget) deployments: aDeployment
]

{ #category : #'accessing - ConnectableElement' }
OPUMLProperty >> ends [
	^ (sharedGeneralizations at: #ConnectableElement) ends
]

{ #category : #'accessing - ConnectableElement' }
OPUMLProperty >> ends: aConnectorEnd [
	(sharedGeneralizations at: #ConnectableElement) ends: aConnectorEnd
]

{ #category : #'accessing - Feature' }
OPUMLProperty >> featuringClassifier [
	^ (sharedGeneralizations at: #Feature) featuringClassifier
]

{ #category : #'accessing - Feature' }
OPUMLProperty >> featuringClassifier: aClassifier [
	(sharedGeneralizations at: #Feature) featuringClassifier: aClassifier
]

{ #category : #initialization }
OPUMLProperty >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #ConnectableElement.
		sharedGeneralizations at: #DeploymentTarget.
		sharedGeneralizations at: #StructuralFeature.
	}
]

{ #category : #initialization }
OPUMLProperty >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #TypedElement put: (OPUMLTypedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #MultiplicityElement put: (OPUMLMultiplicityElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Feature put: (OPUMLFeature newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ConnectableElement put: (OPUMLConnectableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #DeploymentTarget put: (OPUMLDeploymentTarget newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #StructuralFeature put: (OPUMLStructuralFeature newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Property put: self.
]

{ #category : #accessing }
OPUMLProperty >> interface [
	"The Interface that owns this Property, if any."
	^ interface
]

{ #category : #accessing }
OPUMLProperty >> interface: anInterface [
	"The Interface that owns this Property, if any."
	interface := OPUMLToOneLink
		on: self identity
		update: #ownedAttributes
		from: interface
		to: anInterface
]

{ #category : #'operations - stubs' }
OPUMLProperty >> isAttributeStub [
	"The query isAttribute() is true if the Property is defined as an attribute of some Classifier."
	
	"{OCL} result = (not classifier->isEmpty())"
	
	self notYetImplemented

]

{ #category : #'operations - stubs' }
OPUMLProperty >> isCompatibleWithStub [
	"The query isCompatibleWith() determines if this Property is compatible with the specified ParameterableElement. This Property is compatible with ParameterableElement p if the kind of this Property is thesame as or a subtype of the kind of p. Further, if p is a TypedElement, then the type of this Property must be conformant with the type of p."
	
	"{OCL} result = (self.oclIsKindOf(p.oclType()) and (p.oclIsKindOf(TypeElement) implies
self.type.conformsTo(p.oclAsType(TypedElement).type)))"
	
	self notYetImplemented

]

{ #category : #operations }
OPUMLProperty >> isComposite [
	"The value of isComposite is true only if aggregation is composite."
	
	"{OCL} result = (aggregation = AggregationKind::composite)"
	
	^ self aggregation = OPUMLAggregationKind composite

]

{ #category : #accessing }
OPUMLProperty >> isComposite: aBoolean [
	"If isComposite is true, the object containing the attribute is a container for the object or value contained in the attribute. This is a derived value, indicating whether the aggregation of the Property is composite or not."
	isComposite := aBoolean
]

{ #category : #'operations - stubs' }
OPUMLProperty >> isCompositeStub [
	"The value of isComposite is true only if aggregation is composite."
	
	"{OCL} result = (aggregation = AggregationKind::composite)"
	
	self notYetImplemented

]

{ #category : #'operations - stubs' }
OPUMLProperty >> isConsistentWithStub [
	"The query isConsistentWith() specifies, for any two Properties in a context in which redefinition is possible, whether redefinition would be logically consistent. A redefining Property is consistent with a redefined Property if the type of the redefining Property conforms to the type of the redefined Property, and the multiplicity of the redefining Property (if specified) is contained in the multiplicity of the redefined Property."
	
	"pre: {OCL} redefiningElement.isRedefinitionContextValid(self)"
	"{OCL} result = (redefiningElement.oclIsKindOf(Property) and 
  let prop : Property = redefiningElement.oclAsType(Property) in 
  (prop.type.conformsTo(self.type) and 
  ((prop.lowerBound()->notEmpty() and self.lowerBound()->notEmpty()) implies prop.lowerBound() >= self.lowerBound()) and 
  ((prop.upperBound()->notEmpty() and self.upperBound()->notEmpty()) implies prop.lowerBound() <= self.lowerBound()) and 
  (self.isComposite implies prop.isComposite)))"
	
	self notYetImplemented

]

{ #category : #accessing }
OPUMLProperty >> isDerived [
	"Specifies whether the Property is derived, i.e., whether its value or values can be computed from other information."
	^ isDerived ifNil: [ isDerived := false ]
]

{ #category : #accessing }
OPUMLProperty >> isDerived: aBoolean [
	"Specifies whether the Property is derived, i.e., whether its value or values can be computed from other information."
	isDerived := aBoolean
]

{ #category : #accessing }
OPUMLProperty >> isDerivedUnion [
	"Specifies whether the property is derived as the union of all of the Properties that are constrained to subset it."
	^ isDerivedUnion ifNil: [ isDerivedUnion := false ]
]

{ #category : #accessing }
OPUMLProperty >> isDerivedUnion: aBoolean [
	"Specifies whether the property is derived as the union of all of the Properties that are constrained to subset it."
	isDerivedUnion := aBoolean
]

{ #category : #accessing }
OPUMLProperty >> isID [
	"True indicates this property can be used to uniquely identify an instance of the containing Class."
	^ isID ifNil: [ isID := false ]
]

{ #category : #accessing }
OPUMLProperty >> isID: aBoolean [
	"True indicates this property can be used to uniquely identify an instance of the containing Class."
	isID := aBoolean
]

{ #category : #'accessing - RedefinableElement' }
OPUMLProperty >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : #'accessing - RedefinableElement' }
OPUMLProperty >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : #'operations - MultiplicityElement' }
OPUMLProperty >> isMultivalued [
	^ (sharedGeneralizations at: #MultiplicityElement) isMultivalued
]

{ #category : #operations }
OPUMLProperty >> isNavigable [
	"The query isNavigable() indicates whether it is possible to navigate across the property."
	
	"{OCL} result = (not classifier->isEmpty() or association.navigableOwnedEnd->includes(self))"
	
	^ owningClass isNotNil or: [ association navigableOwnedEnds includes: self ]

]

{ #category : #'operations - stubs' }
OPUMLProperty >> isNavigableStub [
	"The query isNavigable() indicates whether it is possible to navigate across the property."
	
	"{OCL} result = (not classifier->isEmpty() or association.navigableOwnedEnd->includes(self))"
	
	self notYetImplemented

]

{ #category : #'accessing - MultiplicityElement' }
OPUMLProperty >> isOrdered [
	^ (sharedGeneralizations at: #MultiplicityElement) isOrdered
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLProperty >> isOrdered: aBoolean [
	(sharedGeneralizations at: #MultiplicityElement) isOrdered: aBoolean
]

{ #category : #'accessing - StructuralFeature' }
OPUMLProperty >> isReadOnly [
	^ (sharedGeneralizations at: #StructuralFeature) isReadOnly
]

{ #category : #'accessing - StructuralFeature' }
OPUMLProperty >> isReadOnly: aBoolean [
	(sharedGeneralizations at: #StructuralFeature) isReadOnly: aBoolean
]

{ #category : #'accessing - Feature' }
OPUMLProperty >> isStatic [
	^ (sharedGeneralizations at: #Feature) isStatic
]

{ #category : #'accessing - Feature' }
OPUMLProperty >> isStatic: aBoolean [
	(sharedGeneralizations at: #Feature) isStatic: aBoolean
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLProperty >> isUnique [
	^ (sharedGeneralizations at: #MultiplicityElement) isUnique
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLProperty >> isUnique: aBoolean [
	(sharedGeneralizations at: #MultiplicityElement) isUnique: aBoolean
]

{ #category : #'operations - MultiplicityElement' }
OPUMLProperty >> lower [
	^ (sharedGeneralizations at: #MultiplicityElement) lower
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLProperty >> lower: anInteger [
	(sharedGeneralizations at: #MultiplicityElement) lower: anInteger
]

{ #category : #'operations - MultiplicityElement' }
OPUMLProperty >> lowerBound [
	^ (sharedGeneralizations at: #MultiplicityElement) lowerBound
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLProperty >> lowerValue [
	^ (sharedGeneralizations at: #MultiplicityElement) lowerValue
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLProperty >> lowerValue: aValueSpecification [
	(sharedGeneralizations at: #MultiplicityElement) lowerValue: aValueSpecification
]

{ #category : #'accessing - NamedElement' }
OPUMLProperty >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLProperty >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLProperty >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLProperty >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLProperty >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLProperty >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #operations }
OPUMLProperty >> opposite [
	"If this property is a memberEnd of a binary association, then opposite gives the other end."
	
	"{OCL} result = (if association <> null and association.memberEnd->size() = 2
then
    association.memberEnd->any(e | e <> self)
else
    null
endif)"
	
	^ (association isNotNil and: [ association memberEnds size = 2 ])
		ifTrue: [ association memberEnds detect: [ :each | (each = self) not ] ]

]

{ #category : #accessing }
OPUMLProperty >> opposite: aProperty [
	"In the case where the Property is one end of a binary association this gives the other end."
	opposite := aProperty
]

{ #category : #'operations - stubs' }
OPUMLProperty >> oppositeStub [
	"If this property is a memberEnd of a binary association, then opposite gives the other end."
	
	"{OCL} result = (if association <> null and association.memberEnd->size() = 2
then
    association.memberEnd->any(e | e <> self)
else
    null
endif)"
	
	self notYetImplemented

]

{ #category : #accessing }
OPUMLProperty >> owningAssociation [
	"The owning association of this property, if any."
	^ owningAssociation
]

{ #category : #accessing }
OPUMLProperty >> owningAssociation: anAssociation [
	"The owning association of this property, if any."
	owningAssociation := OPUMLToOneLink
		on: self identity
		update: #ownedEnds
		from: owningAssociation
		to: anAssociation
]

{ #category : #accessing }
OPUMLProperty >> owningClass [
	"The Class that owns this Property, if any."
	^ owningClass
]

{ #category : #accessing }
OPUMLProperty >> owningClass: aClass [
	"The Class that owns this Property, if any."
	owningClass := OPUMLToOneLink
		on: self identity
		update: #ownedAttributes
		from: owningClass
		to: aClass
]

{ #category : #'accessing - ParameterableElement' }
OPUMLProperty >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLProperty >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : #'accessing - NamedElement' }
OPUMLProperty >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLProperty >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #accessing }
OPUMLProperty >> qualifiers [
	"An optional list of ordered qualifier attributes for the end."
	^ qualifiers ifNil: [ qualifiers := OPUMLToManyLinks on: self identity opposite: #associationEnd: ]
]

{ #category : #accessing }
OPUMLProperty >> qualifiers: aProperty [
	"An optional list of ordered qualifier attributes for the end."
	self qualifiers
		removeAll;
		addAll: aProperty
]

{ #category : #'accessing - RedefinableElement' }
OPUMLProperty >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : #'accessing - RedefinableElement' }
OPUMLProperty >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : #accessing }
OPUMLProperty >> redefinedProperties [
	"The properties that are redefined by this property, if any."
	^ redefinedProperties ifNil: [ redefinedProperties := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLProperty >> redefinedProperties: aProperty [
	"The properties that are redefined by this property, if any."
	redefinedProperties := aProperty
]

{ #category : #'accessing - RedefinableElement' }
OPUMLProperty >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : #'accessing - RedefinableElement' }
OPUMLProperty >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : #accessing }
OPUMLProperty >> subsettedProperties [
	"The properties of which this Property is constrained to be a subset, if any."
	^ subsettedProperties ifNil: [ subsettedProperties := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLProperty >> subsettedProperties: aProperty [
	"The properties of which this Property is constrained to be a subset, if any."
	subsettedProperties := aProperty
]

{ #category : #'operations - stubs' }
OPUMLProperty >> subsettingContextStub [
	"The query subsettingContext() gives the context for subsetting a Property. It consists, in the case of an attribute, of the corresponding Classifier, and in the case of an association end, all of the Classifiers at the other ends."
	
	"{OCL} result = (if association <> null
then association.memberEnd->excluding(self)->collect(type)->asSet()
else 
  if classifier<>null
  then classifier->asSet()
  else Set{} 
  endif
endif)"
	
	self notYetImplemented

]

{ #category : #'accessing - ConnectableElement' }
OPUMLProperty >> templateParameter [
	^ (sharedGeneralizations at: #ConnectableElement) templateParameter
]

{ #category : #'accessing - ConnectableElement' }
OPUMLProperty >> templateParameter: aConnectableElementTemplateParameter [
	(sharedGeneralizations at: #ConnectableElement) templateParameter: aConnectableElementTemplateParameter
]

{ #category : #'accessing - TypedElement' }
OPUMLProperty >> type [
	^ (sharedGeneralizations at: #TypedElement) type
]

{ #category : #'accessing - TypedElement' }
OPUMLProperty >> type: aType [
	(sharedGeneralizations at: #TypedElement) type: aType
]

{ #category : #'operations - MultiplicityElement' }
OPUMLProperty >> upper [
	^ (sharedGeneralizations at: #MultiplicityElement) upper
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLProperty >> upper: anUnlimitedNatural [
	(sharedGeneralizations at: #MultiplicityElement) upper: anUnlimitedNatural
]

{ #category : #'operations - MultiplicityElement' }
OPUMLProperty >> upperBound [
	^ (sharedGeneralizations at: #MultiplicityElement) upperBound
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLProperty >> upperValue [
	^ (sharedGeneralizations at: #MultiplicityElement) upperValue
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLProperty >> upperValue: aValueSpecification [
	(sharedGeneralizations at: #MultiplicityElement) upperValue: aValueSpecification
]

{ #category : #'accessing - NamedElement' }
OPUMLProperty >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : #'accessing - NamedElement' }
OPUMLProperty >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
