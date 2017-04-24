initialization
initializeSharedGeneralizations
	sharedGeneralizations at: #Element put: (OPUMLElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #LinkEndData put: (OPUMLLinkEndData newOnShared: sharedGeneralizations).