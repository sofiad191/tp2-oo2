instance creation
newWithTitle: title description: aDescription user: aUser
	^ self new
		title: title;
		description: aDescription;
		user: aUser;
		yourself.