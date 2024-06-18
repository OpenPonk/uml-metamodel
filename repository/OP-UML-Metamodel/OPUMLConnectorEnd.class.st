"
A ConnectorEnd is an endpoint of a Connector, which attaches the Connector to a ConnectableElement.
"
Class {
	#name : 'OPUMLConnectorEnd',
	#superclass : 'OPUMLElement',
	#instVars : [
		'role',
		'definingEnd',
		'partWithPort'
	],
	#category : 'OP-UML-Metamodel-StructuredClassifiers',
	#package : 'OP-UML-Metamodel',
	#tag : 'StructuredClassifiers'
}

{ #category : 'accessing' }
OPUMLConnectorEnd >> definingEnd [
	"A derived property referencing the corresponding end on the Association which types the Connector owing this ConnectorEnd, if any. It is derived by selecting the end at the same place in the ordering of Association ends as this ConnectorEnd."
	^ definingEnd
]

{ #category : 'accessing' }
OPUMLConnectorEnd >> definingEnd: aProperty [
	"A derived property referencing the corresponding end on the Association which types the Connector owing this ConnectorEnd, if any. It is derived by selecting the end at the same place in the ordering of Association ends as this ConnectorEnd."
	definingEnd := aProperty
]

{ #category : 'operations - stubs' }
OPUMLConnectorEnd >> definingEndStub [
	"Derivation for ConnectorEnd::/definingEnd : Property"
	
	"{OCL} result = (if connector.type = null 
then
  null 
else
  let index : Integer = connector.end->indexOf(self) in
    connector.type.memberEnd->at(index)
endif)"
	
	self notYetImplemented

]

{ #category : 'initialization' }
OPUMLConnectorEnd >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #MultiplicityElement.
	}
]

{ #category : 'initialization' }
OPUMLConnectorEnd >> initializeSharedGeneralizations [
	sharedGeneralizations at: #MultiplicityElement put: (OPUMLMultiplicityElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ConnectorEnd put: self.
]

{ #category : 'operations - MultiplicityElement' }
OPUMLConnectorEnd >> isMultivalued [
	^ (sharedGeneralizations at: #MultiplicityElement) isMultivalued
]

{ #category : 'accessing - MultiplicityElement' }
OPUMLConnectorEnd >> isOrdered [
	^ (sharedGeneralizations at: #MultiplicityElement) isOrdered
]

{ #category : 'accessing - MultiplicityElement' }
OPUMLConnectorEnd >> isOrdered: aBoolean [
	(sharedGeneralizations at: #MultiplicityElement) isOrdered: aBoolean
]

{ #category : 'accessing - MultiplicityElement' }
OPUMLConnectorEnd >> isUnique [
	^ (sharedGeneralizations at: #MultiplicityElement) isUnique
]

{ #category : 'accessing - MultiplicityElement' }
OPUMLConnectorEnd >> isUnique: aBoolean [
	(sharedGeneralizations at: #MultiplicityElement) isUnique: aBoolean
]

{ #category : 'operations - MultiplicityElement' }
OPUMLConnectorEnd >> lower [
	^ (sharedGeneralizations at: #MultiplicityElement) lower
]

{ #category : 'accessing - MultiplicityElement' }
OPUMLConnectorEnd >> lower: anInteger [
	(sharedGeneralizations at: #MultiplicityElement) lower: anInteger
]

{ #category : 'operations - MultiplicityElement' }
OPUMLConnectorEnd >> lowerBound [
	^ (sharedGeneralizations at: #MultiplicityElement) lowerBound
]

{ #category : 'accessing - MultiplicityElement' }
OPUMLConnectorEnd >> lowerValue [
	^ (sharedGeneralizations at: #MultiplicityElement) lowerValue
]

{ #category : 'accessing - MultiplicityElement' }
OPUMLConnectorEnd >> lowerValue: aValueSpecification [
	(sharedGeneralizations at: #MultiplicityElement) lowerValue: aValueSpecification
]

{ #category : 'accessing' }
OPUMLConnectorEnd >> partWithPort [
	"Indicates the role of the internal structure of a Classifier with the Port to which the ConnectorEnd is attached."
	^ partWithPort
]

{ #category : 'accessing' }
OPUMLConnectorEnd >> partWithPort: aProperty [
	"Indicates the role of the internal structure of a Classifier with the Port to which the ConnectorEnd is attached."
	partWithPort := aProperty
]

{ #category : 'accessing' }
OPUMLConnectorEnd >> role [
	"The ConnectableElement attached at this ConnectorEnd. When an instance of the containing Classifier is created, a link may (depending on the multiplicities) be created to an instance of the Classifier that types this ConnectableElement."
	^ role
]

{ #category : 'accessing' }
OPUMLConnectorEnd >> role: aConnectableElement [
	"The ConnectableElement attached at this ConnectorEnd. When an instance of the containing Classifier is created, a link may (depending on the multiplicities) be created to an instance of the Classifier that types this ConnectableElement."
	role := OPUMLToOneLink
		on: self identity
		update: #ends
		from: role
		to: aConnectableElement
]

{ #category : 'operations - MultiplicityElement' }
OPUMLConnectorEnd >> upper [
	^ (sharedGeneralizations at: #MultiplicityElement) upper
]

{ #category : 'accessing - MultiplicityElement' }
OPUMLConnectorEnd >> upper: anUnlimitedNatural [
	(sharedGeneralizations at: #MultiplicityElement) upper: anUnlimitedNatural
]

{ #category : 'operations - MultiplicityElement' }
OPUMLConnectorEnd >> upperBound [
	^ (sharedGeneralizations at: #MultiplicityElement) upperBound
]

{ #category : 'accessing - MultiplicityElement' }
OPUMLConnectorEnd >> upperValue [
	^ (sharedGeneralizations at: #MultiplicityElement) upperValue
]

{ #category : 'accessing - MultiplicityElement' }
OPUMLConnectorEnd >> upperValue: aValueSpecification [
	(sharedGeneralizations at: #MultiplicityElement) upperValue: aValueSpecification
]
