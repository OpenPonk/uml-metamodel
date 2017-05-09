accessing
activityScope: anActivity
	"An Activity that owns the Variable."
	activityScope := OPUMLToOneLink
		on: self
		update: #variables
		from: activityScope
		to: anActivity