[ [ Gofer it
	smalltalkhubUser: 'Pharo' project: 'Pharo30Inbox';
	package: 'SLICE-Issue-12684-NewValueHolder-Enhancements';
	load ]
	on: MCMergeOrLoadWarning, MCMergeResolutionRequest
	do: [ :ex | ex merge ] ] 
	on: MCNoChangesException 
	do: [].