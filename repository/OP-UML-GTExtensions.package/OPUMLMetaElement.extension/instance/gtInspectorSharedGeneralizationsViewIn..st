*OP-UML-GTExtensions
gtInspectorSharedGeneralizationsViewIn: aComposite
	<gtInspectorPresentationOrder: 9>
	aComposite roassal2
		title: 'Shared Generalizations View';
		painting: [ :v | 
			| b |
			b := RTMondrian new.
			b view: v.
			b shape labeledBox shape allShapes second text: #umlClassName.
			b shape if: [ :m | m = self ] fillColor: Color yellow.
			b nodes: sharedGeneralizations values.
			b edges shape doubleArrowedLine
				headStart: RTNoDecorationShape asHead;
				headEnd: RTEmptyNarrowArrow asTail.
			b edges connectFromAll: [ :each | each instVarNamed: #directGeneralizations ].
			b layout tree.
			b build.
			RTDominanceTreeLayout new
				verticalGap: 100;
				on: v elements.
			v elements do: [ :each | each translateBy: 0 @ 0 ].
			v @ RTDraggableView @ RTZoomableView.
			v ]