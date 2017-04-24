initialization
initializeSharedGeneralizations
	sharedGeneralizations at: #Element put: (OPUMLElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #TemplateParameter put: (OPUMLTemplateParameter newOnShared: sharedGeneralizations).