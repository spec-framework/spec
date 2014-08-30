private
buildWidget
	
	^ self autoRefresh
		ifTrue: [ self buildRefreshingMenuWidget ]
		ifFalse: [ self buildMenuWidget ]