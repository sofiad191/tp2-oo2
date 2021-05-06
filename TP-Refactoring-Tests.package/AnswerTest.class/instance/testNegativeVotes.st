testing
testNegativeVotes
	answer addVote: (Vote user: User new dislikesPublication: answer).
	self assert: answer negativeVotes equals: 1.
	answer addVote: (Vote user: User new dislikesPublication: answer).
	self assert: answer negativeVotes equals: 2