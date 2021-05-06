retrieving
retrieveQuestions: aUser
	| newsCol |
	newsCol := OrderedCollection new.
	cuoora questions do: [ :q | q timestamp asDate = Date today ifTrue: [ newsCol add: q ] ].
	^ self retrieve: newsCol for: aUser