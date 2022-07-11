"
A PackageableElement is a NamedElement that may be owned directly by a Package. A PackageableElement is also able to serve as the parameteredElement of a TemplateParameter.
"
Class {
	#name : #OPUMLPackageableElement,
	#superclass : #OPUMLElement,
	#instVars : [
		'visibility'
	],
	#category : 'OP-UML-Metamodel-CommonStructure'
}

{ #category : #'accessing - NamedElement' }
OPUMLPackageableElement >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLPackageableElement >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #initialization }
OPUMLPackageableElement >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #ParameterableElement.
		sharedGeneralizations at: #NamedElement.
	}
]

{ #category : #initialization }
OPUMLPackageableElement >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PackageableElement put: self.
]

{ #category : #'accessing - NamedElement' }
OPUMLPackageableElement >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLPackageableElement >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLPackageableElement >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLPackageableElement >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLPackageableElement >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLPackageableElement >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'accessing - ParameterableElement' }
OPUMLPackageableElement >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLPackageableElement >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : #'accessing - NamedElement' }
OPUMLPackageableElement >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLPackageableElement >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #'accessing - ParameterableElement' }
OPUMLPackageableElement >> templateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) templateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLPackageableElement >> templateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) templateParameter: aTemplateParameter
]

{ #category : #accessing }
OPUMLPackageableElement >> visibility [
	"A PackageableElement must have a visibility specified if it is owned by a Namespace. The default visibility is public."
	^ visibility ifNil: [ visibility := OPUMLVisibilityKind new public ]
]

{ #category : #accessing }
OPUMLPackageableElement >> visibility: aVisibilityKind [
	"A PackageableElement must have a visibility specified if it is owned by a Namespace. The default visibility is public."
	visibility := aVisibilityKind
]
