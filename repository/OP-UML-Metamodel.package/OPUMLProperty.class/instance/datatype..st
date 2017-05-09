accessing
datatype: aDataType
	"The DataType that owns this Property, if any."
	datatype := OPUMLToOneLink
		on: self
		update: #ownedAttributes
		from: datatype
		to: aDataType