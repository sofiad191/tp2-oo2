retrieving
retrieveQuestions: aUser
| qRet temp topicsCol |
	qRet := OrderedCollection new.

			topicsCol := OrderedCollection new.
			aUser topics do:[ :topic | topicsCol addAll: topic questions ].
			temp := topicsCol asSortedCollection:[ :a :b | a positiveVotes size > b positiveVotes size ].
			qRet := temp last: (100 min: temp size).

^qRet reject:[:q | q user = aUser].