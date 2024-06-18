"
Baseline of https://github.com/OpenPonk/uml-metamodel
"
Class {
	#name : 'BaselineOfUMLMetamodel',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfUMLMetamodel',
	#package : 'BaselineOfUMLMetamodel'
}

{ #category : 'baselines' }
BaselineOfUMLMetamodel >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec package: 'OP-UML-Meta'.
			spec package: 'OP-UML-Metamodel' with: [ spec requires: #('OP-UML-Meta') ].
			spec group: 'default' with: #('OP-UML-Metamodel') ]
]
