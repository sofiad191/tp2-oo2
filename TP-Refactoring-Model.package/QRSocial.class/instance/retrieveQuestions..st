retrieving
retrieveQuestions: aUser

	
	^ self retrieve: (aUser following flatCollect: [ :follow | follow questions ]) for: aUser.