"
ParameterDirectionKind is an Enumeration that defines literals used to specify direction of parameters.
"
Class {
	#name : 'OPUMLParameterDirectionKind',
	#superclass : 'OPUMLEnumeration',
	#category : 'OP-UML-Metamodel-Classification',
	#package : 'OP-UML-Metamodel',
	#tag : 'Classification'
}

{ #category : 'accessing - enum' }
OPUMLParameterDirectionKind class >> in [
	"Indicates that Parameter values are passed in by the caller. "
	^ #in

]

{ #category : 'accessing - enum' }
OPUMLParameterDirectionKind class >> inout [
	"Indicates that Parameter values are passed in by the caller and (possibly different) values passed out to the caller."
	^ #inout

]

{ #category : 'accessing - enum' }
OPUMLParameterDirectionKind class >> out [
	"Indicates that Parameter values are passed out to the caller."
	^ #out

]

{ #category : 'accessing - enum' }
OPUMLParameterDirectionKind class >> return [
	"Indicates that Parameter values are passed as return values back to the caller."
	^ #return

]

{ #category : 'accessing' }
OPUMLParameterDirectionKind >> in [
	"Indicates that Parameter values are passed in by the caller. "
	^ #in

]

{ #category : 'accessing' }
OPUMLParameterDirectionKind >> inout [
	"Indicates that Parameter values are passed in by the caller and (possibly different) values passed out to the caller."
	^ #inout

]

{ #category : 'accessing' }
OPUMLParameterDirectionKind >> out [
	"Indicates that Parameter values are passed out to the caller."
	^ #out

]

{ #category : 'accessing' }
OPUMLParameterDirectionKind >> return [
	"Indicates that Parameter values are passed as return values back to the caller."
	^ #return

]
