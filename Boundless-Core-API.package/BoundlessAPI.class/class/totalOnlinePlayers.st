handy
totalOnlinePlayers
	^ self gameServers
		inject: 0
		into:
			[ :totalPlayers :gameServer | totalPlayers + ((gameServer at: 'info') at: 'players') ]