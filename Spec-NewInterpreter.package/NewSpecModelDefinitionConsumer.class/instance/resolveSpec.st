private
resolveSpec

	^ ModelSpec new 
		bindings: self bindingHolder;
		model: self model;
		yourself