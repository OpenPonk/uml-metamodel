*OP-UML-GTExtensions
gtInspectorPackageViewIn: aComposite
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