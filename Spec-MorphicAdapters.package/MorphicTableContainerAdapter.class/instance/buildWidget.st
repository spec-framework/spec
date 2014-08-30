private
buildWidget

	^ PanelMorph new
		layoutPolicy: TableLayout;
		vResizing: #spaceFill;
		hResizing: #spaceFill;
		yourself