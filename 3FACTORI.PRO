domains
	num=integer
predicates
	go
	factorial(num,num)
clauses
	go:-
		write("Enter any number"),
		readint(Num),
		Result = 1,
		factorial(Num,Result).
		
	factorial(0,Result):-
		write("Factorial is ",Result),nl.
	
	factorial(Num,Result):-
		Num > 0,
		NewResult = Num * Result,
		NewNum = Num - 1,
		factorial(NewNum,NewResult).
