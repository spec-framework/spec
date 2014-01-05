protocol
removeFirst

	| result |
	result := value removeFirst.
	self valueChanged: result.
	^ result