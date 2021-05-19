testing
testNewsRetrieveQuestions
	| questionUser2TopicOO2 |
	self assert: (newsRetriever retrieveQuestions: user1) size equals: 1.
	self assert: (newsRetriever retrieveQuestions: user1) last equals: questionUser3TopicOO2.
	self assert: (newsRetriever retrieveQuestions: user2) size equals: 2.
	self assert: (newsRetriever retrieveQuestions: user3) size equals: 1.
	self assert: (newsRetriever retrieveQuestions: user3) last equals: questionUser1TopicOO1.
	
	questionUser2TopicOO2 := Question
		newWithTitle: 'Which bad smell...?'
		description: ''
		user: user2
		topic: topicOO2.
	cuoora addQuestion: questionUser2TopicOO2 forUser: user2.
	
	self assert: (newsRetriever retrieveQuestions: user1) size equals: 2.
	self assert: (newsRetriever retrieveQuestions: user2) size equals: 2.
	self assert: (newsRetriever retrieveQuestions: user3) size equals: 2.