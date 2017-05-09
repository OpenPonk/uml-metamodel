accessing
owningExpression: aStringExpression
	"The StringExpression of which this StringExpression is a subExpression."
	owningExpression := OPUMLToOneLink
		on: self
		update: #subExpressions
		from: owningExpression
		to: aStringExpression