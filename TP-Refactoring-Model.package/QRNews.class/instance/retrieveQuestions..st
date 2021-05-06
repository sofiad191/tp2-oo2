retrieving
retrieveQuestions: aUser
| qRet temp  newsCol |
	qRet := OrderedCollection new.

			newsCol := OrderedCollection new.
			cuoora questions do:[:q | (q timestamp asDate = Date today) ifTrue: [newsCol add: q]].
			temp := newsCol asSortedCollection:[ :a :b | a positiveVotes size > b positiveVotes size ].
			qRet := temp last: (100 min: temp size).
		
^qRet reject:[:q | q user = aUser].