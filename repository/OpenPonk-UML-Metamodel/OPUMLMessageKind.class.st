"
This is an enumerated type that identifies the type of Message.
"
Class {
	#name : 'OPUMLMessageKind',
	#superclass : 'OPUMLEnumeration',
	#category : 'OpenPonk-UML-Metamodel-Interactions',
	#package : 'OpenPonk-UML-Metamodel',
	#tag : 'Interactions'
}

{ #category : 'accessing - enum' }
OPUMLMessageKind class >> complete [
	"sendEvent and receiveEvent are present"
	^ #complete

]

{ #category : 'accessing - enum' }
OPUMLMessageKind class >> found [
	"sendEvent absent and receiveEvent present"
	^ #found

]

{ #category : 'accessing - enum' }
OPUMLMessageKind class >> lost [
	"sendEvent present and receiveEvent absent"
	^ #lost

]

{ #category : 'accessing - enum' }
OPUMLMessageKind class >> unknown [
	"sendEvent and receiveEvent absent (should not appear)"
	^ #unknown

]

{ #category : 'accessing' }
OPUMLMessageKind >> complete [
	"sendEvent and receiveEvent are present"
	^ #complete

]

{ #category : 'accessing' }
OPUMLMessageKind >> found [
	"sendEvent absent and receiveEvent present"
	^ #found

]

{ #category : 'accessing' }
OPUMLMessageKind >> lost [
	"sendEvent present and receiveEvent absent"
	^ #lost

]

{ #category : 'accessing' }
OPUMLMessageKind >> unknown [
	"sendEvent and receiveEvent absent (should not appear)"
	^ #unknown

]
