initialization
initializeSharedGeneralizations
	sharedGeneralizations at: #Element put: (OPUMLElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #TypedElement put: (OPUMLTypedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ActivityNode put: (OPUMLActivityNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ObjectNode put: (OPUMLObjectNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #CentralBufferNode put: (OPUMLCentralBufferNode newOnShared: sharedGeneralizations).