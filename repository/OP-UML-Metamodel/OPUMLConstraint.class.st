"
A Constraint is a condition or restriction expressed in natural language text or in a machine readable language for the purpose of declaring some of the semantics of an Element or set of Elements.
"
Class {
	#name : #OPUMLConstraint,
	#superclass : #OPUMLElement,
	#instVars : [
		'context',
		'constrainedElements',
		'specification'
	],
	#category : 'OP-UML-Metamodel-CommonStructure'
}

{ #category : #'accessing - NamedElement' }
OPUMLConstraint >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLConstraint >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #accessing }
OPUMLConstraint >> constrainedElements [
	"The ordered set of Elements referenced by this Constraint."
	^ constrainedElements ifNil: [ constrainedElements := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLConstraint >> constrainedElements: anElement [
	"The ordered set of Elements referenced by this Constraint."
	constrainedElements := anElement
]

{ #category : #accessing }
OPUMLConstraint >> context [
	"Specifies the Namespace that owns the Constraint."
	^ context
]

{ #category : #accessing }
OPUMLConstraint >> context: aNamespace [
	"Specifies the Namespace that owns the Constraint."
	context := OPUMLToOneLink
		on: self identity
		update: #ownedRules
		from: context
		to: aNamespace
]

{ #category : #initialization }
OPUMLConstraint >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #PackageableElement.
	}
]

{ #category : #initialization }
OPUMLConstraint >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PackageableElement put: (OPUMLPackageableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Constraint put: self.
]

{ #category : #'accessing - NamedElement' }
OPUMLConstraint >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLConstraint >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLConstraint >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLConstraint >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLConstraint >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLConstraint >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'accessing - ParameterableElement' }
OPUMLConstraint >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLConstraint >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : #'accessing - NamedElement' }
OPUMLConstraint >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLConstraint >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #accessing }
OPUMLConstraint >> specification [
	"A condition that must be true when evaluated in order for the Constraint to be satisfied."
	^ specification
]

{ #category : #accessing }
OPUMLConstraint >> specification: aValueSpecification [
	"A condition that must be true when evaluated in order for the Constraint to be satisfied."
	specification := aValueSpecification
]

{ #category : #'accessing - ParameterableElement' }
OPUMLConstraint >> templateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) templateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLConstraint >> templateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) templateParameter: aTemplateParameter
]

{ #category : #'accessing - PackageableElement' }
OPUMLConstraint >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : #'accessing - PackageableElement' }
OPUMLConstraint >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]
