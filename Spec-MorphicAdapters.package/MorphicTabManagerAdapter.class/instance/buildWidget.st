private
buildWidget

	^ TabManager new
		model: self;
		setTabs: self getTabs;
		when: #tabSelected send: #selectedTab: to: self;
		vResizing: #spaceFill;
		hResizing: #spaceFill;
		yourself