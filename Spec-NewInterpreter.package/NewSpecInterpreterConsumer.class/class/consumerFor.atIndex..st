accessing
consumerFor: anObject atIndex: index
	^ self 
		consumerFor: anObject 
		atIndex: index
		ifNone: [ self error: 'No spec consumer for: ', anObject asString ].		
