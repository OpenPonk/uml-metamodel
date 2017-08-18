*OP-UML-GTExtensions
gtInspectorPackageViewIn: aComposite
	<gtInspectorPresentationOrder: 11>
	| edges |
	aComposite roassal2
		title: 'Package View';
		painting: [ :view | 
			| els packages |
			OPUMLRTInteractiveViewContext setOnView: view.
			view canvas theme: TRWhiteTheme new.
			view @ RTZoomableView @ RTDraggableView.
			els := RTGroup new.
			edges := RTGroup new.
			packages := ({self} , (self packageImports collect: #importedPackage)) asSet.
			packages
				do: [ :each | 
					| el |
					el := OPUmlPackageCompartmentableShape new.
					el style
						fillColor: Color white;
						fontColor: Color black.
					el modelElement: each.
					el renderIn: view.
					els add: el ].
			self packageImports
				do: [ :each | 
					| from to edge |
					from := els detect: [ :e | e modelElement = each importingNamespace ].
					to := els detect: [ :e | e modelElement = each importedPackage ].
					edge := OPUmlEdge new.
					edge headDecorator: OPUmlEdgeMarkers simpleArrow.
					edge source: from.
					edge target: to.
					edge renderIn: view.
					edges add: edge ].
			RTTreeLayout on: els edges: (edges collect: #rtEdge) ]