Extension { #name : #OPUMLModel }

{ #category : #'*OP-UML-GTExtensions' }
OPUMLModel >> gtInspectorPackageViewIn: aComposite [
	<gtInspectorPresentationOrder: 11>
	^ (sharedGeneralizations at: #Package) gtInspectorPackageViewIn: aComposite
]

{ #category : #'*OP-UML-GTExtensions' }
OPUMLModel >> gtInspectorPackagedElementsViewIn: aComposite [
	<gtInspectorPresentationOrder: 11>
	^ (sharedGeneralizations at: #Package) gtInspectorPackagedElementsViewIn: aComposite
]
