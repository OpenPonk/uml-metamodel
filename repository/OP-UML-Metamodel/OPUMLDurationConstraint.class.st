"
A DurationConstraint is a Constraint that refers to a DurationInterval.
"
Class {
	#name : 'OPUMLDurationConstraint',
	#superclass : 'OPUMLElement',
	#instVars : [
		'firstEvents',
		'specification'
	],
	#category : 'OP-UML-Metamodel-Values',
	#package : 'OP-UML-Metamodel',
	#tag : 'Values'
}

{ #category : 'accessing - NamedElement' }
OPUMLDurationConstraint >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLDurationConstraint >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'accessing - Constraint' }
OPUMLDurationConstraint >> constrainedElements [
	^ (sharedGeneralizations at: #Constraint) constrainedElements
]

{ #category : 'accessing - Constraint' }
OPUMLDurationConstraint >> constrainedElements: anElement [
	(sharedGeneralizations at: #Constraint) constrainedElements: anElement
]

{ #category : 'accessing - Constraint' }
OPUMLDurationConstraint >> context [
	^ (sharedGeneralizations at: #Constraint) context
]

{ #category : 'accessing - Constraint' }
OPUMLDurationConstraint >> context: aNamespace [
	(sharedGeneralizations at: #Constraint) context: aNamespace
]

{ #category : 'accessing' }
OPUMLDurationConstraint >> firstEvents [
	"The value of firstEvent[i] is related to constrainedElement[i] (where i is 1 or 2). If firstEvent[i] is true, then the corresponding observation event is the first time instant the execution enters constrainedElement[i]. If firstEvent[i] is false, then the corresponding observation event is the last time instant the execution is within constrainedElement[i]."
	^ firstEvents ifNil: [ firstEvents := OrderedCollection new ]
]

{ #category : 'accessing' }
OPUMLDurationConstraint >> firstEvents: aBoolean [
	"The value of firstEvent[i] is related to constrainedElement[i] (where i is 1 or 2). If firstEvent[i] is true, then the corresponding observation event is the first time instant the execution enters constrainedElement[i]. If firstEvent[i] is false, then the corresponding observation event is the last time instant the execution is within constrainedElement[i]."
	firstEvents := aBoolean
]

{ #category : 'initialization' }
OPUMLDurationConstraint >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #IntervalConstraint.
	}
]

{ #category : 'initialization' }
OPUMLDurationConstraint >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PackageableElement put: (OPUMLPackageableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Constraint put: (OPUMLConstraint newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #IntervalConstraint put: (OPUMLIntervalConstraint newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #DurationConstraint put: self.
]

{ #category : 'accessing - NamedElement' }
OPUMLDurationConstraint >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLDurationConstraint >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLDurationConstraint >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLDurationConstraint >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLDurationConstraint >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLDurationConstraint >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing - ParameterableElement' }
OPUMLDurationConstraint >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : 'accessing - ParameterableElement' }
OPUMLDurationConstraint >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : 'accessing - NamedElement' }
OPUMLDurationConstraint >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLDurationConstraint >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing' }
OPUMLDurationConstraint >> specification [
	"The DurationInterval constraining the duration."
	^ specification
]

{ #category : 'accessing' }
OPUMLDurationConstraint >> specification: aDurationInterval [
	"The DurationInterval constraining the duration."
	specification := aDurationInterval
]

{ #category : 'accessing - ParameterableElement' }
OPUMLDurationConstraint >> templateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) templateParameter
]

{ #category : 'accessing - ParameterableElement' }
OPUMLDurationConstraint >> templateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) templateParameter: aTemplateParameter
]

{ #category : 'accessing - PackageableElement' }
OPUMLDurationConstraint >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : 'accessing - PackageableElement' }
OPUMLDurationConstraint >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]
