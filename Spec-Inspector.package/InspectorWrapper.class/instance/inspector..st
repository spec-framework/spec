accessing
inspector: anEyeInspector
	anEyeInspector class logCr.
	Transcript show: thisContext shortDebugStack; cr.
	self basicInspector: anEyeInspector.
	self pushHistory.