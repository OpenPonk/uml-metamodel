accessing
package: aPackage
	"Specifies the owning Package of this Type, if any."
	package := OPUMLToOneLink
		on: self
		update: #ownedTypes
		from: package
		to: aPackage