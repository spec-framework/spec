tests
testInterpretMethodWithLiteral
	| result |
	
	result := interpreter 
		interpret: #(LayoutFrame 
			leftFraction: 42.0)
		withModel: DummyComposableModel new.
		
	self assert: result class = LayoutFrame.
	self assert: result leftFraction = 42.0.