accessing
isReentrant
	"Tells whether the Behavior can be invoked while it is still executing from a previous invocation."
	^ isReentrant ifNil: [ isReentrant := true ]