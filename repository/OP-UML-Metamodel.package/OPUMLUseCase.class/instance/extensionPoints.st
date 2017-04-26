accessing
extensionPoints
	"The ExtensionPoints owned by this UseCase."
	^ extensionPoints ifNil: [ extensionPoints := OrderedCollection new ]