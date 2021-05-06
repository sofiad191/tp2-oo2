retrieving
retrieveQuestions: aUser
	| topicsCol |
	topicsCol := OrderedCollection new.
	aUser topics do: [ :topic | topicsCol addAll: topic questions ].
	^ self retrieve: topicsCol for: aUser