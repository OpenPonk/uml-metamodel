"
A ProtocolStateMachine can be redefined into a more specific ProtocolStateMachine or into behavioral StateMachine. ProtocolConformance declares that the specific ProtocolStateMachine specifies a protocol that conforms to the general ProtocolStateMachine or that the specific behavioral StateMachine abides by the protocol of the general ProtocolStateMachine.
"
Class {
	#name : #OPUMLProtocolConformance,
	#superclass : #OPUMLElement,
	#instVars : [
		'specificMachine',
		'generalMachine'
	],
	#category : 'OP-UML-Metamodel-StateMachines'
}

{ #category : #accessing }
OPUMLProtocolConformance >> generalMachine [
	"Specifies the ProtocolStateMachine to which the specific ProtocolStateMachine conforms."
	^ generalMachine
]

{ #category : #accessing }
OPUMLProtocolConformance >> generalMachine: aProtocolStateMachine [
	"Specifies the ProtocolStateMachine to which the specific ProtocolStateMachine conforms."
	generalMachine := aProtocolStateMachine
]

{ #category : #initialization }
OPUMLProtocolConformance >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #DirectedRelationship.
	}
]

{ #category : #initialization }
OPUMLProtocolConformance >> initializeSharedGeneralizations [
	sharedGeneralizations at: #Relationship put: (OPUMLRelationship newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #DirectedRelationship put: (OPUMLDirectedRelationship newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ProtocolConformance put: self.
]

{ #category : #'accessing - Relationship' }
OPUMLProtocolConformance >> relatedElements [
	^ (sharedGeneralizations at: #Relationship) relatedElements
]

{ #category : #'accessing - Relationship' }
OPUMLProtocolConformance >> relatedElements: anElement [
	(sharedGeneralizations at: #Relationship) relatedElements: anElement
]

{ #category : #'accessing - DirectedRelationship' }
OPUMLProtocolConformance >> sources [
	^ (sharedGeneralizations at: #DirectedRelationship) sources
]

{ #category : #'accessing - DirectedRelationship' }
OPUMLProtocolConformance >> sources: anElement [
	(sharedGeneralizations at: #DirectedRelationship) sources: anElement
]

{ #category : #accessing }
OPUMLProtocolConformance >> specificMachine [
	"Specifies the ProtocolStateMachine which conforms to the general ProtocolStateMachine."
	^ specificMachine
]

{ #category : #accessing }
OPUMLProtocolConformance >> specificMachine: aProtocolStateMachine [
	"Specifies the ProtocolStateMachine which conforms to the general ProtocolStateMachine."
	specificMachine := OPUMLToOneLink
		on: self identity
		update: #conformances
		from: specificMachine
		to: aProtocolStateMachine
]

{ #category : #'accessing - DirectedRelationship' }
OPUMLProtocolConformance >> targets [
	^ (sharedGeneralizations at: #DirectedRelationship) targets
]

{ #category : #'accessing - DirectedRelationship' }
OPUMLProtocolConformance >> targets: anElement [
	(sharedGeneralizations at: #DirectedRelationship) targets: anElement
]
