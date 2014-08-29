as yet unclassified
buildWidget

	^ CheckboxMorph new
		on: self selected: #state changeSelected: #state:;
		label: self label;
		beCheckbox;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		setBalloonText:	self help;
		dragEnabled: self dragEnabled;
		dropEnabled: self dropEnabled;
		labelClickable: self labelClickable;
		yourself