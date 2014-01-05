initialize-release
initializePresenter
	"initialize the event handlings"
	super initializePresenter.
	
	list 
		whenSelectedItemChanged: [ :item |
			self refreshDescription: item ];
		doubleClickAction: [ self dive ].
		
	description whenTextIsAccepted: [ :newText |
		self saveElement: newText.
		self refreshDescription ].
	
	self initializeShortcuts.	