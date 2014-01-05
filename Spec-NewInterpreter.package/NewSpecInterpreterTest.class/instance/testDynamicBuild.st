tests
testDynamicBuild

	| model spec widget1 widget2 widget3 |
	
	model := TestingComposableModel new.
	
	spec := #(ComposableSpec 
		add: #(
			#(model list) layout: #(
				FrameLayout 
					leftFraction: 0 
					topFraction: 0 
					rightFraction: 1 
					bottomFraction: 1 
					leftOffset: 0 
					topOffset: 0 
					rightOffset: 0 
					bottomOffset: 0))).
	
	(interpreter 
		interpret: spec 
		withModel: model) 
	openInWindow close.
		
	widget1 := model list widget.
	
	(interpreter 
		interpret: spec 
		withModel: model) 
	openInWindow close.
	widget2 := model list widget.
	
	self deny: widget1 == widget2.
	
	model list needRebuild: false.
	model needRebuild: false.
	(interpreter 
		interpret: spec 
		withModel: model) 
	openInWindow close.
	
	widget3 := model list widget.
	
	self assert: widget2 == widget3.
	self assert: model needRebuild