testing
testPositiveAndNegativeVotesInterference
	
	answer addVote: (Vote user: (User new) dislikesPublication: answer).
	self assert: (answer positiveVotes size) equals: 0.
	
	answer addVote: (Vote user: (User new) likesPublication: answer).	
	self assert: (answer positiveVotes size) equals: 1.
	
	answer addVote: (Vote user: (User new) likesPublication: answer).	
	self assert: (answer positiveVotes size) equals: 2.
	
	answer addVote: (Vote user: (User new) dislikesPublication: answer).
	self assert: (answer positiveVotes size) equals: 2.
	
	self assert: answer votes size equals: 4.