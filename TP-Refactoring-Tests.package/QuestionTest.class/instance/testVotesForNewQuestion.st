testing
testVotesForNewQuestion
	self assert: question negativeVotes equals: 0.
	self assert: question positiveVotes equals: 0