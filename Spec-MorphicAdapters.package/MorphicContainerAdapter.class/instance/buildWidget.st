private
buildWidget

	^ PanelMorph new
		changeProportionalLayout;
		vResizing: #spaceFill;
		hResizing: #spaceFill;
		yourself