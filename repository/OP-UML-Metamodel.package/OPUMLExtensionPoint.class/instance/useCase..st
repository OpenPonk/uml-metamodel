accessing
useCase: anUseCase
	"The UseCase that owns this ExtensionPoint."
	useCase := OPUMLToOneLink
		on: self
		update: #extensionPoints
		from: useCase
		to: anUseCase