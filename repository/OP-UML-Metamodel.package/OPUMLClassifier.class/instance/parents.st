operations
parents
	"The query parents() gives all of the immediate ancestors of a generalized Classifier."
	
	"{OCL} result = (generalization.general->asSet())"
	
	^ (self generalizations collect: #general) asSet