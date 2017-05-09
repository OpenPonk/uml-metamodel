accessing
namespace: aNamespace
	"Specifies the Namespace that owns the NamedElement."
	namespace := OPUMLToOneLink
		on: self
		update: #ownedMembers
		from: namespace
		to: aNamespace