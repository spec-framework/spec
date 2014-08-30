private
buildWidget

	^ PluggableButtonMorph new
		on: self getState: #state action: #action label: #label menu: #menu;
		getEnabledSelector: #enabled;
		getMenuSelector: #menu:;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		askBeforeChanging: self askBeforeChanging;
		setBalloonText: self help;
		dragEnabled: self dragEnabled;
		dropEnabled:self dropEnabled;
		eventHandler: (EventHandler new 
			on: #keyStroke
			send: #keyStroke:fromMorph:
			to: self);
		yourself