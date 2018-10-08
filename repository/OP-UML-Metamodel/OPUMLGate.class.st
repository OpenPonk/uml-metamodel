"
A Gate is a MessageEnd which serves as a connection point for relating a Message which has a MessageEnd (sendEvent / receiveEvent) outside an InteractionFragment with another Message which has a MessageEnd (receiveEvent / sendEvent)  inside that InteractionFragment.
"
Class {
	#name : #OPUMLGate,
	#superclass : #OPUMLElement,
	#category : 'OP-UML-Metamodel-Interactions'
}

{ #category : #'accessing - NamedElement' }
OPUMLGate >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLGate >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #'operations - stubs' }
OPUMLGate >> getNameStub [
	"This query returns the name of the gate, either the explicit name (.name) or the constructed name ('out_"" or 'in_' concatenated in front of .message.name) if the explicit name is not present."
	
	"{OCL} result = (if name->notEmpty() then name->asOrderedSet()->first()
else  if isActual() or isOutsideCF() 
  then if isSend() 
    then 'out_'.concat(self.message.name->asOrderedSet()->first())
    else 'in_'.concat(self.message.name->asOrderedSet()->first())
    endif
  else if isSend()
    then 'in_'.concat(self.message.name->asOrderedSet()->first())
    else 'out_'.concat(self.message.name->asOrderedSet()->first())
    endif
  endif
endif)"
	
	self notYetImplemented

]

{ #category : #'operations - stubs' }
OPUMLGate >> getOperandStub [
	"If the Gate is an inside Combined Fragment Gate, this operation returns the InteractionOperand that the opposite end of this Gate is included within."
	
	"{OCL} result = (if isInsideCF() then
  let oppEnd : MessageEnd = self.oppositeEnd()->asOrderedSet()->first() in
    if oppEnd.oclIsKindOf(MessageOccurrenceSpecification)
    then let oppMOS : MessageOccurrenceSpecification = oppEnd.oclAsType(MessageOccurrenceSpecification)
        in oppMOS.enclosingOperand->asOrderedSet()->first()
    else let oppGate : Gate = oppEnd.oclAsType(Gate)
        in oppGate.combinedFragment.enclosingOperand->asOrderedSet()->first()
    endif
  else null
endif)"
	
	self notYetImplemented

]

{ #category : #initialization }
OPUMLGate >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #MessageEnd.
	}
]

{ #category : #initialization }
OPUMLGate >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #MessageEnd put: (OPUMLMessageEnd newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Gate put: self.
]

{ #category : #'operations - stubs' }
OPUMLGate >> isActualStub [
	"This query returns true value if this Gate is an actualGate of an InteractionUse."
	
	"{OCL} result = (interactionUse->notEmpty())"
	
	self notYetImplemented

]

{ #category : #'operations - stubs' }
OPUMLGate >> isDistinguishableFromStub [
	"The query isDistinguishableFrom() specifies that two Gates may coexist in the same Namespace, without an explicit name property. The association end formalGate subsets ownedElement, and since the Gate name attribute
is optional, it is allowed to have two formal gates without an explicit name, but having derived names which are distinct."
	
	"{OCL} result = (true)"
	
	self notYetImplemented

]

{ #category : #'operations - stubs' }
OPUMLGate >> isFormalStub [
	"This query returns true if this Gate is a formalGate of an Interaction."
	
	"{OCL} result = (interaction->notEmpty())"
	
	self notYetImplemented

]

{ #category : #'operations - stubs' }
OPUMLGate >> isInsideCFStub [
	"This query returns true if this Gate is attached to the boundary of a CombinedFragment, and its other end (if present) is inside of an InteractionOperator of the same CombinedFragment."
	
	"{OCL} result = (self.oppositeEnd()-> notEmpty() and combinedFragment->notEmpty() implies
let oppEnd : MessageEnd = self.oppositeEnd()->asOrderedSet()->first() in
if oppEnd.oclIsKindOf(MessageOccurrenceSpecification)
then let oppMOS : MessageOccurrenceSpecification
= oppEnd.oclAsType(MessageOccurrenceSpecification)
in combinedFragment = oppMOS.enclosingOperand.combinedFragment
else let oppGate : Gate = oppEnd.oclAsType(Gate)
in combinedFragment = oppGate.combinedFragment.enclosingOperand.combinedFragment
endif)"
	
	self notYetImplemented

]

{ #category : #'operations - stubs' }
OPUMLGate >> isOutsideCFStub [
	"This query returns true if this Gate is attached to the boundary of a CombinedFragment, and its other end (if present)  is outside of the same CombinedFragment."
	
	"{OCL} result = (self.oppositeEnd()-> notEmpty() and combinedFragment->notEmpty() implies
let oppEnd : MessageEnd = self.oppositeEnd()->asOrderedSet()->first() in
if oppEnd.oclIsKindOf(MessageOccurrenceSpecification) 
then let oppMOS : MessageOccurrenceSpecification = oppEnd.oclAsType(MessageOccurrenceSpecification)
in  self.combinedFragment.enclosingInteraction.oclAsType(InteractionFragment)->asSet()->
     union(self.combinedFragment.enclosingOperand.oclAsType(InteractionFragment)->asSet()) =
     oppMOS.enclosingInteraction.oclAsType(InteractionFragment)->asSet()->
     union(oppMOS.enclosingOperand.oclAsType(InteractionFragment)->asSet())
else let oppGate : Gate = oppEnd.oclAsType(Gate) 
in self.combinedFragment.enclosingInteraction.oclAsType(InteractionFragment)->asSet()->
     union(self.combinedFragment.enclosingOperand.oclAsType(InteractionFragment)->asSet()) =
     oppGate.combinedFragment.enclosingInteraction.oclAsType(InteractionFragment)->asSet()->
     union(oppGate.combinedFragment.enclosingOperand.oclAsType(InteractionFragment)->asSet())
endif)"
	
	self notYetImplemented

]

{ #category : #'operations - stubs' }
OPUMLGate >> matchesStub [
	"This query returns true if the name of this Gate matches the name of the in parameter Gate, and the messages for the two Gates correspond. The Message for one Gate (say A) corresponds to the Message for another Gate (say B) if (A and B have the same name value) and (if A is a sendEvent then B is a receiveEvent) and (if A is a receiveEvent then B is a sendEvent) and (A and B have the same messageSort value) and (A and B have the same signature value)."
	
	"{OCL} result = (self.getName() = gateToMatch.getName() and 
self.message.messageSort = gateToMatch.message.messageSort and
self.message.name = gateToMatch.message.name and
self.message.sendEvent->includes(self) implies gateToMatch.message.receiveEvent->includes(gateToMatch)  and
self.message.receiveEvent->includes(self) implies gateToMatch.message.sendEvent->includes(gateToMatch) and
self.message.signature = gateToMatch.message.signature)"
	
	self notYetImplemented

]

{ #category : #'accessing - MessageEnd' }
OPUMLGate >> message [
	^ (sharedGeneralizations at: #MessageEnd) message
]

{ #category : #'accessing - MessageEnd' }
OPUMLGate >> message: aMessage [
	(sharedGeneralizations at: #MessageEnd) message: aMessage
]

{ #category : #'accessing - NamedElement' }
OPUMLGate >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLGate >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLGate >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLGate >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLGate >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLGate >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'accessing - NamedElement' }
OPUMLGate >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLGate >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLGate >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : #'accessing - NamedElement' }
OPUMLGate >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
