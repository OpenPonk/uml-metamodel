"
An Operation is a BehavioralFeature of a Classifier that specifies the name, type, parameters, and constraints for invoking an associated Behavior. An Operation may invoke both the execution of method behaviors as well as other behavioral responses. Operation specializes TemplateableElement in order to support specification of template operations and bound operations. Operation specializes ParameterableElement to specify that an operation can be exposed as a formal template parameter, and provided as an actual parameter in a binding of a template.
"
Class {
	#name : #OPUMLOperation,
	#superclass : #OPUMLElement,
	#instVars : [
		'datatype',
		'lower',
		'bodyCondition',
		'postconditions',
		'templateParameter',
		'isQuery',
		'ownedParameters',
		'isUnique',
		'redefinedOperations',
		'upper',
		'owningClass',
		'interface',
		'type',
		'isOrdered',
		'raisedExceptions',
		'preconditions'
	],
	#category : 'OP-UML-Metamodel-Classification'
}

{ #category : #accessing }
OPUMLOperation >> bodyCondition [
	"An optional Constraint on the result values of an invocation of this Operation."
	^ bodyCondition
]

{ #category : #accessing }
OPUMLOperation >> bodyCondition: aConstraint [
	"An optional Constraint on the result values of an invocation of this Operation."
	bodyCondition := aConstraint
]

{ #category : #'accessing - NamedElement' }
OPUMLOperation >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLOperation >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #'accessing - BehavioralFeature' }
OPUMLOperation >> concurrency [
	^ (sharedGeneralizations at: #BehavioralFeature) concurrency
]

{ #category : #'accessing - BehavioralFeature' }
OPUMLOperation >> concurrency: aCallConcurrencyKind [
	(sharedGeneralizations at: #BehavioralFeature) concurrency: aCallConcurrencyKind
]

{ #category : #accessing }
OPUMLOperation >> datatype [
	"The DataType that owns this Operation, if any."
	^ datatype
]

{ #category : #accessing }
OPUMLOperation >> datatype: aDataType [
	"The DataType that owns this Operation, if any."
	datatype := OPUMLToOneLink
		on: self identity
		update: #ownedOperations
		from: datatype
		to: aDataType
]

{ #category : #'accessing - Namespace' }
OPUMLOperation >> elementImports [
	^ (sharedGeneralizations at: #Namespace) elementImports
]

{ #category : #'accessing - Namespace' }
OPUMLOperation >> elementImports: anElementImport [
	(sharedGeneralizations at: #Namespace) elementImports: anElementImport
]

{ #category : #'accessing - Feature' }
OPUMLOperation >> featuringClassifier [
	^ (sharedGeneralizations at: #Feature) featuringClassifier
]

{ #category : #'accessing - Feature' }
OPUMLOperation >> featuringClassifier: aClassifier [
	(sharedGeneralizations at: #Feature) featuringClassifier: aClassifier
]

{ #category : #'accessing - Namespace' }
OPUMLOperation >> importedMembers [
	^ (sharedGeneralizations at: #Namespace) importedMembers
]

{ #category : #'accessing - Namespace' }
OPUMLOperation >> importedMembers: aPackageableElement [
	(sharedGeneralizations at: #Namespace) importedMembers: aPackageableElement
]

{ #category : #initialization }
OPUMLOperation >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #TemplateableElement.
		sharedGeneralizations at: #ParameterableElement.
		sharedGeneralizations at: #BehavioralFeature.
	}
]

{ #category : #initialization }
OPUMLOperation >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Feature put: (OPUMLFeature newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Namespace put: (OPUMLNamespace newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #TemplateableElement put: (OPUMLTemplateableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #BehavioralFeature put: (OPUMLBehavioralFeature newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Operation put: self.
]

{ #category : #accessing }
OPUMLOperation >> interface [
	"The Interface that owns this Operation, if any."
	^ interface
]

{ #category : #accessing }
OPUMLOperation >> interface: anInterface [
	"The Interface that owns this Operation, if any."
	interface := OPUMLToOneLink
		on: self identity
		update: #ownedOperations
		from: interface
		to: anInterface
]

{ #category : #'accessing - BehavioralFeature' }
OPUMLOperation >> isAbstract [
	^ (sharedGeneralizations at: #BehavioralFeature) isAbstract
]

{ #category : #'accessing - BehavioralFeature' }
OPUMLOperation >> isAbstract: aBoolean [
	(sharedGeneralizations at: #BehavioralFeature) isAbstract: aBoolean
]

{ #category : #'operations - stubs' }
OPUMLOperation >> isConsistentWithStub [
	"The query isConsistentWith() specifies, for any two Operations in a context in which redefinition is possible, whether redefinition would be consistent. A redefining operation is consistent with a redefined operation if
it has the same number of owned parameters, and for each parameter the following holds:

- Direction, ordering and uniqueness are the same.
- The corresponding types are covariant, contravariant or invariant.
- The multiplicities are compatible, depending on the parameter direction."
	
	"pre: {OCL} redefiningElement.isRedefinitionContextValid(self)"
	"{OCL} result = (redefiningElement.oclIsKindOf(Operation) and
let op : Operation = redefiningElement.oclAsType(Operation) in
	self.ownedParameter->size() = op.ownedParameter->size() and
	Sequence{1..self.ownedParameter->size()}->
		forAll(i |  
		  let redefiningParam : Parameter = op.ownedParameter->at(i),
               redefinedParam : Parameter = self.ownedParameter->at(i) in
                 (redefiningParam.isUnique = redefinedParam.isUnique) and
                 (redefiningParam.isOrdered = redefinedParam. isOrdered) and
                 (redefiningParam.direction = redefinedParam.direction) and
                 (redefiningParam.type.conformsTo(redefinedParam.type) or
                     redefinedParam.type.conformsTo(redefiningParam.type)) and
                 (redefiningParam.direction = ParameterDirectionKind::inout implies
                         (redefinedParam.compatibleWith(redefiningParam) and
                         redefiningParam.compatibleWith(redefinedParam))) and
                 (redefiningParam.direction = ParameterDirectionKind::_'in' implies
                         redefinedParam.compatibleWith(redefiningParam)) and
                 ((redefiningParam.direction = ParameterDirectionKind::out or
                      redefiningParam.direction = ParameterDirectionKind::return) implies
                         redefiningParam.compatibleWith(redefinedParam))
		))"
	
	self notYetImplemented

]

{ #category : #'accessing - RedefinableElement' }
OPUMLOperation >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : #'accessing - RedefinableElement' }
OPUMLOperation >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : #accessing }
OPUMLOperation >> isOrdered [
	"Specifies whether the return parameter is ordered or not, if present.  This information is derived from the return result for this Operation."
	^ isOrdered
]

{ #category : #accessing }
OPUMLOperation >> isOrdered: aBoolean [
	"Specifies whether the return parameter is ordered or not, if present.  This information is derived from the return result for this Operation."
	isOrdered := aBoolean
]

{ #category : #'operations - stubs' }
OPUMLOperation >> isOrderedStub [
	"If this operation has a return parameter, isOrdered equals the value of isOrdered for that parameter. Otherwise isOrdered is false."
	
	"{OCL} result = (if returnResult()->notEmpty() then returnResult()-> exists(isOrdered) else false endif)"
	
	self notYetImplemented

]

{ #category : #accessing }
OPUMLOperation >> isQuery [
	"Specifies whether an execution of the BehavioralFeature leaves the state of the system unchanged (isQuery=true) or whether side effects may occur (isQuery=false)."
	^ isQuery ifNil: [ isQuery := false ]
]

{ #category : #accessing }
OPUMLOperation >> isQuery: aBoolean [
	"Specifies whether an execution of the BehavioralFeature leaves the state of the system unchanged (isQuery=true) or whether side effects may occur (isQuery=false)."
	isQuery := aBoolean
]

{ #category : #'accessing - Feature' }
OPUMLOperation >> isStatic [
	^ (sharedGeneralizations at: #Feature) isStatic
]

{ #category : #'accessing - Feature' }
OPUMLOperation >> isStatic: aBoolean [
	(sharedGeneralizations at: #Feature) isStatic: aBoolean
]

{ #category : #accessing }
OPUMLOperation >> isUnique [
	"Specifies whether the return parameter is unique or not, if present. This information is derived from the return result for this Operation."
	^ isUnique
]

{ #category : #accessing }
OPUMLOperation >> isUnique: aBoolean [
	"Specifies whether the return parameter is unique or not, if present. This information is derived from the return result for this Operation."
	isUnique := aBoolean
]

{ #category : #'operations - stubs' }
OPUMLOperation >> isUniqueStub [
	"If this operation has a return parameter, isUnique equals the value of isUnique for that parameter. Otherwise isUnique is true."
	
	"{OCL} result = (if returnResult()->notEmpty() then returnResult()->exists(isUnique) else true endif)"
	
	self notYetImplemented

]

{ #category : #accessing }
OPUMLOperation >> lower [
	"Specifies the lower multiplicity of the return parameter, if present. This information is derived from the return result for this Operation."
	^ lower
]

{ #category : #accessing }
OPUMLOperation >> lower: anInteger [
	"Specifies the lower multiplicity of the return parameter, if present. This information is derived from the return result for this Operation."
	lower := anInteger
]

{ #category : #'operations - stubs' }
OPUMLOperation >> lowerStub [
	"If this operation has a return parameter, lower equals the value of lower for that parameter. Otherwise lower has no value."
	
	"{OCL} result = (if returnResult()->notEmpty() then returnResult()->any(true).lower else null endif)"
	
	self notYetImplemented

]

{ #category : #'accessing - Namespace' }
OPUMLOperation >> members [
	^ (sharedGeneralizations at: #Namespace) members
]

{ #category : #'accessing - Namespace' }
OPUMLOperation >> members: aNamedElement [
	(sharedGeneralizations at: #Namespace) members: aNamedElement
]

{ #category : #'accessing - BehavioralFeature' }
OPUMLOperation >> methods [
	^ (sharedGeneralizations at: #BehavioralFeature) methods
]

{ #category : #'accessing - BehavioralFeature' }
OPUMLOperation >> methods: aBehavior [
	(sharedGeneralizations at: #BehavioralFeature) methods: aBehavior
]

{ #category : #'accessing - NamedElement' }
OPUMLOperation >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLOperation >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLOperation >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLOperation >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLOperation >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLOperation >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'accessing - Namespace' }
OPUMLOperation >> ownedMembers [
	^ (sharedGeneralizations at: #Namespace) ownedMembers
]

{ #category : #'accessing - Namespace' }
OPUMLOperation >> ownedMembers: aNamedElement [
	(sharedGeneralizations at: #Namespace) ownedMembers: aNamedElement
]

{ #category : #'accessing - BehavioralFeature' }
OPUMLOperation >> ownedParameterSets [
	^ (sharedGeneralizations at: #BehavioralFeature) ownedParameterSets
]

{ #category : #'accessing - BehavioralFeature' }
OPUMLOperation >> ownedParameterSets: aParameterSet [
	(sharedGeneralizations at: #BehavioralFeature) ownedParameterSets: aParameterSet
]

{ #category : #accessing }
OPUMLOperation >> ownedParameters [
	"The parameters owned by this Operation."
	^ ownedParameters ifNil: [ ownedParameters := OPUMLToManyLinks on: self identity opposite: #operation: ]
]

{ #category : #accessing }
OPUMLOperation >> ownedParameters: aParameter [
	"The parameters owned by this Operation."
	self ownedParameters
		removeAll;
		addAll: aParameter
]

{ #category : #'accessing - Namespace' }
OPUMLOperation >> ownedRules [
	^ (sharedGeneralizations at: #Namespace) ownedRules
]

{ #category : #'accessing - Namespace' }
OPUMLOperation >> ownedRules: aConstraint [
	(sharedGeneralizations at: #Namespace) ownedRules: aConstraint
]

{ #category : #'accessing - TemplateableElement' }
OPUMLOperation >> ownedTemplateSignature [
	^ (sharedGeneralizations at: #TemplateableElement) ownedTemplateSignature
]

{ #category : #'accessing - TemplateableElement' }
OPUMLOperation >> ownedTemplateSignature: aTemplateSignature [
	(sharedGeneralizations at: #TemplateableElement) ownedTemplateSignature: aTemplateSignature
]

{ #category : #accessing }
OPUMLOperation >> owningClass [
	"The Class that owns this operation, if any."
	^ owningClass
]

{ #category : #accessing }
OPUMLOperation >> owningClass: aClass [
	"The Class that owns this operation, if any."
	owningClass := OPUMLToOneLink
		on: self identity
		update: #ownedOperations
		from: owningClass
		to: aClass
]

{ #category : #'accessing - ParameterableElement' }
OPUMLOperation >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLOperation >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : #'accessing - Namespace' }
OPUMLOperation >> packageImports [
	^ (sharedGeneralizations at: #Namespace) packageImports
]

{ #category : #'accessing - Namespace' }
OPUMLOperation >> packageImports: aPackageImport [
	(sharedGeneralizations at: #Namespace) packageImports: aPackageImport
]

{ #category : #accessing }
OPUMLOperation >> postconditions [
	"An optional set of Constraints specifying the state of the system when the Operation is completed."
	^ postconditions ifNil: [ postconditions := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLOperation >> postconditions: aConstraint [
	"An optional set of Constraints specifying the state of the system when the Operation is completed."
	postconditions := aConstraint
]

{ #category : #accessing }
OPUMLOperation >> preconditions [
	"An optional set of Constraints on the state of the system when the Operation is invoked."
	^ preconditions ifNil: [ preconditions := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLOperation >> preconditions: aConstraint [
	"An optional set of Constraints on the state of the system when the Operation is invoked."
	preconditions := aConstraint
]

{ #category : #'accessing - NamedElement' }
OPUMLOperation >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLOperation >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #accessing }
OPUMLOperation >> raisedExceptions [
	"The Types representing exceptions that may be raised during an invocation of this operation."
	^ raisedExceptions ifNil: [ raisedExceptions := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLOperation >> raisedExceptions: aType [
	"The Types representing exceptions that may be raised during an invocation of this operation."
	raisedExceptions := aType
]

{ #category : #'accessing - RedefinableElement' }
OPUMLOperation >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : #'accessing - RedefinableElement' }
OPUMLOperation >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : #accessing }
OPUMLOperation >> redefinedOperations [
	"The Operations that are redefined by this Operation."
	^ redefinedOperations ifNil: [ redefinedOperations := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLOperation >> redefinedOperations: anOperation [
	"The Operations that are redefined by this Operation."
	redefinedOperations := anOperation
]

{ #category : #'accessing - RedefinableElement' }
OPUMLOperation >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : #'accessing - RedefinableElement' }
OPUMLOperation >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : #'operations - stubs' }
OPUMLOperation >> returnResultStub [
	"The query returnResult() returns the set containing the return parameter of the Operation if one exists, otherwise, it returns an empty set"
	
	"{OCL} result = (ownedParameter->select (direction = ParameterDirectionKind::return))"
	
	self notYetImplemented

]

{ #category : #'accessing - TemplateableElement' }
OPUMLOperation >> templateBindings [
	^ (sharedGeneralizations at: #TemplateableElement) templateBindings
]

{ #category : #'accessing - TemplateableElement' }
OPUMLOperation >> templateBindings: aTemplateBinding [
	(sharedGeneralizations at: #TemplateableElement) templateBindings: aTemplateBinding
]

{ #category : #accessing }
OPUMLOperation >> templateParameter [
	"The OperationTemplateParameter that exposes this element as a formal parameter."
	^ templateParameter
]

{ #category : #accessing }
OPUMLOperation >> templateParameter: anOperationTemplateParameter [
	"The OperationTemplateParameter that exposes this element as a formal parameter."
	|anOldTemplateParameter|
	anOldTemplateParameter := templateParameter.
	templateParameter := anOperationTemplateParameter.
	OPUMLToOneLink
		on: self identity
		thisSelector: #templateParameter
		otherSelector: #parameteredElement
		from: anOldTemplateParameter
		to: templateParameter
]

{ #category : #accessing }
OPUMLOperation >> type [
	"The return type of the operation, if present. This information is derived from the return result for this Operation."
	^ type
]

{ #category : #accessing }
OPUMLOperation >> type: aType [
	"The return type of the operation, if present. This information is derived from the return result for this Operation."
	type := aType
]

{ #category : #'operations - stubs' }
OPUMLOperation >> typeStub [
	"If this operation has a return parameter, type equals the value of type for that parameter. Otherwise type has no value."
	
	"{OCL} result = (if returnResult()->notEmpty() then returnResult()->any(true).type else null endif)"
	
	self notYetImplemented

]

{ #category : #accessing }
OPUMLOperation >> upper [
	"The upper multiplicity of the return parameter, if present. This information is derived from the return result for this Operation."
	^ upper
]

{ #category : #accessing }
OPUMLOperation >> upper: anUnlimitedNatural [
	"The upper multiplicity of the return parameter, if present. This information is derived from the return result for this Operation."
	upper := anUnlimitedNatural
]

{ #category : #'operations - stubs' }
OPUMLOperation >> upperStub [
	"If this operation has a return parameter, upper equals the value of upper for that parameter. Otherwise upper has no value."
	
	"{OCL} result = (if returnResult()->notEmpty() then returnResult()->any(true).upper else null endif)"
	
	self notYetImplemented

]

{ #category : #'accessing - NamedElement' }
OPUMLOperation >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : #'accessing - NamedElement' }
OPUMLOperation >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
