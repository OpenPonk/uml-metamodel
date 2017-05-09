accessing
superPartition: anActivityPartition
	"Other ActivityPartitions immediately containing this ActivityPartition (as its superGroups)."
	superPartition := OPUMLToOneLink
		on: self
		update: #subpartitions
		from: superPartition
		to: anActivityPartition