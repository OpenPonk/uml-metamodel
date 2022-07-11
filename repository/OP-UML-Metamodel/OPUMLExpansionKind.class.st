"
ExpansionKind is an enumeration type used to specify how an ExpansionRegion executes its contents.
"
Class {
	#name : #OPUMLExpansionKind,
	#superclass : #OPUMLEnumeration,
	#category : 'OP-UML-Metamodel-Actions'
}

{ #category : #'accessing - enum' }
OPUMLExpansionKind class >> iterative [
	"The content of the ExpansionRegion is executed iteratively for the elements of the input collections, in the order of the input elements, if the collections are ordered."
	^ #iterative

]

{ #category : #'accessing - enum' }
OPUMLExpansionKind class >> parallel [
	"The content of the ExpansionRegion is executed concurrently for the elements of the input collections."
	^ #parallel

]

{ #category : #'accessing - enum' }
OPUMLExpansionKind class >> stream [
	"A stream of input collection elements flows into a single execution of the content of the ExpansionRegion, in the order of the collection elements if the input collections are ordered."
	^ #stream

]

{ #category : #accessing }
OPUMLExpansionKind >> iterative [
	"The content of the ExpansionRegion is executed iteratively for the elements of the input collections, in the order of the input elements, if the collections are ordered."
	^ #iterative

]

{ #category : #accessing }
OPUMLExpansionKind >> parallel [
	"The content of the ExpansionRegion is executed concurrently for the elements of the input collections."
	^ #parallel

]

{ #category : #accessing }
OPUMLExpansionKind >> stream [
	"A stream of input collection elements flows into a single execution of the content of the ExpansionRegion, in the order of the collection elements if the input collections are ordered."
	^ #stream

]
