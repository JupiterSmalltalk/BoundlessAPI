server api
settlements
	^ (NeoCSVReader
		on:
		(ZnClient new
		systemPolicy;
		beOneShot;
		beBinary;
		host: self boundlessNinjaServer;
		addPath: 'settlements-global.csv';
		get) asString readStream)
		recordClass: OrderedDictionary;
		addIntegerFieldAt: #prestige;
		addFieldAt: #name;
		addFieldAt: #planet;
		addIntegerFieldAt: #coordinateX;
		addIntegerFieldAt: #coordinateY;
		skipHeader;
		upToEnd