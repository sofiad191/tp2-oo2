testing
testPositiveAndNegativeVotesInterference
	question addVote: (Vote user: User new dislikesPublication: question).
	self assert: question positiveVotes equals: 0.
	self assert: question negativeVotes equals: 1.
	question addVote: (Vote user: User new likesPublication: question).
	self assert: question positiveVotes equals: 1.
	self assert: question negativeVotes equals: 1.
	self assert: question votes size equals: 2