"
A NamedElement is an Element in a model that may have a name. The name may be given directly and/or via the use of a StringExpression.
"
Class {
	#name : #OPUMLNamedElement,
	#superclass : #OPUMLElement,
	#instVars : [
		'visibility',
		'qualifiedName',
		'nameExpression',
		'name',
		'clientDependencies',
		'namespace'
	],
	#category : 'OP-UML-Metamodel-CommonStructure'
}

{ #category : #'operations - stubs' }
OPUMLNamedElement >> allNamespacesStub [
	"The query allNamespaces() gives the sequence of Namespaces in which the NamedElement is nested, working outwards."
	
	"{OCL} result = (if owner.oclIsKindOf(TemplateParameter) and
  owner.oclAsType(TemplateParameter).signature.template.oclIsKindOf(Namespace) then
    let enclosingNamespace : Namespace =
      owner.oclAsType(TemplateParameter).signature.template.oclAsType(Namespace) in
        enclosingNamespace.allNamespaces()->prepend(enclosingNamespace)
else
  if namespace->isEmpty()
    then OrderedSet{}
  else
    namespace.allNamespaces()->prepend(namespace)
  endif
endif)"
	
	self notYetImplemented

]

{ #category : #'operations - stubs' }
OPUMLNamedElement >> allOwningPackagesStub [
	"The query allOwningPackages() returns the set of all the enclosing Namespaces of this NamedElement, working outwards, that are Packages, up to but not including the first such Namespace that is not a Package."
	
	"{OCL} result = (if namespace.oclIsKindOf(Package)
then
  let owningPackage : Package = namespace.oclAsType(Package) in
    owningPackage->union(owningPackage.allOwningPackages())
else
  null
endif)"
	
	self notYetImplemented

]

{ #category : #accessing }
OPUMLNamedElement >> clientDependencies [
	"Indicates the Dependencies that reference this NamedElement as a client."
	^ clientDependencies ifNil: [ clientDependencies := OPUMLManyToManyLinks on: self identity opposite: #clients ]
]

{ #category : #accessing }
OPUMLNamedElement >> clientDependencies: aDependency [
	"Indicates the Dependencies that reference this NamedElement as a client."
	self clientDependencies
		removeAll;
		addAll: aDependency
]

{ #category : #'operations - stubs' }
OPUMLNamedElement >> clientDependencyStub [
	""
	
	"{OCL} result = (Dependency.allInstances()->select(d | d.client->includes(self)))"
	
	self notYetImplemented

]

{ #category : #initialization }
OPUMLNamedElement >> initializeDirectGeneralizations [
	directGeneralizations := {
	}
]

{ #category : #initialization }
OPUMLNamedElement >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: self.
]

{ #category : #'operations - stubs' }
OPUMLNamedElement >> isDistinguishableFromStub [
	"The query isDistinguishableFrom() determines whether two NamedElements may logically co-exist within a Namespace. By default, two named elements are distinguishable if (a) they have types neither of which is a kind of the other or (b) they have different names."
	
	"{OCL} result = ((self.oclIsKindOf(n.oclType()) or n.oclIsKindOf(self.oclType())) implies
    ns.getNamesOfMember(self)->intersection(ns.getNamesOfMember(n))->isEmpty()
)"
	
	self notYetImplemented

]

{ #category : #accessing }
OPUMLNamedElement >> name [
	"The name of the NamedElement."
	^ name
]

{ #category : #accessing }
OPUMLNamedElement >> name: aString [
	"The name of the NamedElement."
	name := aString
]

{ #category : #accessing }
OPUMLNamedElement >> nameExpression [
	"The StringExpression used to define the name of this NamedElement."
	^ nameExpression
]

{ #category : #accessing }
OPUMLNamedElement >> nameExpression: aStringExpression [
	"The StringExpression used to define the name of this NamedElement."
	nameExpression := aStringExpression
]

{ #category : #accessing }
OPUMLNamedElement >> namespace [
	"Specifies the Namespace that owns the NamedElement."
	^ namespace
]

{ #category : #accessing }
OPUMLNamedElement >> namespace: aNamespace [
	"Specifies the Namespace that owns the NamedElement."
	namespace := OPUMLToOneLink
		on: self identity
		update: #ownedMembers
		from: namespace
		to: aNamespace
]

{ #category : #accessing }
OPUMLNamedElement >> qualifiedName [
	"A name that allows the NamedElement to be identified within a hierarchy of nested Namespaces. It is constructed from the names of the containing Namespaces starting at the root of the hierarchy and ending with the name of the NamedElement itself."
	^ qualifiedName
]

{ #category : #accessing }
OPUMLNamedElement >> qualifiedName: aString [
	"A name that allows the NamedElement to be identified within a hierarchy of nested Namespaces. It is constructed from the names of the containing Namespaces starting at the root of the hierarchy and ending with the name of the NamedElement itself."
	qualifiedName := aString
]

{ #category : #'operations - stubs' }
OPUMLNamedElement >> qualifiedNameStub [
	"When a NamedElement has a name, and all of its containing Namespaces have a name, the qualifiedName is constructed from the name of the NamedElement and the names of the containing Namespaces."
	
	"{OCL} result = (if self.name <> null and self.allNamespaces()->select( ns | ns.name=null )->isEmpty()
then 
    self.allNamespaces()->iterate( ns : Namespace; agg: String = self.name | ns.name.concat(self.separator()).concat(agg))
else
   null
endif)"
	
	self notYetImplemented

]

{ #category : #'operations - stubs' }
OPUMLNamedElement >> separatorStub [
	"The query separator() gives the string that is used to separate names when constructing a qualifiedName."
	
	"{OCL} result = ('::')"
	
	self notYetImplemented

]

{ #category : #accessing }
OPUMLNamedElement >> visibility [
	"Determines whether and how the NamedElement is visible outside its owning Namespace."
	^ visibility
]

{ #category : #accessing }
OPUMLNamedElement >> visibility: aVisibilityKind [
	"Determines whether and how the NamedElement is visible outside its owning Namespace."
	visibility := aVisibilityKind
]
