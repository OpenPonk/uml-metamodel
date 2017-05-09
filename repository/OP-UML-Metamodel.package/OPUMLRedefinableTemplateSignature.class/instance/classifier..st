accessing
classifier: aClassifier
	"The Classifier that owns this RedefinableTemplateSignature."
	|anOldClassifier|
	anOldClassifier := classifier.
	classifier := aClassifier.
	OPUMLToOneLink
		on: self
		thisSelector: #classifier
		otherSelector: #ownedTemplateSignature
		from: anOldClassifier
		to: classifier