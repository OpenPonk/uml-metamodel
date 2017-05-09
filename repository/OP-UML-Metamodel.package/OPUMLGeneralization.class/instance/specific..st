accessing
specific: aClassifier
	"The specializing Classifier in the Generalization relationship."
	specific := OPUMLToOneLink
		on: self
		update: #generalizations
		from: specific
		to: aClassifier