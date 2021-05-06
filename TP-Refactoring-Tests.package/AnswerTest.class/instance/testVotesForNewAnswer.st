testing
testVotesForNewAnswer
	self assert: (answer negativeVotes size) equals: 0.
	self assert: (answer positiveVotes size) equals: 0.
		