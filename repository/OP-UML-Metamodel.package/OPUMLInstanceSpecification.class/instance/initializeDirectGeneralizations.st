initialization
initializeDirectGeneralizations
	generalizations := {
		sharedGeneralizations at: #DeploymentTarget.
		sharedGeneralizations at: #PackageableElement.
		sharedGeneralizations at: #DeployedArtifact.
	}