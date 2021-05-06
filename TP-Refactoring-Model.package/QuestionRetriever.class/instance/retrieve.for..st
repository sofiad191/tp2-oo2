operations
retrieve: aCollection for: aUser
	^ ( ( aCollection asSortedCollection: [ :a :b | a positiveVotes > b positiveVotes ] ) last: (100 min: aCollection size) ) reject: [ :q | q user = aUser ]