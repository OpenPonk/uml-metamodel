"
An IntervalConstraint is a Constraint that is specified by an Interval.
"
Class {
	#name : 'OPUMLIntervalConstraint',
	#superclass : 'OPUMLElement',
	#instVars : [
		'specification'
	],
	#category : 'OpenPonk-UML-Metamodel-Values',
	#package : 'OpenPonk-UML-Metamodel',
	#tag : 'Values'
}

{ #category : 'accessing - NamedElement' }
OPUMLIntervalConstraint >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLIntervalConstraint >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'accessing - Constraint' }
OPUMLIntervalConstraint >> constrainedElements [
	^ (sharedGeneralizations at: #Constraint) constrainedElements
]

{ #category : 'accessing - Constraint' }
OPUMLIntervalConstraint >> constrainedElements: anElement [
	(sharedGeneralizations at: #Constraint) constrainedElements: anElement
]

{ #category : 'accessing - Constraint' }
OPUMLIntervalConstraint >> context [
	^ (sharedGeneralizations at: #Constraint) context
]

{ #category : 'accessing - Constraint' }
OPUMLIntervalConstraint >> context: aNamespace [
	(sharedGeneralizations at: #Constraint) context: aNamespace
]

{ #category : 'initialization' }
OPUMLIntervalConstraint >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Constraint.
	}
]

{ #category : 'initialization' }
OPUMLIntervalConstraint >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PackageableElement put: (OPUMLPackageableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Constraint put: (OPUMLConstraint newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #IntervalConstraint put: self.
]

{ #category : 'accessing - NamedElement' }
OPUMLIntervalConstraint >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLIntervalConstraint >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLIntervalConstraint >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLIntervalConstraint >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLIntervalConstraint >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLIntervalConstraint >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing - ParameterableElement' }
OPUMLIntervalConstraint >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : 'accessing - ParameterableElement' }
OPUMLIntervalConstraint >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : 'accessing - NamedElement' }
OPUMLIntervalConstraint >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLIntervalConstraint >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing' }
OPUMLIntervalConstraint >> specification [
	"The Interval that specifies the condition of the IntervalConstraint."
	^ specification
]

{ #category : 'accessing' }
OPUMLIntervalConstraint >> specification: anInterval [
	"The Interval that specifies the condition of the IntervalConstraint."
	specification := anInterval
]

{ #category : 'accessing - ParameterableElement' }
OPUMLIntervalConstraint >> templateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) templateParameter
]

{ #category : 'accessing - ParameterableElement' }
OPUMLIntervalConstraint >> templateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) templateParameter: aTemplateParameter
]

{ #category : 'accessing - PackageableElement' }
OPUMLIntervalConstraint >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : 'accessing - PackageableElement' }
OPUMLIntervalConstraint >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]
