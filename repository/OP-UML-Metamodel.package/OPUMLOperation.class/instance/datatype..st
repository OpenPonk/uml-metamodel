accessing
datatype: aDataType
	"The DataType that owns this Operation, if any."
	datatype := OPUMLToOneLink
		on: self
		update: #ownedOperations
		from: datatype
		to: aDataType