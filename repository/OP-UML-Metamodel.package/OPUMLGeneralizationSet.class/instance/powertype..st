accessing
powertype: aClassifier
	"Designates the Classifier that is defined as the power type for the associated GeneralizationSet, if there is one."
	powertype := OPUMLToOneLink
		on: self
		update: #powertypeExtents
		from: powertype
		to: aClassifier