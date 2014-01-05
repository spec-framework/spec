*Spec-NewInterpreter
bypassModel 

	(self widget isNil or: [ self needRebuild ])
		ifTrue: [
			NewSpecInterpreter 
				interpret: (self retrieveSpec: self defaultSpecSelector)
				withModel: self ].
			
	^ self widget