"
A Namespace is an Element in a model that owns and/or imports a set of NamedElements that can be identified by name.
"
Class {
	#name : 'OPUMLNamespace',
	#superclass : 'OPUMLElement',
	#instVars : [
		'elementImports',
		'importedMembers',
		'members',
		'packageImports',
		'ownedRules',
		'ownedMembers'
	],
	#category : 'OP-UML-Metamodel-CommonStructure',
	#package : 'OP-UML-Metamodel',
	#tag : 'CommonStructure'
}

{ #category : 'accessing - NamedElement' }
OPUMLNamespace >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLNamespace >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'accessing' }
OPUMLNamespace >> elementImports [
	"References the ElementImports owned by the Namespace."
	^ elementImports ifNil: [ elementImports := OPUMLToManyLinks on: self identity opposite: #importingNamespace: ]
]

{ #category : 'accessing' }
OPUMLNamespace >> elementImports: anElementImport [
	"References the ElementImports owned by the Namespace."
	self elementImports
		removeAll;
		addAll: anElementImport
]

{ #category : 'operations - stubs' }
OPUMLNamespace >> excludeCollisionsStub [
	"The query excludeCollisions() excludes from a set of PackageableElements any that would not be distinguishable from each other in this Namespace."
	
	"{OCL} result = (imps->reject(imp1  | imps->exists(imp2 | not imp1.isDistinguishableFrom(imp2, self))))"
	
	self notYetImplemented

]

{ #category : 'operations - stubs' }
OPUMLNamespace >> getNamesOfMemberStub [
	"The query getNamesOfMember() gives a set of all of the names that a member would have in a Namespace, taking importing into account. In general a member can have multiple names in a Namespace if it is imported more than once with different aliases."
	
	"{OCL} result = (if self.ownedMember ->includes(element)
then Set{element.name}
else let elementImports : Set(ElementImport) = self.elementImport->select(ei | ei.importedElement = element) in
  if elementImports->notEmpty()
  then
     elementImports->collect(el | el.getName())->asSet()
  else 
     self.packageImport->select(pi | pi.importedPackage.visibleMembers().oclAsType(NamedElement)->includes(element))-> collect(pi | pi.importedPackage.getNamesOfMember(element))->asSet()
  endif
endif)"
	
	self notYetImplemented

]

{ #category : 'operations - stubs' }
OPUMLNamespace >> importMembersStub [
	"The query importMembers() defines which of a set of PackageableElements are actually imported into the Namespace. This excludes hidden ones, i.e., those which have names that conflict with names of ownedMembers, and it also excludes PackageableElements that would have the indistinguishable names when imported."
	
	"{OCL} result = (self.excludeCollisions(imps)->select(imp | self.ownedMember->forAll(mem | imp.isDistinguishableFrom(mem, self))))"
	
	self notYetImplemented

]

{ #category : 'operations - stubs' }
OPUMLNamespace >> importedMemberStub [
	"The importedMember property is derived as the PackageableElements that are members of this Namespace as a result of either PackageImports or ElementImports."
	
	"{OCL} result = (self.importMembers(elementImport.importedElement->asSet()->union(packageImport.importedPackage->collect(p | p.visibleMembers()))->asSet()))"
	
	self notYetImplemented

]

{ #category : 'accessing' }
OPUMLNamespace >> importedMembers [
	"References the PackageableElements that are members of this Namespace as a result of either PackageImports or ElementImports."
	^ importedMembers ifNil: [ importedMembers := OrderedCollection new ]
]

{ #category : 'accessing' }
OPUMLNamespace >> importedMembers: aPackageableElement [
	"References the PackageableElements that are members of this Namespace as a result of either PackageImports or ElementImports."
	importedMembers := aPackageableElement
]

{ #category : 'initialization' }
OPUMLNamespace >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #NamedElement.
	}
]

{ #category : 'initialization' }
OPUMLNamespace >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Namespace put: self.
]

{ #category : 'accessing' }
OPUMLNamespace >> members [
	"A collection of NamedElements identifiable within the Namespace, either by being owned or by being introduced by importing or inheritance."
	^ members ifNil: [ members := OrderedCollection new ]
]

{ #category : 'accessing' }
OPUMLNamespace >> members: aNamedElement [
	"A collection of NamedElements identifiable within the Namespace, either by being owned or by being introduced by importing or inheritance."
	members := aNamedElement
]

{ #category : 'operations - stubs' }
OPUMLNamespace >> membersAreDistinguishableStub [
	"The Boolean query membersAreDistinguishable() determines whether all of the Namespace's members are distinguishable within it."
	
	"{OCL} result = (member->forAll( memb |
   member->excluding(memb)->forAll(other |
       memb.isDistinguishableFrom(other, self))))"
	
	self notYetImplemented

]

{ #category : 'accessing - NamedElement' }
OPUMLNamespace >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLNamespace >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLNamespace >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLNamespace >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLNamespace >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLNamespace >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing' }
OPUMLNamespace >> ownedMembers [
	"A collection of NamedElements owned by the Namespace."
	^ ownedMembers ifNil: [ ownedMembers := OPUMLToManyLinks on: self identity opposite: #namespace: ]
]

{ #category : 'accessing' }
OPUMLNamespace >> ownedMembers: aNamedElement [
	"A collection of NamedElements owned by the Namespace."
	self ownedMembers
		removeAll;
		addAll: aNamedElement
]

{ #category : 'accessing' }
OPUMLNamespace >> ownedRules [
	"Specifies a set of Constraints owned by this Namespace."
	^ ownedRules ifNil: [ ownedRules := OPUMLToManyLinks on: self identity opposite: #context: ]
]

{ #category : 'accessing' }
OPUMLNamespace >> ownedRules: aConstraint [
	"Specifies a set of Constraints owned by this Namespace."
	self ownedRules
		removeAll;
		addAll: aConstraint
]

{ #category : 'accessing' }
OPUMLNamespace >> packageImports [
	"References the PackageImports owned by the Namespace."
	^ packageImports ifNil: [ packageImports := OPUMLToManyLinks on: self identity opposite: #importingNamespace: ]
]

{ #category : 'accessing' }
OPUMLNamespace >> packageImports: aPackageImport [
	"References the PackageImports owned by the Namespace."
	self packageImports
		removeAll;
		addAll: aPackageImport
]

{ #category : 'accessing - NamedElement' }
OPUMLNamespace >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLNamespace >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLNamespace >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : 'accessing - NamedElement' }
OPUMLNamespace >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
