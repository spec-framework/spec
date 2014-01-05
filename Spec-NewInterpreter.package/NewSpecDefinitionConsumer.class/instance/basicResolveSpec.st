private
basicResolveSpec
	| spec |
	
	spec := (SpecBinder 
		specFor: self element 
		ifAbsent: [ ^ self newRawSpec ]) new.
		
	^ spec 
		model: self model;
		yourself