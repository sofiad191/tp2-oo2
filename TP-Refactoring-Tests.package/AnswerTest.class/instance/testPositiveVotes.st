testing
testPositiveVotes
	answer addVote: (Vote user: (User new) likesPublication: answer).	
	self assert: (answer positiveVotes size) equals: 1.
	
	answer addVote: (Vote user: (User new) likesPublication: answer).	
	self assert: (answer positiveVotes size) equals: 2.
	