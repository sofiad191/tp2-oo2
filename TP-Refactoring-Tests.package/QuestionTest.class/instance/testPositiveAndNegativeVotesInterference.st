testing
testPositiveAndNegativeVotesInterference	
	question addVote: (Vote user: (User new) dislikesPublication: question).
	self assert: (question positiveVotes size) equals: 0.
	self assert: (question negativeVotes size) equals: 1.
	
	question addVote: (Vote user: (User new) likesPublication: question).	
	self assert: (question positiveVotes size) equals: 1.
	self assert: (question negativeVotes size) equals: 1.
	
	self assert: question votes size equals: 2.