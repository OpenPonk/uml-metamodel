"
An InteractionConstraint is a Boolean expression that guards an operand in a CombinedFragment.
"
Class {
	#name : 'OPUMLInteractionConstraint',
	#superclass : 'OPUMLElement',
	#instVars : [
		'minint',
		'maxint'
	],
	#category : 'OpenPonk-UML-Metamodel-Interactions',
	#package : 'OpenPonk-UML-Metamodel',
	#tag : 'Interactions'
}

{ #category : 'accessing - NamedElement' }
OPUMLInteractionConstraint >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLInteractionConstraint >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'accessing - Constraint' }
OPUMLInteractionConstraint >> constrainedElements [
	^ (sharedGeneralizations at: #Constraint) constrainedElements
]

{ #category : 'accessing - Constraint' }
OPUMLInteractionConstraint >> constrainedElements: anElement [
	(sharedGeneralizations at: #Constraint) constrainedElements: anElement
]

{ #category : 'accessing - Constraint' }
OPUMLInteractionConstraint >> context [
	^ (sharedGeneralizations at: #Constraint) context
]

{ #category : 'accessing - Constraint' }
OPUMLInteractionConstraint >> context: aNamespace [
	(sharedGeneralizations at: #Constraint) context: aNamespace
]

{ #category : 'initialization' }
OPUMLInteractionConstraint >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Constraint.
	}
]

{ #category : 'initialization' }
OPUMLInteractionConstraint >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PackageableElement put: (OPUMLPackageableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Constraint put: (OPUMLConstraint newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #InteractionConstraint put: self.
]

{ #category : 'accessing' }
OPUMLInteractionConstraint >> maxint [
	"The maximum number of iterations of a loop"
	^ maxint
]

{ #category : 'accessing' }
OPUMLInteractionConstraint >> maxint: aValueSpecification [
	"The maximum number of iterations of a loop"
	maxint := aValueSpecification
]

{ #category : 'accessing' }
OPUMLInteractionConstraint >> minint [
	"The minimum number of iterations of a loop"
	^ minint
]

{ #category : 'accessing' }
OPUMLInteractionConstraint >> minint: aValueSpecification [
	"The minimum number of iterations of a loop"
	minint := aValueSpecification
]

{ #category : 'accessing - NamedElement' }
OPUMLInteractionConstraint >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLInteractionConstraint >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLInteractionConstraint >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLInteractionConstraint >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLInteractionConstraint >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLInteractionConstraint >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing - ParameterableElement' }
OPUMLInteractionConstraint >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : 'accessing - ParameterableElement' }
OPUMLInteractionConstraint >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : 'accessing - NamedElement' }
OPUMLInteractionConstraint >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLInteractionConstraint >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing - Constraint' }
OPUMLInteractionConstraint >> specification [
	^ (sharedGeneralizations at: #Constraint) specification
]

{ #category : 'accessing - Constraint' }
OPUMLInteractionConstraint >> specification: aValueSpecification [
	(sharedGeneralizations at: #Constraint) specification: aValueSpecification
]

{ #category : 'accessing - ParameterableElement' }
OPUMLInteractionConstraint >> templateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) templateParameter
]

{ #category : 'accessing - ParameterableElement' }
OPUMLInteractionConstraint >> templateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) templateParameter: aTemplateParameter
]

{ #category : 'accessing - PackageableElement' }
OPUMLInteractionConstraint >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : 'accessing - PackageableElement' }
OPUMLInteractionConstraint >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]
