accessing
subExpressions
	"The StringExpressions that constitute this StringExpression."
	^ subExpressions ifNil: [ subExpressions := OrderedCollection new ]