"
Unit tests verifying copying semantics, OCL classifier name resolution, and navigability queries on generated UML metamodel elements.
"
Class {
	#name : 'OPUMLMetaElementTest',
	#superclass : 'TestCase',
	#category : 'OpenPonk-UML-Meta-Tests-Models',
	#package : 'OpenPonk-UML-Meta-Tests',
	#tag : 'Models'
}

{ #category : 'tests' }
OPUMLMetaElementTest >> testOclClassifierNameFromAndUmlClassName [

	| umlClass |
	umlClass := OPUMLClass new
		            name: 'Customer';
		            yourself.
	self assert: umlClass metaElementClass identicalTo: OPUMLMetaElement.
	self assert: umlClass umlClassPrefix equals: 'OPUML'.
	self assert: umlClass umlClassName equals: 'Class'.
	self assert: (umlClass oclClassifierNameFrom: OPUMLClass) equals: 'Class'.
	self assert: (umlClass oclClassifierNameFrom: umlClass) equals: 'Customer'.
	self assert: (umlClass oclClassifierNameFrom: 'NamedElement') equals: 'NamedElement'.
	self should: [ umlClass oclClassifierNameFrom: 123 ] raise: Error
]

{ #category : 'tests' }
OPUMLMetaElementTest >> testPostCopyClonesSharedAndDirectGeneralizations [

	| original copy comment originalNamedSlice copyNamedSlice |
	original := OPUMLClass new
		            name: 'Customer';
		            isAbstract: true;
		            yourself.
	comment := OPUMLComment new
		           body: 'Doc';
		           yourself.
	original ownedComments add: comment.
	original tagAt: #custom put: 'v1'.
	original uuid.

	copy := original copy.
	self deny: copy identicalTo: original.
	self deny: copy uuid equals: original uuid.
	self assert: copy identity identicalTo: copy.
	self deny: (copy instVarNamed: #sharedGeneralizations) identicalTo: (original instVarNamed: #sharedGeneralizations).

	originalNamedSlice := original oclAsType: #NamedElement.
	copyNamedSlice := copy oclAsType: #NamedElement.
	self deny: copyNamedSlice identicalTo: originalNamedSlice.
	self assert: copyNamedSlice identity identicalTo: copy.
	self
		assert: ((copy instVarNamed: #directGeneralizations) allSatisfy: [ :each |
				 (copy instVarNamed: #sharedGeneralizations) values includes: each ])
		description: 'Direct generalizations on copy must reference slices in the copy sharedGeneralizations'.

	copy name: 'RenamedCustomer'.
	copy isAbstract: false.
	self assert: original name equals: 'Customer'.
	self assert: copy name equals: 'RenamedCustomer'.
	self assert: original isAbstract description: 'Mutating copy isAbstract must not mutate original'.
	self deny: copy isAbstract description: 'Copy isAbstract must reflect updated value'.

	copy ownedComments add: (OPUMLComment new
			 body: 'Extra';
			 yourself).
	self assert: original ownedComments size equals: 1.
	self assert: copy ownedComments size equals: 2.

	self assert: (copy tagAt: #custom) equals: 'v1'.
	copy tagAt: #custom put: 'v2'.
	self assert: (original tagAt: #custom) equals: 'v1'
]

{ #category : 'tests' }
OPUMLMetaElementTest >> testPostCopyDetachesToManyAndManyToManyLinks [

	| originalClass copyClass attribute extraAttribute originalSet copySet generalization extraGeneralization |
	originalClass := OPUMLClass new
		                 name: 'Order';
		                 yourself.
	attribute := OPUMLProperty new
		             name: 'id';
		             yourself.
	originalClass ownedAttributes add: attribute.

	copyClass := originalClass copy.
	self assertEmpty: copyClass ownedAttributes.
	self assert: copyClass ownedAttributes owner identicalTo: copyClass.
	self assert: originalClass ownedAttributes asArray equals: { attribute }.
	self assert: attribute owningClass identicalTo: originalClass.

	extraAttribute := OPUMLProperty new
		                  name: 'total';
		                  yourself.
	copyClass ownedAttributes add: extraAttribute.
	self assert: originalClass ownedAttributes asArray equals: { attribute }.
	self assert: copyClass ownedAttributes asArray equals: { extraAttribute }.
	self assert: extraAttribute owningClass identicalTo: copyClass.

	originalSet := OPUMLGeneralizationSet new
		               name: 'KindSet';
		               yourself.
	generalization := OPUMLGeneralization new.
	originalSet generalizations add: generalization.

	copySet := originalSet copy.
	self assertEmpty: copySet generalizations.
	self assert: copySet generalizations owner identicalTo: copySet.
	self assert: originalSet generalizations asArray equals: { generalization }.
	self assert: generalization generalizationSets asArray equals: { originalSet }.

	extraGeneralization := OPUMLGeneralization new.
	copySet generalizations add: extraGeneralization.
	self assert: originalSet generalizations asArray equals: { generalization }.
	self assert: copySet generalizations asArray equals: { extraGeneralization }.
	self assert: extraGeneralization generalizationSets asArray equals: { copySet }
]

{ #category : 'tests' }
OPUMLMetaElementTest >> testPostCopyDetachesToOneLinksWithoutBreakingReassignment [

	| ownerClass targetClass association originalProperty copiedProperty |
	ownerClass := OPUMLClass new
		              name: 'Source';
		              yourself.
	targetClass := OPUMLClass new
		               name: 'Target';
		               yourself.
	association := OPUMLAssociation new.
	originalProperty := OPUMLProperty new
		                    name: 'attr';
		                    yourself.
	ownerClass ownedAttributes add: originalProperty.
	association memberEnds add: originalProperty.

	copiedProperty := originalProperty copy.
	self assert: copiedProperty owningClass identicalTo: nil.
	self assert: copiedProperty association identicalTo: nil.
	self assert: originalProperty owningClass identicalTo: ownerClass.
	self assert: originalProperty association identicalTo: association.

	copiedProperty owningClass: targetClass.
	self assert: copiedProperty owningClass identicalTo: targetClass.
	self assert: targetClass ownedAttributes asArray equals: { copiedProperty }.
	self assert: ownerClass ownedAttributes asArray equals: { originalProperty }
]

{ #category : 'tests' }
OPUMLMetaElementTest >> testPostCopyPreservesUnidirectionalReferences [

	| typeClass originalProperty copiedProperty |
	typeClass := OPUMLClass new
		             name: 'String';
		             yourself.
	originalProperty := OPUMLProperty new
		                    name: 'label';
		                    type: typeClass;
		                    yourself.

	copiedProperty := originalProperty copy.
	self assert: copiedProperty type identicalTo: typeClass.
	self assert: copiedProperty name equals: 'label'
]

{ #category : 'tests' }
OPUMLMetaElementTest >> testPostCopyStripsAppliedStereotypesAndExtensionTags [

	| original copy |
	original := OPUMLClass new.
	original tagAt: #custom put: 'kept'.
	original tagAt: #appliedStereotypes put: (OrderedCollection with: #fakeStereo).
	original tagAt: #extension_Demo put: #fakeExtension.

	copy := original copy.
	self assert: (copy tagAt: #custom) equals: 'kept'.
	self deny: (copy hasTagAt: #appliedStereotypes) description: 'Copied element must not keep appliedStereotypes'.
	self deny: (copy hasTagAt: #extension_Demo) description: 'Copied element must not keep extension_* tags'
]

{ #category : 'tests' }
OPUMLMetaElementTest >> testPropertyIsNavigableWithNilAssociationAndOwningClass [

	| property |
	property := OPUMLProperty new.
	self
		deny: property isNavigable
		description: 'Detached OPUMLProperty with nil owningClass and nil association must not be navigable'
]
