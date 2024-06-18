Extension { #name : 'OPUMLPackage' }

{ #category : '*OP-UML-GTExtensions' }
OPUMLPackage >> gtInspectorPackageViewIn: aComposite [
	<gtInspectorPresentationOrder: 11>
	^ aComposite roassal2
		title: 'Package View';
		painting: [ :v | 
			| pkgs comp els line |
			pkgs := Set new.
			pkgs add: self.
			pkgs addAll: (self packageMerges collect: #mergedPackage).
			pkgs addAll: (self packageImports collect: #importedPackage).
			pkgs addAll: (self profileApplications collect: #appliedProfile).
			comp := RTCompositeShape new.
			comp add: RTBox new.
			comp
				add:
					(RTLabel new text: [ :el | '«' , el umlClassName , '»' , String cr , el name ]).
			comp allOfSameSizeWithPadding.
			els := comp elementsOn: pkgs.
			els @ RTDraggable.
			v addAll: els.
			(line := RTStyledMultiLine new)
				head: RTSimpleArrow asHead;
				dashedLine.
			self packageImports
				do: [ :each | 
					v
						add:
							((line
								edgeFrom: (els elementFromModel: self)
								to: (els elementFromModel: each importedPackage)) model: each) ].
			self packageMerges
				do: [ :each | 
					v
						add:
							((line
								edgeFrom: (els elementFromModel: self)
								to: (els elementFromModel: each mergedPackage)) model: each) ].
			self profileApplications
				do: [ :each | 
					v
						add:
							((line
								edgeFrom: (els elementFromModel: self)
								to: (els elementFromModel: each appliedProfile)) model: each) ].
			v edges
				@
					(RTLabeled new
						text: [ :m | 
							String
								streamContents: [ :stream | 
									stream << '«'.
									(m oclIsKindOf: #ProfileApplication)
										ifTrue: [ stream << 'apply' ].
									(m oclIsKindOf: #PackageMerge)
										ifTrue: [ stream << 'merge' ].
									(m oclIsKindOf: #PackageImport)
										ifTrue: [ stream << 'import' ].
									stream << '»' ] ]).
"			RTDominanceTreeLayout new
				verticalGap: 100;
				verticallyReverse;
				on: els."
			RTGridLayout new gapSize: 100; on: els.
			v @ RTDraggableView @ RTZoomableView.
			v ]
]

{ #category : '*OP-UML-GTExtensions' }
OPUMLPackage >> gtInspectorPackagedElementsViewIn: aComposite [
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
]
