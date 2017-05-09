accessing
activity: anActivity
	"The Activity containing the ActivityNode, if it is directly owned by an Activity."
	activity := OPUMLToOneLink
		on: self
		update: #nodes
		from: activity
		to: anActivity