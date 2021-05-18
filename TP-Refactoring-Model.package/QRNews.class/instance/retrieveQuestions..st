retrieving
retrieveQuestions: aUser
	| newsCol |
	newsCol := OrderedCollection new.
	newsCol := self todayQuestions.
	^ self retrieve: newsCol for: aUser