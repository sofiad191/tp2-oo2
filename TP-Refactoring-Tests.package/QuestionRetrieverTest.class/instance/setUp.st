set up
setUp
	user1 := User new.
	user2 := User new.
	user3 := User new.
	user1 follow: user2; follow: user3.
	
	topicOO1 := Topic name: 'OO1' description: 'This topic is for discussing about OO1 issues'.
	topicOO2 := Topic name: 'OO2' description: 'This topic is for discussing about OO2 issues'.	

	user1 addTopic: topicOO1.
	user2 addTopic: topicOO2.
	user3 addTopic: topicOO2.

	cuoora := CuOOra new.
	cuoora addUser: user1; addUser: user2; addUser: user3.
	
	questionUser1TopicOO1 := Question newWithTitle: 'How to create a class in Pharo' description: '' user: user1 topic: topicOO1.
	questionUser3TopicOO2 := Question newWithTitle: 'How to create a WAComponent for...' description: '' user: user3 topic: topicOO2.

	cuoora addQuestion: questionUser1TopicOO1 forUser:user1.
	cuoora addQuestion: questionUser3TopicOO2 forUser:user3.
	
	socialRetriever := QuestionRetriever new: cuoora and: #social.
	topicsRetriever := QuestionRetriever new: cuoora and: #topics.
	newsRetriever := QuestionRetriever new: cuoora and: #news.
	popularTodayRetriever := QuestionRetriever new: cuoora and: #popularToday.