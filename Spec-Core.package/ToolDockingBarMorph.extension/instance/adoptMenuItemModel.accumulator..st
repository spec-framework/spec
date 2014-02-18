*Spec-Core
adoptMenuItemModel: item accumulator: controls
	
	item subMenu
		ifNil: [ | button |
			button := self buildButtonFor: item.
			controls add: button ]
		ifNotNil: [ 
			self emptyAccumulator: controls.
			self 
				add: item name
				font: Smalltalk ui theme menuBarFont
				icon: item icon
				help: item description
				subMenu: item subMenu buildWithSpecAsPopup
			 ]