handy
gameServersSorted
	^ self gameServers
		asSortedCollection: [ :a :b | (a at: 'displayName') < (b at: 'displayName') ]