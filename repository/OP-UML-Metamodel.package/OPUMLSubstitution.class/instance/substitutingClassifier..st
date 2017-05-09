accessing
substitutingClassifier: aClassifier
	"Instances of the substituting classifier are runtime substitutable where instances of the contract classifier are expected."
	substitutingClassifier := OPUMLToOneLink
		on: self
		update: #substitutions
		from: substitutingClassifier
		to: aClassifier