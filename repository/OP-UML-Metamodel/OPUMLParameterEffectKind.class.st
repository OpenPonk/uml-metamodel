"
ParameterEffectKind is an Enumeration that indicates the effect of a Behavior on values passed in or out of its parameters.
"
Class {
	#name : 'OPUMLParameterEffectKind',
	#superclass : 'OPUMLEnumeration',
	#category : 'OP-UML-Metamodel-Classification',
	#package : 'OP-UML-Metamodel',
	#tag : 'Classification'
}

{ #category : 'accessing - enum' }
OPUMLParameterEffectKind class >> create [
	"Indicates that the behavior creates values."
	^ #create

]

{ #category : 'accessing - enum' }
OPUMLParameterEffectKind class >> delete [
	"Indicates objects that are values of the parameter do not exist after executions of the behavior are finished."
	^ #delete

]

{ #category : 'accessing - enum' }
OPUMLParameterEffectKind class >> read [
	"Indicates objects that are values of the parameter have values of their properties, or links in which they participate, or their classifiers retrieved during executions of the behavior."
	^ #read

]

{ #category : 'accessing - enum' }
OPUMLParameterEffectKind class >> update [
	"Indicates objects that are values of the parameter have values of their properties, or links in which they participate, or their classification changed during executions of the behavior."
	^ #update

]

{ #category : 'accessing' }
OPUMLParameterEffectKind >> create [
	"Indicates that the behavior creates values."
	^ #create

]

{ #category : 'accessing' }
OPUMLParameterEffectKind >> delete [
	"Indicates objects that are values of the parameter do not exist after executions of the behavior are finished."
	^ #delete

]

{ #category : 'accessing' }
OPUMLParameterEffectKind >> read [
	"Indicates objects that are values of the parameter have values of their properties, or links in which they participate, or their classifiers retrieved during executions of the behavior."
	^ #read

]

{ #category : 'accessing' }
OPUMLParameterEffectKind >> update [
	"Indicates objects that are values of the parameter have values of their properties, or links in which they participate, or their classification changed during executions of the behavior."
	^ #update

]
