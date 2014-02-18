*Spec-Core
adoptMenuGroupModel: aGroupModel
	| controls |
	
	controls := OrderedCollection new.
	aGroupModel menuItems do: [ :item | self adoptMenuItemModel: item accumulator: controls ].
	self emptyAccumulator: controls.