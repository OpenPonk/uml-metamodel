"
A multiplicity is a definition of an inclusive interval of non-negative integers beginning with a lower bound and ending with a (possibly infinite) upper bound. A MultiplicityElement embeds this information to specify the allowable cardinalities for an instantiation of the Element.
"
Class {
	#name : 'OPUMLMultiplicityElement',
	#superclass : 'OPUMLElement',
	#instVars : [
		'upper',
		'isOrdered',
		'upperValue',
		'isUnique',
		'lowerValue',
		'lower'
	],
	#category : 'OpenPonk-UML-Metamodel-CommonStructure',
	#package : 'OpenPonk-UML-Metamodel',
	#tag : 'CommonStructure'
}

{ #category : 'operations - stubs' }
OPUMLMultiplicityElement >> compatibleWithStub [
	"The operation compatibleWith takes another multiplicity as input. It returns true if the other multiplicity is wider than, or the same as, self."
	
	"{OCL} result = ((other.lowerBound() <= self.lowerBound()) and ((other.upperBound() = *) or (self.upperBound() <= other.upperBound())))"
	
	self notYetImplemented

]

{ #category : 'operations - stubs' }
OPUMLMultiplicityElement >> includesMultiplicityStub [
	"The query includesMultiplicity() checks whether this multiplicity includes all the cardinalities allowed by the specified multiplicity."
	
	"pre: {OCL} self.upperBound()->notEmpty() and self.lowerBound()->notEmpty() and M.upperBound()->notEmpty() and M.lowerBound()->notEmpty()"
	"{OCL} result = ((self.lowerBound() <= M.lowerBound()) and (self.upperBound() >= M.upperBound()))"
	
	self notYetImplemented

]

{ #category : 'initialization' }
OPUMLMultiplicityElement >> initializeDirectGeneralizations [
	directGeneralizations := {
	}
]

{ #category : 'initialization' }
OPUMLMultiplicityElement >> initializeSharedGeneralizations [
	sharedGeneralizations at: #MultiplicityElement put: self.
]

{ #category : 'operations' }
OPUMLMultiplicityElement >> isMultivalued [
	"The query isMultivalued() checks whether this multiplicity has an upper bound greater than one."
	
	"pre: {OCL} upperBound()->notEmpty()"
	"{OCL} result = (upperBound() > 1)"
	
	^ self upperBound = '*' or: [ self upperBound > 1 ]

]

{ #category : 'operations - stubs' }
OPUMLMultiplicityElement >> isMultivaluedStub [
	"The query isMultivalued() checks whether this multiplicity has an upper bound greater than one."
	
	"pre: {OCL} upperBound()->notEmpty()"
	"{OCL} result = (upperBound() > 1)"
	
	self notYetImplemented

]

{ #category : 'accessing' }
OPUMLMultiplicityElement >> isOrdered [
	"For a multivalued multiplicity, this attribute specifies whether the values in an instantiation of this MultiplicityElement are sequentially ordered."
	^ isOrdered ifNil: [ isOrdered := false ]
]

{ #category : 'accessing' }
OPUMLMultiplicityElement >> isOrdered: aBoolean [
	"For a multivalued multiplicity, this attribute specifies whether the values in an instantiation of this MultiplicityElement are sequentially ordered."
	isOrdered := aBoolean
]

{ #category : 'operations - stubs' }
OPUMLMultiplicityElement >> isStub [
	"The operation is determines if the upper and lower bound of the ranges are the ones given."
	
	"{OCL} result = (lowerbound = self.lowerBound() and upperbound = self.upperBound())"
	
	self notYetImplemented

]

{ #category : 'accessing' }
OPUMLMultiplicityElement >> isUnique [
	"For a multivalued multiplicity, this attributes specifies whether the values in an instantiation of this MultiplicityElement are unique."
	^ isUnique ifNil: [ isUnique := true ]
]

{ #category : 'accessing' }
OPUMLMultiplicityElement >> isUnique: aBoolean [
	"For a multivalued multiplicity, this attributes specifies whether the values in an instantiation of this MultiplicityElement are unique."
	isUnique := aBoolean
]

{ #category : 'operations' }
OPUMLMultiplicityElement >> lower [
	"The derived lower attribute must equal the lowerBound."
	
	"{OCL} result = (lowerBound())"
	
	^ self lowerBound

]

{ #category : 'accessing' }
OPUMLMultiplicityElement >> lower: anInteger [
	"The lower bound of the multiplicity interval."
	lower := anInteger
]

{ #category : 'operations' }
OPUMLMultiplicityElement >> lowerBound [
	"The query lowerBound() returns the lower bound of the multiplicity as an integer, which is the integerValue of lowerValue, if this is given, and 1 otherwise."
	
	"{OCL} result = (if (lowerValue=null or lowerValue.integerValue()=null) then 1 else lowerValue.integerValue() endif)"
	
	^ (lowerValue isNil or: [ lowerValue integerValue isNil ])
		ifTrue: [ 1 ]
		ifFalse: [ lowerValue integerValue ]

]

{ #category : 'operations - stubs' }
OPUMLMultiplicityElement >> lowerBoundStub [
	"The query lowerBound() returns the lower bound of the multiplicity as an integer, which is the integerValue of lowerValue, if this is given, and 1 otherwise."
	
	"{OCL} result = (if (lowerValue=null or lowerValue.integerValue()=null) then 1 else lowerValue.integerValue() endif)"
	
	self notYetImplemented

]

{ #category : 'operations - stubs' }
OPUMLMultiplicityElement >> lowerStub [
	"The derived lower attribute must equal the lowerBound."
	
	"{OCL} result = (lowerBound())"
	
	self notYetImplemented

]

{ #category : 'accessing' }
OPUMLMultiplicityElement >> lowerValue [
	"The specification of the lower bound for this multiplicity."
	^ lowerValue
]

{ #category : 'accessing' }
OPUMLMultiplicityElement >> lowerValue: aValueSpecification [
	"The specification of the lower bound for this multiplicity."
	lowerValue := aValueSpecification
]

{ #category : 'operations' }
OPUMLMultiplicityElement >> upper [
	"The derived upper attribute must equal the upperBound."
	
	"{OCL} result = (upperBound())"
	
	^ self upperBound

]

{ #category : 'accessing' }
OPUMLMultiplicityElement >> upper: anUnlimitedNatural [
	"The upper bound of the multiplicity interval."
	upper := anUnlimitedNatural
]

{ #category : 'operations' }
OPUMLMultiplicityElement >> upperBound [
	"The query upperBound() returns the upper bound of the multiplicity for a bounded multiplicity as an unlimited natural, which is the unlimitedNaturalValue of upperValue, if given, and 1, otherwise."
	
	"{OCL} result = (if (upperValue=null or upperValue.unlimitedValue()=null) then 1 else upperValue.unlimitedValue() endif)"
	
	^ (upperValue isNil or: [ upperValue unlimitedValue isNil ])
		ifTrue: [ 1 ]
		ifFalse: [ upperValue unlimitedValue ]

]

{ #category : 'operations - stubs' }
OPUMLMultiplicityElement >> upperBoundStub [
	"The query upperBound() returns the upper bound of the multiplicity for a bounded multiplicity as an unlimited natural, which is the unlimitedNaturalValue of upperValue, if given, and 1, otherwise."
	
	"{OCL} result = (if (upperValue=null or upperValue.unlimitedValue()=null) then 1 else upperValue.unlimitedValue() endif)"
	
	self notYetImplemented

]

{ #category : 'operations - stubs' }
OPUMLMultiplicityElement >> upperStub [
	"The derived upper attribute must equal the upperBound."
	
	"{OCL} result = (upperBound())"
	
	self notYetImplemented

]

{ #category : 'accessing' }
OPUMLMultiplicityElement >> upperValue [
	"The specification of the upper bound for this multiplicity."
	^ upperValue
]

{ #category : 'accessing' }
OPUMLMultiplicityElement >> upperValue: aValueSpecification [
	"The specification of the upper bound for this multiplicity."
	upperValue := aValueSpecification
]
