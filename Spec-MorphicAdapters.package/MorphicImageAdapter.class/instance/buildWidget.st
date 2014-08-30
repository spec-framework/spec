private
buildWidget

	^ AlphaImageMorph new
		model: self;
		getImageSelector: #getImage;
		vResizing: #spaceFill;
		hResizing: #spaceFill;
		layout: #center;
		dragEnabled: (model dragEnabled);
		dropEnabled: (model dropEnabled);
		setBalloonText: (self help);
		update: #getImage;
		yourself