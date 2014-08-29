initialization
initialize

	super initialize.

	buttons := OrderedCollection new.
	canDeselectByClick := false asReactiveVariable.
	
	self whenCanDeselectByClickChanged: [ :aBoolean | 
		buttons do: [ :each | each canDeselectByClick: aBoolean ]].