tests
testConsumerForLiteral
	| consumer |

	consumer := NewSpecInterpreterConsumer 
		consumerFor: 42 
		atIndex: 1
		ifNone: [ nil ].
	
	self assert: consumer class equals: NewSpecLiteralConsumer.
	