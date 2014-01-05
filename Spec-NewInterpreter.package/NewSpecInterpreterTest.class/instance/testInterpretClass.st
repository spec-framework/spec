tests
testInterpretClass
	| result |
	
	result := interpreter 
		interpret: #(#(Object)) 
		withModel: DummyComposableModel new.
	self assert: result class = Object.