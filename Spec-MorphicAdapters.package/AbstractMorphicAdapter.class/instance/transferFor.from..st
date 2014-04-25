drag and drop - private
transferFor: objectOrCollection from: source
	| passenger |
	
	passenger := (objectOrCollection isCollection and: [ objectOrCollection isString not ])
		ifTrue: [ objectOrCollection ]
		ifFalse: [ {objectOrCollection } ]. 

	^ (self transferBlock cull: passenger cull: self model) buildWithSpec