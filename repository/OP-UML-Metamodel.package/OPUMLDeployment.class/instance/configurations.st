accessing
configurations
	"The specification of properties that parameterize the deployment and execution of one or more Artifacts."
	^ configurations ifNil: [ configurations := OrderedCollection new ]