testing
testVotesForNewQuestion
	self assert: (question negativeVotes size) equals: 0.
	self assert: (question positiveVotes size) equals: 0.
		