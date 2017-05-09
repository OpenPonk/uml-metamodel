accessing
extension: anUseCase
	"The UseCase that represents the extension and owns the Extend relationship."
	extension := OPUMLToOneLink
		on: self
		update: #extends
		from: extension
		to: anUseCase