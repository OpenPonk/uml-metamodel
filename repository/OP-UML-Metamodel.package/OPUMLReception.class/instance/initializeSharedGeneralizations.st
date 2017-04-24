initialization
initializeSharedGeneralizations
	sharedGeneralizations at: #Element put: (OPUMLElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Feature put: (OPUMLFeature newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Namespace put: (OPUMLNamespace newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #BehavioralFeature put: (OPUMLBehavioralFeature newOnShared: sharedGeneralizations).