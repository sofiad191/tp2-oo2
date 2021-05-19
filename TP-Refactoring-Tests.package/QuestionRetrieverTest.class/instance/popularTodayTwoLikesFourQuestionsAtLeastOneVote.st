testing
popularTodayTwoLikesFourQuestionsAtLeastOneVote
	   "2 likes / 4 preguntas // preguntas con al menos 1 voto"question2User3TopicOO2 addVote: (Vote user: user2 likesPublication: question2User3TopicOO2).
  self assert: (popularTodayRetriever retrieveQuestions: user1) size equals: 2.
  self assert: (popularTodayRetriever retrieveQuestions: user2) size equals: 1.
  self assert: (popularTodayRetriever retrieveQuestions: user3) size equals: 1.