testing
popularTodayNoLikesTwoQuestions
	self
		assert: (popularTodayRetriever retrieveQuestions: user1) size
		equals: 1.	"0 likes / 2 preguntas "
	self
		assert: (popularTodayRetriever retrieveQuestions: user1) last
		equals: questionUser3TopicOO2.
	self
		assert: (popularTodayRetriever retrieveQuestions: user2) size
		equals: 2.
	self
		assert: (popularTodayRetriever retrieveQuestions: user3) size
		equals: 1.
	self
		assert: (popularTodayRetriever retrieveQuestions: user3) last
		equals: questionUser1TopicOO1