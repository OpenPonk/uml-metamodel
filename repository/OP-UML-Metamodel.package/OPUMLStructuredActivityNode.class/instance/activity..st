accessing
activity: anActivity
	"The Activity immediately containing the StructuredActivityNode, if it is not contained in another StructuredActivityNode."
	activity := OPUMLToOneLink
		on: self
		update: #structuredNodes
		from: activity
		to: anActivity