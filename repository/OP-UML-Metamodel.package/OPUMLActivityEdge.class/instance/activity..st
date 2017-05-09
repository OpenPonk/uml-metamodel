accessing
activity: anActivity
	"The Activity containing the ActivityEdge, if it is directly owned by an Activity."
	activity := OPUMLToOneLink
		on: self
		update: #edges
		from: activity
		to: anActivity