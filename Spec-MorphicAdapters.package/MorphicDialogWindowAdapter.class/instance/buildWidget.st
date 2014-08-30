private
buildWidget

	^ SpecDialogWindow 
		specWidget: self contentMorph;
		setToolbarFrom: self toolbarBlock;
		model: self model;
		initialize