tests
testInterpretManyMethodsWithLiteral
	| result |
	
	result := interpreter 
		interpret: #(LayoutFrame 
			leftFraction: 42.0
			topFraction: 42.0 
			rightFraction: 42.0 
			bottomFraction: 42.0
			leftOffset: 42.0	
			topOffset: 42.0
			rightOffset: 42.0 
			bottomOffset: 42.0)
		withModel: DummyComposableModel new.
		
	self assert: result class = LayoutFrame.
	self assert: result leftFraction = 42.0.
	self assert: result topFraction = 42.0.
	self assert: result rightFraction = 42.0.
	self assert: result bottomFraction = 42.0.
	self assert: result leftOffset = 42.0.
	self assert: result topOffset = 42.0.
	self assert: result rightOffset = 42.0.
	self assert: result bottomOffset = 42.0.
