retrieving
retrieveQuestions: aUser
	
	^ self
		retrieve: (aUser topics flatCollect: [ :topico | topico questions ])
		for: aUser