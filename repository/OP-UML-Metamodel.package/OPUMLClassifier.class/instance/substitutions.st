accessing
substitutions
	"The Substitutions owned by this Classifier."
	^ substitutions ifNil: [ substitutions := OrderedCollection new ]