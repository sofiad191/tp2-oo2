testing
popularTodayFiveLikesFourQuestionsAtLeastOneVote
  "5 likes / 4 preguntas // preguntas con mas de 1 voto"question2User3TopicOO2 addVote: (Vote user: User new likesPublication: question2User3TopicOO2).
  self assert: (popularTodayRetriever retrieveQuestions: user1) size equals: 1.
  self assert: (popularTodayRetriever retrieveQuestions: user1) first equals: question2User3TopicOO2.
  self assert: (popularTodayRetriever retrieveQuestions: user2) size equals: 1.
  self assert: (popularTodayRetriever retrieveQuestions: user3) size equals: 0.
  15 timesRepeat: [ questionUser1TopicOO1 addVote: (Vote user: User new likesPublication: questionUser1TopicOO1) ].
  self assert: (popularTodayRetriever retrieveQuestions: user1) size equals: 0.
  self assert: (popularTodayRetriever retrieveQuestions: user2) size equals: 1.
  self assert: (popularTodayRetriever retrieveQuestions: user2) first equals: questionUser1TopicOO1.
  self assert: (popularTodayRetriever retrieveQuestions: user3) size equals: 1.
  self assert: (popularTodayRetriever retrieveQuestions: user3) first equals: questionUser1TopicOO1