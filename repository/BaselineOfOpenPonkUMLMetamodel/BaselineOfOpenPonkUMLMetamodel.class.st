"
Baseline of https://github.com/OpenPonk/uml-metamodel
"
Class {
	#name : 'BaselineOfOpenPonkUMLMetamodel',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfOpenPonkUMLMetamodel',
	#package : 'BaselineOfOpenPonkUMLMetamodel'
}

{ #category : 'baselines' }
BaselineOfOpenPonkUMLMetamodel >> baseline: spec [

	<baseline>
	spec for: #common do: [
		spec package: 'OpenPonk-UML-Meta'.
		spec
			package: 'OpenPonk-UML-Metamodel'
			with: [ spec requires: #( 'OpenPonk-UML-Meta' ) ].
		spec group: 'default' with: #( 'OpenPonk-UML-Metamodel' ) ]
]
