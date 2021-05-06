retrieving
retrieveQuestions: aUser
	| qRet temp popularTCol averageVotes |
	qRet := OrderedCollection new.
	popularTCol := OrderedCollection new.
	cuoora questions
		do: [ :q | 
			q timestamp asDate = Date today
				ifTrue: [ popularTCol add: q ] ].
	averageVotes := (cuoora questions sum: [ :q | q positiveVotes])
		/ popularTCol size.
	temp := (popularTCol
		select: [ :q | q positiveVotes  >= averageVotes ])
		asSortedCollection: [ :a :b | a positiveVotes> b positiveVotes ].
	qRet := temp last: (100 min: temp size).
	^ qRet reject: [ :q | q user = aUser ]