instance creation
newWithTitle: title description: aDescription user: aUser topic: aTopic
	^ self new
		title: title;
		description: aDescription;
		addTopic: aTopic;
		user: aUser;
		yourself.