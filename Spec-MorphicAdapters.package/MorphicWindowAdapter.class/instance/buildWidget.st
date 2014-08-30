private
buildWidget

	^ SpecWindow new
		model: self;
		isResizeable: self isResizeable;
		yourself