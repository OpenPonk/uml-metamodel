"
ConnectorKind is an enumeration that defines whether a Connector is an assembly or a delegation.
"
Class {
	#name : #OPUMLConnectorKind,
	#superclass : #OPUMLEnumeration,
	#category : 'OP-UML-Metamodel-StructuredClassifiers'
}

{ #category : #'accessing - enum' }
OPUMLConnectorKind class >> assembly [
	"Indicates that the Connector is an assembly Connector."
	^ #assembly

]

{ #category : #'accessing - enum' }
OPUMLConnectorKind class >> delegation [
	"Indicates that the Connector is a delegation Connector."
	^ #delegation

]

{ #category : #accessing }
OPUMLConnectorKind >> assembly [
	"Indicates that the Connector is an assembly Connector."
	^ #assembly

]

{ #category : #accessing }
OPUMLConnectorKind >> delegation [
	"Indicates that the Connector is a delegation Connector."
	^ #delegation

]
