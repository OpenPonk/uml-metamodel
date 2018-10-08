"
InteractionOperatorKind is an enumeration designating the different kinds of operators of CombinedFragments. The InteractionOperand defines the type of operator of a CombinedFragment.
"
Class {
	#name : #OPUMLInteractionOperatorKind,
	#superclass : #OPUMLEnumeration,
	#category : 'OP-UML-Metamodel-Interactions'
}

{ #category : #'accessing - enum' }
OPUMLInteractionOperatorKind class >> alt [
	"The InteractionOperatorKind alt designates that the CombinedFragment represents a choice of behavior. At most one of the operands will be chosen. The chosen operand must have an explicit or implicit guard expression that evaluates to true at this point in the interaction. An implicit true guard is implied if the operand has no guard."
	^ #alt

]

{ #category : #'accessing - enum' }
OPUMLInteractionOperatorKind class >> assert [
	"The InteractionOperatorKind assert designates that the CombinedFragment represents an assertion. The sequences of the operand of the assertion are the only valid continuations. All other continuations result in an invalid trace."
	^ #assert

]

{ #category : #'accessing - enum' }
OPUMLInteractionOperatorKind class >> break [
	"The InteractionOperatorKind break designates that the CombinedFragment represents a breaking scenario in the sense that the operand is a scenario that is performed instead of the remainder of the enclosing InteractionFragment. A break operator with a guard is chosen when the guard is true and the rest of the enclosing Interaction Fragment is ignored. When the guard of the break operand is false, the break operand is ignored and the rest of the enclosing InteractionFragment is chosen. The choice between a break operand without a guard and the rest of the enclosing InteractionFragment is done non-deterministically."
	^ #break

]

{ #category : #'accessing - enum' }
OPUMLInteractionOperatorKind class >> consider [
	"The InteractionOperatorKind consider designates which messages should be considered within this combined fragment. This is equivalent to defining every other message to be ignored."
	^ #consider

]

{ #category : #'accessing - enum' }
OPUMLInteractionOperatorKind class >> critical [
	"The InteractionOperatorKind critical designates that the CombinedFragment represents a critical region. A critical region means that the traces of the region cannot be interleaved by other OccurrenceSpecifications (on those Lifelines covered by the region). This means that the region is treated atomically by the enclosing fragment when determining the set of valid traces. Even though enclosing CombinedFragments may imply that some OccurrenceSpecifications may interleave into the region, such as with par-operator, this is prevented by defining a region."
	^ #critical

]

{ #category : #'accessing - enum' }
OPUMLInteractionOperatorKind class >> ignore [
	"The InteractionOperatorKind ignore designates that there are some message types that are not shown within this combined fragment. These message types can be considered insignificant and are implicitly ignored if they appear in a corresponding execution. Alternatively, one can understand ignore to mean that the message types that are ignored can appear anywhere in the traces."
	^ #ignore

]

{ #category : #'accessing - enum' }
OPUMLInteractionOperatorKind class >> loop [
	"The InteractionOperatorKind loop designates that the CombinedFragment represents a loop. The loop operand will be repeated a number of times."
	^ #loop

]

{ #category : #'accessing - enum' }
OPUMLInteractionOperatorKind class >> neg [
	"The InteractionOperatorKind neg designates that the CombinedFragment represents traces that are defined to be invalid."
	^ #neg

]

{ #category : #'accessing - enum' }
OPUMLInteractionOperatorKind class >> opt [
	"The InteractionOperatorKind opt designates that the CombinedFragment represents a choice of behavior where either the (sole) operand happens or nothing happens. An option is semantically equivalent to an alternative CombinedFragment where there is one operand with non-empty content and the second operand is empty."
	^ #opt

]

{ #category : #'accessing - enum' }
OPUMLInteractionOperatorKind class >> par [
	"The InteractionOperatorKind par designates that the CombinedFragment represents a parallel merge between the behaviors of the operands. The OccurrenceSpecifications of the different operands can be interleaved in any way as long as the ordering imposed by each operand as such is preserved."
	^ #par

]

{ #category : #'accessing - enum' }
OPUMLInteractionOperatorKind class >> seq [
	"The InteractionOperatorKind seq designates that the CombinedFragment represents a weak sequencing between the behaviors of the operands."
	^ #seq

]

{ #category : #'accessing - enum' }
OPUMLInteractionOperatorKind class >> strict [
	"The InteractionOperatorKind strict designates that the CombinedFragment represents a strict sequencing between the behaviors of the operands. The semantics of strict sequencing defines a strict ordering of the operands on the first level within the CombinedFragment with interactionOperator strict. Therefore OccurrenceSpecifications within contained CombinedFragment will not directly be compared with other OccurrenceSpecifications of the enclosing CombinedFragment."
	^ #strict

]

{ #category : #accessing }
OPUMLInteractionOperatorKind >> alt [
	"The InteractionOperatorKind alt designates that the CombinedFragment represents a choice of behavior. At most one of the operands will be chosen. The chosen operand must have an explicit or implicit guard expression that evaluates to true at this point in the interaction. An implicit true guard is implied if the operand has no guard."
	^ #alt

]

{ #category : #accessing }
OPUMLInteractionOperatorKind >> assert [
	"The InteractionOperatorKind assert designates that the CombinedFragment represents an assertion. The sequences of the operand of the assertion are the only valid continuations. All other continuations result in an invalid trace."
	^ #assert

]

{ #category : #accessing }
OPUMLInteractionOperatorKind >> break [
	"The InteractionOperatorKind break designates that the CombinedFragment represents a breaking scenario in the sense that the operand is a scenario that is performed instead of the remainder of the enclosing InteractionFragment. A break operator with a guard is chosen when the guard is true and the rest of the enclosing Interaction Fragment is ignored. When the guard of the break operand is false, the break operand is ignored and the rest of the enclosing InteractionFragment is chosen. The choice between a break operand without a guard and the rest of the enclosing InteractionFragment is done non-deterministically."
	^ #break

]

{ #category : #accessing }
OPUMLInteractionOperatorKind >> consider [
	"The InteractionOperatorKind consider designates which messages should be considered within this combined fragment. This is equivalent to defining every other message to be ignored."
	^ #consider

]

{ #category : #accessing }
OPUMLInteractionOperatorKind >> critical [
	"The InteractionOperatorKind critical designates that the CombinedFragment represents a critical region. A critical region means that the traces of the region cannot be interleaved by other OccurrenceSpecifications (on those Lifelines covered by the region). This means that the region is treated atomically by the enclosing fragment when determining the set of valid traces. Even though enclosing CombinedFragments may imply that some OccurrenceSpecifications may interleave into the region, such as with par-operator, this is prevented by defining a region."
	^ #critical

]

{ #category : #accessing }
OPUMLInteractionOperatorKind >> ignore [
	"The InteractionOperatorKind ignore designates that there are some message types that are not shown within this combined fragment. These message types can be considered insignificant and are implicitly ignored if they appear in a corresponding execution. Alternatively, one can understand ignore to mean that the message types that are ignored can appear anywhere in the traces."
	^ #ignore

]

{ #category : #accessing }
OPUMLInteractionOperatorKind >> loop [
	"The InteractionOperatorKind loop designates that the CombinedFragment represents a loop. The loop operand will be repeated a number of times."
	^ #loop

]

{ #category : #accessing }
OPUMLInteractionOperatorKind >> neg [
	"The InteractionOperatorKind neg designates that the CombinedFragment represents traces that are defined to be invalid."
	^ #neg

]

{ #category : #accessing }
OPUMLInteractionOperatorKind >> opt [
	"The InteractionOperatorKind opt designates that the CombinedFragment represents a choice of behavior where either the (sole) operand happens or nothing happens. An option is semantically equivalent to an alternative CombinedFragment where there is one operand with non-empty content and the second operand is empty."
	^ #opt

]

{ #category : #accessing }
OPUMLInteractionOperatorKind >> par [
	"The InteractionOperatorKind par designates that the CombinedFragment represents a parallel merge between the behaviors of the operands. The OccurrenceSpecifications of the different operands can be interleaved in any way as long as the ordering imposed by each operand as such is preserved."
	^ #par

]

{ #category : #accessing }
OPUMLInteractionOperatorKind >> seq [
	"The InteractionOperatorKind seq designates that the CombinedFragment represents a weak sequencing between the behaviors of the operands."
	^ #seq

]

{ #category : #accessing }
OPUMLInteractionOperatorKind >> strict [
	"The InteractionOperatorKind strict designates that the CombinedFragment represents a strict sequencing between the behaviors of the operands. The semantics of strict sequencing defines a strict ordering of the operands on the first level within the CombinedFragment with interactionOperator strict. Therefore OccurrenceSpecifications within contained CombinedFragment will not directly be compared with other OccurrenceSpecifications of the enclosing CombinedFragment."
	^ #strict

]
