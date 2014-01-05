widget API
getList

	^ self model getList collect: [ :each | self model displayForItem: each ]