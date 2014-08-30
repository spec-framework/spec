private
buildWidget

	^ LabelMorph new
		model: self;
		getEnabledSelector: #enabled;
		getTextSelector: #getText;
		vResizing: #shrinkWrap;
		hResizing: #spaceFill;
		dragEnabled: (self dragEnabled);
		dropEnabled: (self dropEnabled);
		setBalloonText: (self help);
		yourself