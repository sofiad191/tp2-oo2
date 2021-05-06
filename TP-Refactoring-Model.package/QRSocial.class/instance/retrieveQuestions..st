retrieving
retrieveQuestions: aUser
	| followingCol |
	followingCol := OrderedCollection new.
	aUser following
		do: [ :follow | followingCol addAll: follow questions ].
	^ self retrieve: followingCol for: aUser