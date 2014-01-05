tests
testConsumerForArray
	| consumer |

	consumer := NewSpecInterpreterConsumer 
		consumerFor: #(a) 
		atIndex: 1
		ifNone: [ nil ].
	
	self assert: consumer class equals: NewSpecArrayConsumer.
	