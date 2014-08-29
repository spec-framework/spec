example
example
	| instance |

	instance := self new.
	instance openWithSpec.
	instance items: (Smalltalk allClasses).
	instance menu: [ :menu |
		menu addGroup:[ :group |
			group addItem: [:item |
				item 
					name: 'Browse';
					icon: Smalltalk ui icons nautilusIcon;
					action: [ instance selectedItem browse ]]]]