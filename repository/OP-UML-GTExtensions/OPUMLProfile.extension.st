Extension { #name : #OPUMLProfile }

{ #category : #'*OP-UML-GTExtensions' }
OPUMLProfile >> gtInspectorPackageViewIn: aComposite [
	<gtInspectorPresentationOrder: 11>
	^ (sharedGeneralizations at: #Package) gtInspectorPackageViewIn: aComposite
]

{ #category : #'*OP-UML-GTExtensions' }
OPUMLProfile >> gtInspectorPackagedElementsViewIn: aComposite [
	<gtInspectorPresentationOrder: 11>
	^ (sharedGeneralizations at: #Package) gtInspectorPackagedElementsViewIn: aComposite
]
