accessing
subpartitions
	"Other ActivityPartitions immediately contained in this ActivityPartition (as its subgroups)."
	^ subpartitions ifNil: [ subpartitions := OrderedCollection new ]