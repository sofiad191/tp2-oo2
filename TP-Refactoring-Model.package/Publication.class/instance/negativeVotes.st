operations
negativeVotes
	^ votes reject: [ :vote | vote isLike ]