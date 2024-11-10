"
An ExceptionHandler is an Element that specifies a handlerBody ExecutableNode to execute in case the specified exception occurs during the execution of the protected ExecutableNode.
"
Class {
	#name : 'OPUMLExceptionHandler',
	#superclass : 'OPUMLElement',
	#instVars : [
		'exceptionTypes',
		'handlerBody',
		'exceptionInput',
		'protectedNode'
	],
	#category : 'OpenPonk-UML-Metamodel-Activities',
	#package : 'OpenPonk-UML-Metamodel',
	#tag : 'Activities'
}

{ #category : 'accessing' }
OPUMLExceptionHandler >> exceptionInput [
	"An ObjectNode within the handlerBody. When the ExceptionHandler catches an exception, the exception token is placed on this ObjectNode, causing the handlerBody to execute."
	^ exceptionInput
]

{ #category : 'accessing' }
OPUMLExceptionHandler >> exceptionInput: anObjectNode [
	"An ObjectNode within the handlerBody. When the ExceptionHandler catches an exception, the exception token is placed on this ObjectNode, causing the handlerBody to execute."
	exceptionInput := anObjectNode
]

{ #category : 'accessing' }
OPUMLExceptionHandler >> exceptionTypes [
	"The Classifiers whose instances the ExceptionHandler catches as exceptions. If an exception occurs whose type is any exceptionType, the ExceptionHandler catches the exception and executes the handlerBody."
	^ exceptionTypes ifNil: [ exceptionTypes := OrderedCollection new ]
]

{ #category : 'accessing' }
OPUMLExceptionHandler >> exceptionTypes: aClassifier [
	"The Classifiers whose instances the ExceptionHandler catches as exceptions. If an exception occurs whose type is any exceptionType, the ExceptionHandler catches the exception and executes the handlerBody."
	exceptionTypes := aClassifier
]

{ #category : 'accessing' }
OPUMLExceptionHandler >> handlerBody [
	"An ExecutableNode that is executed if the ExceptionHandler catches an exception."
	^ handlerBody
]

{ #category : 'accessing' }
OPUMLExceptionHandler >> handlerBody: anExecutableNode [
	"An ExecutableNode that is executed if the ExceptionHandler catches an exception."
	handlerBody := anExecutableNode
]

{ #category : 'initialization' }
OPUMLExceptionHandler >> initializeDirectGeneralizations [
	directGeneralizations := {
	}
]

{ #category : 'initialization' }
OPUMLExceptionHandler >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ExceptionHandler put: self.
]

{ #category : 'accessing' }
OPUMLExceptionHandler >> protectedNode [
	"The ExecutableNode protected by the ExceptionHandler. If an exception propagates out of the protectedNode and has a type matching one of the exceptionTypes, then it is caught by this ExceptionHandler."
	^ protectedNode
]

{ #category : 'accessing' }
OPUMLExceptionHandler >> protectedNode: anExecutableNode [
	"The ExecutableNode protected by the ExceptionHandler. If an exception propagates out of the protectedNode and has a type matching one of the exceptionTypes, then it is caught by this ExceptionHandler."
	protectedNode := OPUMLToOneLink
		on: self identity
		update: #handlers
		from: protectedNode
		to: anExecutableNode
]
