"
CallConcurrencyKind is an Enumeration used to specify the semantics of concurrent calls to a BehavioralFeature.
"
Class {
	#name : #OPUMLCallConcurrencyKind,
	#superclass : #OPUMLEnumeration,
	#category : 'OP-UML-Metamodel-Classification'
}

{ #category : #'accessing - enum' }
OPUMLCallConcurrencyKind class >> concurrent [
	"Multiple invocations of a BehavioralFeature that overlap in time may occur to one instance and all of them may proceed concurrently."
	^ #concurrent

]

{ #category : #'accessing - enum' }
OPUMLCallConcurrencyKind class >> guarded [
	"Multiple invocations of a BehavioralFeature that overlap in time may occur to one instance, but only one is allowed to commence. The others are blocked until the performance of the currently executing BehavioralFeature is complete. It is the responsibility of the system designer to ensure that deadlocks do not occur due to simultaneous blocking."
	^ #guarded

]

{ #category : #'accessing - enum' }
OPUMLCallConcurrencyKind class >> sequential [
	"No concurrency management mechanism is associated with the BehavioralFeature and, therefore, concurrency conflicts may occur. Instances that invoke a BehavioralFeature need to coordinate so that only one invocation to a target on any BehavioralFeature occurs at once."
	^ #sequential

]

{ #category : #accessing }
OPUMLCallConcurrencyKind >> concurrent [
	"Multiple invocations of a BehavioralFeature that overlap in time may occur to one instance and all of them may proceed concurrently."
	^ #concurrent

]

{ #category : #accessing }
OPUMLCallConcurrencyKind >> guarded [
	"Multiple invocations of a BehavioralFeature that overlap in time may occur to one instance, but only one is allowed to commence. The others are blocked until the performance of the currently executing BehavioralFeature is complete. It is the responsibility of the system designer to ensure that deadlocks do not occur due to simultaneous blocking."
	^ #guarded

]

{ #category : #accessing }
OPUMLCallConcurrencyKind >> sequential [
	"No concurrency management mechanism is associated with the BehavioralFeature and, therefore, concurrency conflicts may occur. Instances that invoke a BehavioralFeature need to coordinate so that only one invocation to a target on any BehavioralFeature occurs at once."
	^ #sequential

]
