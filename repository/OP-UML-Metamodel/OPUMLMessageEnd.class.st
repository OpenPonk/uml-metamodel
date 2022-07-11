"
MessageEnd is an abstract specialization of NamedElement that represents what can occur at the end of a Message.
"
Class {
	#name : #OPUMLMessageEnd,
	#superclass : #OPUMLElement,
	#instVars : [
		'message'
	],
	#category : 'OP-UML-Metamodel-Interactions'
}

{ #category : #'accessing - NamedElement' }
OPUMLMessageEnd >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLMessageEnd >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #'operations - stubs' }
OPUMLMessageEnd >> enclosingFragmentStub [
	"This query returns a set including the enclosing InteractionFragment this MessageEnd is enclosed within."
	
	"{OCL} result = (if self->select(oclIsKindOf(Gate))->notEmpty() 
then -- it is a Gate
let endGate : Gate = 
  self->select(oclIsKindOf(Gate)).oclAsType(Gate)->asOrderedSet()->first()
  in
  if endGate.isOutsideCF() 
  then endGate.combinedFragment.enclosingInteraction.oclAsType(InteractionFragment)->asSet()->
     union(endGate.combinedFragment.enclosingOperand.oclAsType(InteractionFragment)->asSet())
  else if endGate.isInsideCF() 
    then endGate.combinedFragment.oclAsType(InteractionFragment)->asSet()
    else if endGate.isFormal() 
      then endGate.interaction.oclAsType(InteractionFragment)->asSet()
      else if endGate.isActual() 
        then endGate.interactionUse.enclosingInteraction.oclAsType(InteractionFragment)->asSet()->
     union(endGate.interactionUse.enclosingOperand.oclAsType(InteractionFragment)->asSet())
        else null
        endif
      endif
    endif
  endif
else -- it is a MessageOccurrenceSpecification
let endMOS : MessageOccurrenceSpecification  = 
  self->select(oclIsKindOf(MessageOccurrenceSpecification)).oclAsType(MessageOccurrenceSpecification)->asOrderedSet()->first() 
  in
  if endMOS.enclosingInteraction->notEmpty() 
  then endMOS.enclosingInteraction.oclAsType(InteractionFragment)->asSet()
  else endMOS.enclosingOperand.oclAsType(InteractionFragment)->asSet()
  endif
endif)"
	
	self notYetImplemented

]

{ #category : #initialization }
OPUMLMessageEnd >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #NamedElement.
	}
]

{ #category : #initialization }
OPUMLMessageEnd >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #MessageEnd put: self.
]

{ #category : #'operations - stubs' }
OPUMLMessageEnd >> isReceiveStub [
	"This query returns value true if this MessageEnd is a receiveEvent."
	
	"pre: {OCL} message->notEmpty()
"
	"{OCL} result = (message.receiveEvent->asSet()->includes(self))"
	
	self notYetImplemented

]

{ #category : #'operations - stubs' }
OPUMLMessageEnd >> isSendStub [
	"This query returns value true if this MessageEnd is a sendEvent."
	
	"pre: {OCL} message->notEmpty()
"
	"{OCL} result = (message.sendEvent->asSet()->includes(self))"
	
	self notYetImplemented

]

{ #category : #accessing }
OPUMLMessageEnd >> message [
	"References a Message."
	^ message
]

{ #category : #accessing }
OPUMLMessageEnd >> message: aMessage [
	"References a Message."
	message := aMessage
]

{ #category : #'accessing - NamedElement' }
OPUMLMessageEnd >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLMessageEnd >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLMessageEnd >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLMessageEnd >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLMessageEnd >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLMessageEnd >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'operations - stubs' }
OPUMLMessageEnd >> oppositeEndStub [
	"This query returns a set including the MessageEnd (if exists) at the opposite end of the Message for this MessageEnd."
	
	"pre: {OCL} message->notEmpty()
"
	"{OCL} result = (message->asSet().messageEnd->asSet()->excluding(self))"
	
	self notYetImplemented

]

{ #category : #'accessing - NamedElement' }
OPUMLMessageEnd >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLMessageEnd >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLMessageEnd >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : #'accessing - NamedElement' }
OPUMLMessageEnd >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
