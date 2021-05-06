testing
testPositiveVotes
	question addVote: (Vote user: (User new) likesPublication: question).	
	self assert: (question positiveVotes size) equals: 1.
	
	question addVote: (Vote user: (User new) likesPublication: question).	
	self assert: (question positiveVotes size) equals: 2.
	