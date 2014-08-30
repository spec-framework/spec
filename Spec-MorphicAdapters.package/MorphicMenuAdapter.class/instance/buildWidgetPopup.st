private
buildWidgetPopup

	widget := MenuMorph new
		addIfNeededTitle: (self title)
		andIcon: (self icon).
	
	self menuGroups 
		do: [ :group || items |
			items := group buildWithSpec.
			items do: [ :item | widget addMenuItem: item ] ] 
		separatedBy: [ widget addLine ].
	
	^ widget