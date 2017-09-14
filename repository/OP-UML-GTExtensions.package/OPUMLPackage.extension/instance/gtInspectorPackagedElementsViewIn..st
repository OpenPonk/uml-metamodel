*OP-UML-GTExtensions
gtInspectorPackagedElementsViewIn: aComposite
	<gtInspectorPresentationOrder: 10>
	aComposite roassal2
		title: 'Structural View';
		painting: [ :view | 
			| els lines |
			OPUMLRTInteractiveViewContext setOnView: view.
			view canvas theme: TRWhiteTheme new.
			view @ RTZoomableView @ RTDraggableView.
			els := RTGroup new.
			self packagedElements
				select: [ :each | each isKindOf: OPUMLEnumeration ]
				thenDo: [ :enum | 
					| el nameLbl attrComp stereotypeLabel |
					el := OPUmlClassifierShape new.
					el modelElement: enum.
					stereotypeLabel := OPUmlKeywordLabel new.
					stereotypeLabel text: [ :model | '«enumeration»' ].
					stereotypeLabel localStyle: (OPUmlStyle new fontSize: 9).
					stereotypeLabel owningElement: el.
					nameLbl := OPUmlNameLabel new.
					nameLbl modelElement: enum.
					nameLbl text: #name.
					nameLbl localStyle: (OPUmlStyle new fontSize: 11).
					nameLbl owningElement: el.
					attrComp := OPUmlCompartment new.
					attrComp owningElement: el.
					enum ownedLiterals
						do: [ :attr | 
							| attrLbl |
							(attrLbl := OPUmlLabel new)
								owningElement: attrComp;
								modelElement: attr;
								text: #name ].
					el renderIn: view.
					els add: el ].
			self packagedElements
				select: [ :each | each oclIsKindOf: #Package ]
				thenDo: [ :pkg | 
					| el |
					el := OPUmlPackageCompartmentableShape new.
					el style
						fillColor: Color white;
						fontColor: Color black.
					el modelElement: pkg.
					el renderIn: view.
					els add: el ].
			self packagedElements
				select: [ :each | 
					(each isKindOf: OPUMLClass) | (each isKindOf: OPUMLDataType)
						| (each isKindOf: OPUMLInterface) ]
				thenDo: [ :cls | 
					| el nameLbl attrComp |
					el := OPUmlClassifierShape new.
					el modelElement: cls.
					(cls isKindOf: OPUMLDataType) | (cls isKindOf: OPUMLInterface)
						ifTrue: [ | stereotypeLabel |
							stereotypeLabel := OPUmlKeywordLabel new.
							stereotypeLabel
								text: [ :model | '«' , (cls class name withoutPrefix: 'OPUML') uncapitalized , '»' ].
							stereotypeLabel localStyle: (OPUmlStyle new fontSize: 9).
							stereotypeLabel owningElement: el ].
					nameLbl := OPUmlNameLabel new.
					nameLbl modelElement: cls.
					nameLbl text: #name.
					nameLbl localStyle: (OPUmlStyle new fontSize: 11).
					nameLbl owningElement: el.
					attrComp := OPUmlCompartment new.
					attrComp owningElement: el.
					cls ownedAttributes
						do: [ :attr | 
							| attrLbl |
							(attrLbl := OPUmlLabel new)
								owningElement: attrComp;
								modelElement: attr;
								text: [ :model | model name , ' : ' , (model type ifNil: [ 'nil' ] ifNotNil: #name) ] ].
					el renderIn: view.
					els add: el ].
			els do: [ :each | each rtElement @ RTDraggable ].
			RTGridLayout on: els ]