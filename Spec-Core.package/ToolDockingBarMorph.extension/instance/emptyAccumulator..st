*Spec-Core
emptyAccumulator: controls
	| bar |
	
	controls ifEmpty: [ ^ self ].
	bar := Smalltalk ui theme 
		newToolbarIn: self
		for: controls.
		
	self addMorphBack: bar.
	controls removeAll