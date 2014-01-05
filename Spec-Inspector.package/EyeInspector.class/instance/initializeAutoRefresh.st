initialize-release
initializeAutoRefresh
	
	refreshLoop := self useAutoRefresh
		ifTrue: [ [ self refresh ] valueWithInterval: self updateTime ]