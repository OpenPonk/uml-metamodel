"
A TimeConstraint is a Constraint that refers to a TimeInterval.
"
Class {
	#name : 'OPUMLTimeConstraint',
	#superclass : 'OPUMLElement',
	#instVars : [
		'firstEvent',
		'specification'
	],
	#category : 'OpenPonk-UML-Metamodel-Values',
	#package : 'OpenPonk-UML-Metamodel',
	#tag : 'Values'
}

{ #category : 'accessing - NamedElement' }
OPUMLTimeConstraint >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLTimeConstraint >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'accessing - Constraint' }
OPUMLTimeConstraint >> constrainedElements [
	^ (sharedGeneralizations at: #Constraint) constrainedElements
]

{ #category : 'accessing - Constraint' }
OPUMLTimeConstraint >> constrainedElements: anElement [
	(sharedGeneralizations at: #Constraint) constrainedElements: anElement
]

{ #category : 'accessing - Constraint' }
OPUMLTimeConstraint >> context [
	^ (sharedGeneralizations at: #Constraint) context
]

{ #category : 'accessing - Constraint' }
OPUMLTimeConstraint >> context: aNamespace [
	(sharedGeneralizations at: #Constraint) context: aNamespace
]

{ #category : 'accessing' }
OPUMLTimeConstraint >> firstEvent [
	"The value of firstEvent is related to the constrainedElement. If firstEvent is true, then the corresponding observation event is the first time instant the execution enters the constrainedElement. If firstEvent is false, then the corresponding observation event is the last time instant the execution is within the constrainedElement."
	^ firstEvent ifNil: [ firstEvent := true ]
]

{ #category : 'accessing' }
OPUMLTimeConstraint >> firstEvent: aBoolean [
	"The value of firstEvent is related to the constrainedElement. If firstEvent is true, then the corresponding observation event is the first time instant the execution enters the constrainedElement. If firstEvent is false, then the corresponding observation event is the last time instant the execution is within the constrainedElement."
	firstEvent := aBoolean
]

{ #category : 'initialization' }
OPUMLTimeConstraint >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #IntervalConstraint.
	}
]

{ #category : 'initialization' }
OPUMLTimeConstraint >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PackageableElement put: (OPUMLPackageableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Constraint put: (OPUMLConstraint newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #IntervalConstraint put: (OPUMLIntervalConstraint newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #TimeConstraint put: self.
]

{ #category : 'accessing - NamedElement' }
OPUMLTimeConstraint >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLTimeConstraint >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLTimeConstraint >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLTimeConstraint >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLTimeConstraint >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLTimeConstraint >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing - ParameterableElement' }
OPUMLTimeConstraint >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : 'accessing - ParameterableElement' }
OPUMLTimeConstraint >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : 'accessing - NamedElement' }
OPUMLTimeConstraint >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLTimeConstraint >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing' }
OPUMLTimeConstraint >> specification [
	"TheTimeInterval constraining the duration."
	^ specification
]

{ #category : 'accessing' }
OPUMLTimeConstraint >> specification: aTimeInterval [
	"TheTimeInterval constraining the duration."
	specification := aTimeInterval
]

{ #category : 'accessing - ParameterableElement' }
OPUMLTimeConstraint >> templateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) templateParameter
]

{ #category : 'accessing - ParameterableElement' }
OPUMLTimeConstraint >> templateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) templateParameter: aTemplateParameter
]

{ #category : 'accessing - PackageableElement' }
OPUMLTimeConstraint >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : 'accessing - PackageableElement' }
OPUMLTimeConstraint >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]
