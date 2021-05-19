instance creation
new: anAnswer user: aUser question: aQuestion
	^ self new
		description: anAnswer;
		user: aUser;
		question: aQuestion;
		yourself