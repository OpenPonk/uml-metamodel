accessing
ends
	"A set of ConnectorEnds that attach to this ConnectableElement."
	^ ends ifNil: [ ends := OrderedCollection new ]