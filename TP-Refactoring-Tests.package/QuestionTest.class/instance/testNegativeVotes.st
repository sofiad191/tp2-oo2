testing
testNegativeVotes
	question addVote: (Vote user: User new dislikesPublication: question).
	self assert: question negativeVotes  equals: 1.
	question addVote: (Vote user: User new dislikesPublication: question).
	self assert: question negativeVotes  equals: 2