"
AggregationKind is an Enumeration for specifying the kind of aggregation of a Property.
"
Class {
	#name : 'OPUMLAggregationKind',
	#superclass : 'OPUMLEnumeration',
	#category : 'OpenPonk-UML-Metamodel-Classification',
	#package : 'OpenPonk-UML-Metamodel',
	#tag : 'Classification'
}

{ #category : 'accessing - enum' }
OPUMLAggregationKind class >> composite [
	"Indicates that the Property is aggregated compositely, i.e., the composite object has responsibility for the existence and storage of the composed objects (parts)."
	^ #composite

]

{ #category : 'accessing - enum' }
OPUMLAggregationKind class >> none [
	"Indicates that the Property has no aggregation."
	^ #none

]

{ #category : 'accessing - enum' }
OPUMLAggregationKind class >> shared [
	"Indicates that the Property has shared aggregation."
	^ #shared

]

{ #category : 'accessing' }
OPUMLAggregationKind >> composite [
	"Indicates that the Property is aggregated compositely, i.e., the composite object has responsibility for the existence and storage of the composed objects (parts)."
	^ #composite

]

{ #category : 'accessing' }
OPUMLAggregationKind >> none [
	"Indicates that the Property has no aggregation."
	^ #none

]

{ #category : 'accessing' }
OPUMLAggregationKind >> shared [
	"Indicates that the Property has shared aggregation."
	^ #shared

]
