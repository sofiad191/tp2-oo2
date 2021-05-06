as yet unclassified
negativeVotes
	| r |
	r := OrderedCollection new.
	votes do:[:vote | vote isLike ifFalse:[r add: vote]].
	^r