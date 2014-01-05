testing
canInterpret: anObject atIndex: index
	
	^ anObject isCollection 
		and: [ anObject isString not ]