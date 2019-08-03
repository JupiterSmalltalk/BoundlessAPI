handy
planetNames
	^ (self gameServersSorted
		collect: [ :gameServer | gameServer at: 'displayName' ])
		