as yet unclassified
positiveVotes
	| r |
	r := OrderedCollection new.
	votes do:[:vote | vote isLike ifTrue:[r add: vote]].
	^r