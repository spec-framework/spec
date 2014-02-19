protocol-events-compatibility
whenHasChildrenBlockChanged: aBlock
	"Set a block to perform when a new childrenBlock is set"

	hasChildrenBlockHolder whenChangedDo: aBlock