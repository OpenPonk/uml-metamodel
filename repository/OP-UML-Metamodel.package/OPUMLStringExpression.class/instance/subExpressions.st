accessing
subExpressions
	"The StringExpressions that constitute this StringExpression."
	^ subExpressions ifNil: [ subExpressions := OPUMLToManyLinks on: self opposite: #owningExpression: ]