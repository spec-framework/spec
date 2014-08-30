private
buildWidget

	^ TickingSpecWindow new
		model: model;
		isResizeable: self isResizeable;
		yourself