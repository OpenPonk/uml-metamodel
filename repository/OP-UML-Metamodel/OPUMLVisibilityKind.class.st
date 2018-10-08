"
VisibilityKind is an enumeration type that defines literals to determine the visibility of Elements in a model.
"
Class {
	#name : #OPUMLVisibilityKind,
	#superclass : #OPUMLEnumeration,
	#category : 'OP-UML-Metamodel-CommonStructure'
}

{ #category : #'accessing - enum' }
OPUMLVisibilityKind class >> private [
	"A NamedElement with private visibility is only visible inside the Namespace that owns it."
	^ #private

]

{ #category : #'accessing - enum' }
OPUMLVisibilityKind class >> protected [
	"A NamedElement with protected visibility is visible to Elements that have a generalization relationship to the Namespace that owns it."
	^ #protected

]

{ #category : #'accessing - enum' }
OPUMLVisibilityKind class >> public [
	"A Named Element with public visibility is visible to all elements that can access the contents of the Namespace that owns it."
	^ #public

]

{ #category : #accessing }
OPUMLVisibilityKind >> package [
	"A NamedElement with package visibility is visible to all Elements within the nearest enclosing Package (given that other owning Elements have proper visibility). Outside the nearest enclosing Package, a NamedElement marked as having package visibility is not visible.  Only NamedElements that are not owned by Packages can be marked as having package visibility. "
	^ #package

]

{ #category : #accessing }
OPUMLVisibilityKind >> private [
	"A NamedElement with private visibility is only visible inside the Namespace that owns it."
	^ #private

]

{ #category : #accessing }
OPUMLVisibilityKind >> protected [
	"A NamedElement with protected visibility is visible to Elements that have a generalization relationship to the Namespace that owns it."
	^ #protected

]

{ #category : #accessing }
OPUMLVisibilityKind >> public [
	"A Named Element with public visibility is visible to all elements that can access the contents of the Namespace that owns it."
	^ #public

]
