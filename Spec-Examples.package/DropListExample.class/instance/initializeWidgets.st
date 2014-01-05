initialization
initializeWidgets 

	self instantiateModels: #(dropList #DropListModel).
	dropList
		items: {morph1. morph2. morph3};
		displayBlock: [ :m | m color name capitalized, ' morph' ];
		whenSelectedItemChanged: [ :m |
			container removeAllMorphs.
			container addMorph: m ].
	container addMorph: morph1.
	self setFocus.