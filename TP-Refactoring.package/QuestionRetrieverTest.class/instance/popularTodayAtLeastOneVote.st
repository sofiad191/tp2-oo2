testing
popularTodayAtLeastOneVote
 
  "1 likes / 2 preguntas // preguntas con al menos 1 voto"
  questionUser2TopicOO2 addVote: (Vote user: user3 likesPublication: questionUser2TopicOO2).
  self assert: (popularTodayRetriever retrieveQuestions: user1) size equals: 1.
  self assert: (popularTodayRetriever retrieveQuestions: user2) size equals: 0.
  self assert: (popularTodayRetriever retrieveQuestions: user3) size equals: 1