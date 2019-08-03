server api
gameServers
	^ (NeoJSONReader
		on:
			(ZnClient new
				systemPolicy;
				beOneShot;
				https;
				port: 8902;
				host: self boundlessDiscoveryServer;
				addPath: 'list-gameservers';
				get) readStream) next