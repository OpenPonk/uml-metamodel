"
A Classifier represents a classification of instances according to their Features.
"
Class {
	#name : #OPUMLClassifier,
	#superclass : #OPUMLElement,
	#instVars : [
		'collaborationUses',
		'inheritedMembers',
		'features',
		'attributes',
		'powertypeExtents',
		'ownedUseCases',
		'ownedTemplateSignature',
		'templateParameter',
		'isFinalSpecialization',
		'generals',
		'representation',
		'substitutions',
		'useCases',
		'isAbstract',
		'generalizations',
		'redefinedClassifiers'
	],
	#category : 'OP-UML-Metamodel-Classification'
}

{ #category : #operations }
OPUMLClassifier >> allAttributes [
	"The query allAttributes gives an ordered set of all owned and inherited attributes of the Classifier. All owned attributes appear before any inherited attributes, and the attributes inherited from any more specific parent Classifier appear before those of any more general parent Classifier. However, if the Classifier has multiple immediate parents, then the relative ordering of the sets of attributes from those parents is not defined."
	
	"{OCL} result = (attribute->asSequence()->union(parents()->asSequence().allAttributes())->select(p | member->includes(p))->asOrderedSet())"
	
	| allAttributes |
	allAttributes := OrderedCollection new.
	allAttributes addAll: self attributes.
	sharedGeneralizations
		at: #Class
		ifPresent: [ :cls | allAttributes addAll: cls ownedAttributes ].
	self parents do: [ :each | allAttributes addAll: each allAttributes ].
	^ (allAttributes collect: [ :each | each -> 1 ]) asOrderedDictionary keys

]

{ #category : #'operations - stubs' }
OPUMLClassifier >> allAttributesStub [
	"The query allAttributes gives an ordered set of all owned and inherited attributes of the Classifier. All owned attributes appear before any inherited attributes, and the attributes inherited from any more specific parent Classifier appear before those of any more general parent Classifier. However, if the Classifier has multiple immediate parents, then the relative ordering of the sets of attributes from those parents is not defined."
	
	"{OCL} result = (attribute->asSequence()->union(parents()->asSequence().allAttributes())->select(p | member->includes(p))->asOrderedSet())"
	
	self notYetImplemented

]

{ #category : #'operations - stubs' }
OPUMLClassifier >> allFeaturesStub [
	"The query allFeatures() gives all of the Features in the namespace of the Classifier. In general, through mechanisms such as inheritance, this will be a larger set than feature."
	
	"{OCL} result = (member->select(oclIsKindOf(Feature))->collect(oclAsType(Feature))->asSet())"
	
	self notYetImplemented

]

{ #category : #operations }
OPUMLClassifier >> allParents [
	"The query allParents() gives all of the direct and indirect ancestors of a generalized Classifier."
	
	"{OCL} result = (parents()->union(parents()->collect(allParents())->asSet()))"
	
	^ self parents union: (self parents flatCollect: #allParents)

]

{ #category : #'operations - stubs' }
OPUMLClassifier >> allParentsStub [
	"The query allParents() gives all of the direct and indirect ancestors of a generalized Classifier."
	
	"{OCL} result = (parents()->union(parents()->collect(allParents())->asSet()))"
	
	self notYetImplemented

]

{ #category : #'operations - stubs' }
OPUMLClassifier >> allRealizedInterfacesStub [
	"The Interfaces realized by this Classifier and all of its generalizations"
	
	"{OCL} result = (directlyRealizedInterfaces()->union(self.allParents()->collect(directlyRealizedInterfaces()))->asSet())"
	
	self notYetImplemented

]

{ #category : #'operations - stubs' }
OPUMLClassifier >> allSlottableFeaturesStub [
	"All StructuralFeatures related to the Classifier that may have Slots, including direct attributes, inherited attributes, private attributes in generalizations, and memberEnds of Associations, but excluding redefined StructuralFeatures."
	
	"{OCL} result = (member->select(oclIsKindOf(StructuralFeature))->
  collect(oclAsType(StructuralFeature))->
   union(self.inherit(self.allParents()->collect(p | p.attribute)->asSet())->
     collect(oclAsType(StructuralFeature)))->asSet())"
	
	self notYetImplemented

]

{ #category : #'operations - stubs' }
OPUMLClassifier >> allUsedInterfacesStub [
	"The Interfaces used by this Classifier and all of its generalizations"
	
	"{OCL} result = (directlyUsedInterfaces()->union(self.allParents()->collect(directlyUsedInterfaces()))->asSet())"
	
	self notYetImplemented

]

{ #category : #accessing }
OPUMLClassifier >> attributes [
	"All of the Properties that are direct (i.e., not inherited or imported) attributes of the Classifier."
	^ attributes ifNil: [ attributes := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLClassifier >> attributes: aProperty [
	"All of the Properties that are direct (i.e., not inherited or imported) attributes of the Classifier."
	attributes := aProperty
]

{ #category : #'accessing - NamedElement' }
OPUMLClassifier >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLClassifier >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #accessing }
OPUMLClassifier >> collaborationUses [
	"The CollaborationUses owned by the Classifier."
	^ collaborationUses ifNil: [ collaborationUses := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLClassifier >> collaborationUses: aCollaborationUse [
	"The CollaborationUses owned by the Classifier."
	collaborationUses := aCollaborationUse
]

{ #category : #'operations - stubs' }
OPUMLClassifier >> conformsToStub [
	"The query conformsTo() gives true for a Classifier that defines a type that conforms to another. This is used, for example, in the specification of signature conformance for operations."
	
	"{OCL} result = (if other.oclIsKindOf(Classifier) then
  let otherClassifier : Classifier = other.oclAsType(Classifier) in
    self = otherClassifier or allParents()->includes(otherClassifier)
else
  false
endif)"
	
	self notYetImplemented

]

{ #category : #'operations - stubs' }
OPUMLClassifier >> directlyRealizedInterfacesStub [
	"The Interfaces directly realized by this Classifier"
	
	"{OCL} result = ((clientDependency->
  select(oclIsKindOf(Realization) and supplier->forAll(oclIsKindOf(Interface))))->
      collect(supplier.oclAsType(Interface))->asSet())"
	
	self notYetImplemented

]

{ #category : #'operations - stubs' }
OPUMLClassifier >> directlyUsedInterfacesStub [
	"The Interfaces directly used by this Classifier"
	
	"{OCL} result = ((supplierDependency->
  select(oclIsKindOf(Usage) and client->forAll(oclIsKindOf(Interface))))->
    collect(client.oclAsType(Interface))->asSet())"
	
	self notYetImplemented

]

{ #category : #'accessing - Namespace' }
OPUMLClassifier >> elementImports [
	^ (sharedGeneralizations at: #Namespace) elementImports
]

{ #category : #'accessing - Namespace' }
OPUMLClassifier >> elementImports: anElementImport [
	(sharedGeneralizations at: #Namespace) elementImports: anElementImport
]

{ #category : #accessing }
OPUMLClassifier >> features [
	"Specifies each Feature directly defined in the classifier. Note that there may be members of the Classifier that are of the type Feature but are not included, e.g., inherited features."
	^ features ifNil: [ features := OPUMLToManyLinks on: self identity opposite: #featuringClassifier: ]
]

{ #category : #accessing }
OPUMLClassifier >> features: aFeature [
	"Specifies each Feature directly defined in the classifier. Note that there may be members of the Classifier that are of the type Feature but are not included, e.g., inherited features."
	self features
		removeAll;
		addAll: aFeature
]

{ #category : #operations }
OPUMLClassifier >> general [
	"The general Classifiers are the ones referenced by the Generalization relationships."
	
	"{OCL} result = (parents())"
	
	^ self parents

]

{ #category : #'operations - stubs' }
OPUMLClassifier >> generalStub [
	"The general Classifiers are the ones referenced by the Generalization relationships."
	
	"{OCL} result = (parents())"
	
	self notYetImplemented

]

{ #category : #accessing }
OPUMLClassifier >> generalizations [
	"The Generalization relationships for this Classifier. These Generalizations navigate to more general Classifiers in the generalization hierarchy."
	^ generalizations ifNil: [ generalizations := OPUMLToManyLinks on: self identity opposite: #specific: ]
]

{ #category : #accessing }
OPUMLClassifier >> generalizations: aGeneralization [
	"The Generalization relationships for this Classifier. These Generalizations navigate to more general Classifiers in the generalization hierarchy."
	self generalizations
		removeAll;
		addAll: aGeneralization
]

{ #category : #accessing }
OPUMLClassifier >> generals [
	"The generalizing Classifiers for this Classifier."
	^ generals ifNil: [ generals := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLClassifier >> generals: aClassifier [
	"The generalizing Classifiers for this Classifier."
	generals := aClassifier
]

{ #category : #'operations - stubs' }
OPUMLClassifier >> hasVisibilityOfStub [
	"The query hasVisibilityOf() determines whether a NamedElement is visible in the classifier. Non-private members are visible. It is only called when the argument is something owned by a parent."
	
	"pre: {OCL} allParents()->including(self)->collect(member)->includes(n)"
	"{OCL} result = (n.visibility <> VisibilityKind::private)"
	
	self notYetImplemented

]

{ #category : #'accessing - Namespace' }
OPUMLClassifier >> importedMembers [
	^ (sharedGeneralizations at: #Namespace) importedMembers
]

{ #category : #'accessing - Namespace' }
OPUMLClassifier >> importedMembers: aPackageableElement [
	(sharedGeneralizations at: #Namespace) importedMembers: aPackageableElement
]

{ #category : #'operations - stubs' }
OPUMLClassifier >> inheritStub [
	"The query inherit() defines how to inherit a set of elements passed as its argument.  It excludes redefined elements from the result."
	
	"{OCL} result = (inhs->reject(inh |
  inh.oclIsKindOf(RedefinableElement) and
  ownedMember->select(oclIsKindOf(RedefinableElement))->
    select(redefinedElement->includes(inh.oclAsType(RedefinableElement)))
       ->notEmpty()))"
	
	self notYetImplemented

]

{ #category : #'operations - stubs' }
OPUMLClassifier >> inheritableMembersStub [
	"The query inheritableMembers() gives all of the members of a Classifier that may be inherited in one of its descendants, subject to whatever visibility restrictions apply."
	
	"pre: {OCL} c.allParents()->includes(self)"
	"{OCL} result = (member->select(m | c.hasVisibilityOf(m)))"
	
	self notYetImplemented

]

{ #category : #'operations - stubs' }
OPUMLClassifier >> inheritedMemberStub [
	"The inheritedMember association is derived by inheriting the inheritable members of the parents."
	
	"{OCL} result = (inherit(parents()->collect(inheritableMembers(self))->asSet()))"
	
	self notYetImplemented

]

{ #category : #accessing }
OPUMLClassifier >> inheritedMembers [
	"All elements inherited by this Classifier from its general Classifiers."
	^ inheritedMembers ifNil: [ inheritedMembers := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLClassifier >> inheritedMembers: aNamedElement [
	"All elements inherited by this Classifier from its general Classifiers."
	inheritedMembers := aNamedElement
]

{ #category : #initialization }
OPUMLClassifier >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Namespace.
		sharedGeneralizations at: #Type.
		sharedGeneralizations at: #TemplateableElement.
		sharedGeneralizations at: #RedefinableElement.
	}
]

{ #category : #initialization }
OPUMLClassifier >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PackageableElement put: (OPUMLPackageableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Namespace put: (OPUMLNamespace newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Type put: (OPUMLType newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #TemplateableElement put: (OPUMLTemplateableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Classifier put: self.
]

{ #category : #accessing }
OPUMLClassifier >> isAbstract [
	"If true, the Classifier can only be instantiated by instantiating one of its specializations. An abstract Classifier is intended to be used by other Classifiers e.g., as the target of Associations or Generalizations."
	^ isAbstract ifNil: [ isAbstract := false ]
]

{ #category : #accessing }
OPUMLClassifier >> isAbstract: aBoolean [
	"If true, the Classifier can only be instantiated by instantiating one of its specializations. An abstract Classifier is intended to be used by other Classifiers e.g., as the target of Associations or Generalizations."
	isAbstract := aBoolean
]

{ #category : #accessing }
OPUMLClassifier >> isFinalSpecialization [
	"If true, the Classifier cannot be specialized."
	^ isFinalSpecialization ifNil: [ isFinalSpecialization := false ]
]

{ #category : #accessing }
OPUMLClassifier >> isFinalSpecialization: aBoolean [
	"If true, the Classifier cannot be specialized."
	isFinalSpecialization := aBoolean
]

{ #category : #'accessing - RedefinableElement' }
OPUMLClassifier >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : #'accessing - RedefinableElement' }
OPUMLClassifier >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : #'operations - stubs' }
OPUMLClassifier >> isSubstitutableForStub [
	""
	
	"{OCL} result = (substitution.contract->includes(contract))"
	
	self notYetImplemented

]

{ #category : #'operations - stubs' }
OPUMLClassifier >> isTemplateStub [
	"The query isTemplate() returns whether this Classifier is actually a template."
	
	"{OCL} result = (ownedTemplateSignature <> null or general->exists(g | g.isTemplate()))"
	
	self notYetImplemented

]

{ #category : #'operations - stubs' }
OPUMLClassifier >> maySpecializeTypeStub [
	"The query maySpecializeType() determines whether this classifier may have a generalization relationship to classifiers of the specified type. By default a classifier may specialize classifiers of the same or a more general type. It is intended to be redefined by classifiers that have different specialization constraints."
	
	"{OCL} result = (self.oclIsKindOf(c.oclType()))"
	
	self notYetImplemented

]

{ #category : #'accessing - Namespace' }
OPUMLClassifier >> members [
	^ (sharedGeneralizations at: #Namespace) members
]

{ #category : #'accessing - Namespace' }
OPUMLClassifier >> members: aNamedElement [
	(sharedGeneralizations at: #Namespace) members: aNamedElement
]

{ #category : #'accessing - NamedElement' }
OPUMLClassifier >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLClassifier >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLClassifier >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLClassifier >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLClassifier >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLClassifier >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'accessing - Namespace' }
OPUMLClassifier >> ownedMembers [
	^ (sharedGeneralizations at: #Namespace) ownedMembers
]

{ #category : #'accessing - Namespace' }
OPUMLClassifier >> ownedMembers: aNamedElement [
	(sharedGeneralizations at: #Namespace) ownedMembers: aNamedElement
]

{ #category : #'accessing - Namespace' }
OPUMLClassifier >> ownedRules [
	^ (sharedGeneralizations at: #Namespace) ownedRules
]

{ #category : #'accessing - Namespace' }
OPUMLClassifier >> ownedRules: aConstraint [
	(sharedGeneralizations at: #Namespace) ownedRules: aConstraint
]

{ #category : #accessing }
OPUMLClassifier >> ownedTemplateSignature [
	"The optional RedefinableTemplateSignature specifying the formal template parameters."
	^ ownedTemplateSignature
]

{ #category : #accessing }
OPUMLClassifier >> ownedTemplateSignature: aRedefinableTemplateSignature [
	"The optional RedefinableTemplateSignature specifying the formal template parameters."
	|anOldOwnedTemplateSignature|
	anOldOwnedTemplateSignature := ownedTemplateSignature.
	ownedTemplateSignature := aRedefinableTemplateSignature.
	OPUMLToOneLink
		on: self identity
		thisSelector: #ownedTemplateSignature
		otherSelector: #classifier
		from: anOldOwnedTemplateSignature
		to: ownedTemplateSignature
]

{ #category : #accessing }
OPUMLClassifier >> ownedUseCases [
	"The UseCases owned by this classifier."
	^ ownedUseCases ifNil: [ ownedUseCases := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLClassifier >> ownedUseCases: anUseCase [
	"The UseCases owned by this classifier."
	ownedUseCases := anUseCase
]

{ #category : #'accessing - ParameterableElement' }
OPUMLClassifier >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLClassifier >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : #'accessing - Type' }
OPUMLClassifier >> package [
	^ (sharedGeneralizations at: #Type) package
]

{ #category : #'accessing - Type' }
OPUMLClassifier >> package: aPackage [
	(sharedGeneralizations at: #Type) package: aPackage
]

{ #category : #'accessing - Namespace' }
OPUMLClassifier >> packageImports [
	^ (sharedGeneralizations at: #Namespace) packageImports
]

{ #category : #'accessing - Namespace' }
OPUMLClassifier >> packageImports: aPackageImport [
	(sharedGeneralizations at: #Namespace) packageImports: aPackageImport
]

{ #category : #operations }
OPUMLClassifier >> parents [
	"The query parents() gives all of the immediate ancestors of a generalized Classifier."
	
	"{OCL} result = (generalization.general->asSet())"
	
	^ (self generalizations collect: #general) asSet

]

{ #category : #'operations - stubs' }
OPUMLClassifier >> parentsStub [
	"The query parents() gives all of the immediate ancestors of a generalized Classifier."
	
	"{OCL} result = (generalization.general->asSet())"
	
	self notYetImplemented

]

{ #category : #accessing }
OPUMLClassifier >> powertypeExtents [
	"The GeneralizationSet of which this Classifier is a power type."
	^ powertypeExtents ifNil: [ powertypeExtents := OPUMLToManyLinks on: self identity opposite: #powertype: ]
]

{ #category : #accessing }
OPUMLClassifier >> powertypeExtents: aGeneralizationSet [
	"The GeneralizationSet of which this Classifier is a power type."
	self powertypeExtents
		removeAll;
		addAll: aGeneralizationSet
]

{ #category : #'accessing - NamedElement' }
OPUMLClassifier >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLClassifier >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #accessing }
OPUMLClassifier >> redefinedClassifiers [
	"The Classifiers redefined by this Classifier."
	^ redefinedClassifiers ifNil: [ redefinedClassifiers := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLClassifier >> redefinedClassifiers: aClassifier [
	"The Classifiers redefined by this Classifier."
	redefinedClassifiers := aClassifier
]

{ #category : #'accessing - RedefinableElement' }
OPUMLClassifier >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : #'accessing - RedefinableElement' }
OPUMLClassifier >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : #'accessing - RedefinableElement' }
OPUMLClassifier >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : #'accessing - RedefinableElement' }
OPUMLClassifier >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : #accessing }
OPUMLClassifier >> representation [
	"A CollaborationUse which indicates the Collaboration that represents this Classifier."
	^ representation
]

{ #category : #accessing }
OPUMLClassifier >> representation: aCollaborationUse [
	"A CollaborationUse which indicates the Collaboration that represents this Classifier."
	representation := aCollaborationUse
]

{ #category : #accessing }
OPUMLClassifier >> substitutions [
	"The Substitutions owned by this Classifier."
	^ substitutions ifNil: [ substitutions := OPUMLToManyLinks on: self identity opposite: #substitutingClassifier: ]
]

{ #category : #accessing }
OPUMLClassifier >> substitutions: aSubstitution [
	"The Substitutions owned by this Classifier."
	self substitutions
		removeAll;
		addAll: aSubstitution
]

{ #category : #'accessing - TemplateableElement' }
OPUMLClassifier >> templateBindings [
	^ (sharedGeneralizations at: #TemplateableElement) templateBindings
]

{ #category : #'accessing - TemplateableElement' }
OPUMLClassifier >> templateBindings: aTemplateBinding [
	(sharedGeneralizations at: #TemplateableElement) templateBindings: aTemplateBinding
]

{ #category : #accessing }
OPUMLClassifier >> templateParameter [
	"TheClassifierTemplateParameter that exposes this element as a formal parameter."
	^ templateParameter
]

{ #category : #accessing }
OPUMLClassifier >> templateParameter: aClassifierTemplateParameter [
	"TheClassifierTemplateParameter that exposes this element as a formal parameter."
	|anOldTemplateParameter|
	anOldTemplateParameter := templateParameter.
	templateParameter := aClassifierTemplateParameter.
	OPUMLToOneLink
		on: self identity
		thisSelector: #templateParameter
		otherSelector: #parameteredElement
		from: anOldTemplateParameter
		to: templateParameter
]

{ #category : #accessing }
OPUMLClassifier >> useCases [
	"The set of UseCases for which this Classifier is the subject."
	^ useCases ifNil: [ useCases := OPUMLManyToManyLinks on: self identity opposite: #subjects ]
]

{ #category : #accessing }
OPUMLClassifier >> useCases: anUseCase [
	"The set of UseCases for which this Classifier is the subject."
	self useCases
		removeAll;
		addAll: anUseCase
]

{ #category : #'accessing - PackageableElement' }
OPUMLClassifier >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : #'accessing - PackageableElement' }
OPUMLClassifier >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]
