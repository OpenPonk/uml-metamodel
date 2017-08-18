initialization
initializeSingleElement: each
	^ each
		when: TRMouseLeftClick
		do: [ :event | 
			each model
				ifNotNil: [ :m | 
					self presentation
						selection:
							((m respondsTo: #modelElement)
								ifTrue: [ m modelElement ]
								ifFalse: [ m model modelElement ]) ] ]