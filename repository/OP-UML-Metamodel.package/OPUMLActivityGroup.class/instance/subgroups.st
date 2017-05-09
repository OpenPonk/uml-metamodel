accessing
subgroups
	"Other ActivityGroups immediately contained in this ActivityGroup."
	^ subgroups ifNil: [ subgroups := OPUMLToManyLinks on: self opposite: #superGroup: ]