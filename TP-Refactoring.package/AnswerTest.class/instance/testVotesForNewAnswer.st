testing
testVotesForNewAnswer
	self assert: answer negativeVotes equals: 0.
	self assert: answer positiveVotes equals: 0