initialization
initializeSharedGeneralizations
	sharedGeneralizations at: #Element put: (OPUMLElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #MultiplicityElement put: (OPUMLMultiplicityElement newOnShared: sharedGeneralizations).