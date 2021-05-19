instance creation
user: aUser likesPublication: aPublication
	^ self new
		user: aUser;
		publication: aPublication;
		yourself