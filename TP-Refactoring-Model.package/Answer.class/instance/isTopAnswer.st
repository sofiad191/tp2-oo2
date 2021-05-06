accessing
isTopAnswer
	.
	^ self positiveVotes >=  ((question sum: [:answer | answer positiveVotes size ]) / question answer size )