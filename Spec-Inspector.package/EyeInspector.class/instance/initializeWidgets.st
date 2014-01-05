initialize-release
initializeWidgets
	
	list := self instantiate: NewListModel.
	text := self instantiate: TextModel.
	description := self instantiate: TextModel.
	
	list handlesDoubleClick: true.
		
	text aboutToStyle: true.
	
		
 	
