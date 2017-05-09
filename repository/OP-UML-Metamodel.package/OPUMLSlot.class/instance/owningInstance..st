accessing
owningInstance: anInstanceSpecification
	"The InstanceSpecification that owns this Slot."
	owningInstance := OPUMLToOneLink
		on: self
		update: #slots
		from: owningInstance
		to: anInstanceSpecification