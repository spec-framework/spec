private
menu: aMenu shifted: aBoolean
	"Build the menu when you right click on an item"
	| menu |

	menuHolder value ifNil: [ ^ nil ].
	menuHolder value isBlock ifFalse: [ ^ menuHolder value ].
	
	menu := MenuModel new.
	
	menuHolder value cull: menu cull: aBoolean.
	
	^ menu