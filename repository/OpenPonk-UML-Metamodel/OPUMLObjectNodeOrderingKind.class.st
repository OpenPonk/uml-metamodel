"
ObjectNodeOrderingKind is an enumeration indicating queuing order for offering the tokens held by an ObjectNode.
"
Class {
	#name : 'OPUMLObjectNodeOrderingKind',
	#superclass : 'OPUMLEnumeration',
	#category : 'OpenPonk-UML-Metamodel-Activities',
	#package : 'OpenPonk-UML-Metamodel',
	#tag : 'Activities'
}

{ #category : 'accessing - enum' }
OPUMLObjectNodeOrderingKind class >> FIFO [
	"Indicates that tokens are queued in a first in, first out manner."
	^ #FIFO

]

{ #category : 'accessing - enum' }
OPUMLObjectNodeOrderingKind class >> LIFO [
	"Indicates that tokens are queued in a last in, first out manner."
	^ #LIFO

]

{ #category : 'accessing - enum' }
OPUMLObjectNodeOrderingKind class >> ordered [
	"Indicates that tokens are ordered."
	^ #ordered

]

{ #category : 'accessing - enum' }
OPUMLObjectNodeOrderingKind class >> unordered [
	"Indicates that tokens are unordered."
	^ #unordered

]

{ #category : 'accessing' }
OPUMLObjectNodeOrderingKind >> FIFO [
	"Indicates that tokens are queued in a first in, first out manner."
	^ #FIFO

]

{ #category : 'accessing' }
OPUMLObjectNodeOrderingKind >> LIFO [
	"Indicates that tokens are queued in a last in, first out manner."
	^ #LIFO

]

{ #category : 'accessing' }
OPUMLObjectNodeOrderingKind >> ordered [
	"Indicates that tokens are ordered."
	^ #ordered

]

{ #category : 'accessing' }
OPUMLObjectNodeOrderingKind >> unordered [
	"Indicates that tokens are unordered."
	^ #unordered

]
