accessing
subvertexs
	"The set of Vertices that are owned by this Region."
	^ subvertexs ifNil: [ subvertexs := OrderedCollection new ]