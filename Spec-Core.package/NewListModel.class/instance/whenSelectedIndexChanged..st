protocol-events
whenSelectedIndexChanged: aBlock
	<api: #event>
	"Set a block to value when the selection index has changed"
	
	selectedIndex whenChangedDo: aBlock