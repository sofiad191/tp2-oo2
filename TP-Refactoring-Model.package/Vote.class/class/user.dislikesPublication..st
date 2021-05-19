instance creation
user: aUser dislikesPublication: aPublication
	^ self new
		user: aUser;
		publication: aPublication;
		dislike;
		yourself