accessing
powertypeExtents
	"The GeneralizationSet of which this Classifier is a power type."
	^ powertypeExtents ifNil: [ powertypeExtents := OPUMLToManyLinks on: self opposite: #powertype: ]