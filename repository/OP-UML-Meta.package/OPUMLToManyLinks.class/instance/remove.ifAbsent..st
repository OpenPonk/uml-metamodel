removing
remove: oldObject ifAbsent: anExceptionBlock
	(collection includes: oldObject)
		ifFalse: [ ^ anExceptionBlock value ].
	self removeOppositeFrom: oldObject.
	collection remove: oldObject ifAbsent: [  ]