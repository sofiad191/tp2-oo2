retrieving
retrieveQuestions: aUser
	| popularTCol averageVotes |
	popularTCol := OrderedCollection new.
	cuoora questions do: [ :q | q timestamp asDate = Date today ifTrue: [ popularTCol add: q ] ].
	averageVotes := (cuoora questions sum: [ :q | q positiveVotes ]) / popularTCol size.
	^ self
		retrieve: (popularTCol select: [ :q | q positiveVotes >= averageVotes ])
		for: aUser