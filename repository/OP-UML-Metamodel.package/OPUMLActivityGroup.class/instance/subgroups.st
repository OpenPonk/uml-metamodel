accessing
subgroups
	"Other ActivityGroups immediately contained in this ActivityGroup."
	^ subgroups ifNil: [ subgroups := OrderedCollection new ]