as yet unclassified
retrieve: aCollection for: aUser
	| qRet temp |
	qRet := OrderedCollection new.
	temp := aCollection
		asSortedCollection: [ :a :b | a positiveVotes > b positiveVotes ].
	qRet := temp last: (100 min: temp size).
	^ qRet reject: [ :q | q user = aUser ]