testing
popularTodayFourQuestionsAtLeastOneVote
	  "1 likes / 4 preguntas // preguntas con al menos 1 voto"question2User3TopicOO2 := Question newWithTitle: 'Which refactoring should...' description: '' user: user3 topic: topicOO2.
  cuoora addQuestion: question2User3TopicOO2 forUser: user3.
  self assert: (popularTodayRetriever retrieveQuestions: user1) size equals: 1.
  self assert: (popularTodayRetriever retrieveQuestions: user2) size equals: 0.
  self assert: (popularTodayRetriever retrieveQuestions: user3) size equals: 1.