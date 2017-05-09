accessing
superGroup: anActivityGroup
	"The ActivityGroup immediately containing this ActivityGroup, if it is directly owned by another ActivityGroup."
	superGroup := OPUMLToOneLink
		on: self
		update: #subgroups
		from: superGroup
		to: anActivityGroup