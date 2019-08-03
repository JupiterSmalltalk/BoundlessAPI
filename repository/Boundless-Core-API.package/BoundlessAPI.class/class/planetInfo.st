handy
planetInfo
	^ self gameServersSorted
		inject: OrderedDictionary new
		into: [ :planetInfo :gameServer | 
			planetInfo
				at: (gameServer at: 'displayName') put: gameServer;
				yourself ]