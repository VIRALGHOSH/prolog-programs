domains
	num=integer
predicates
	go
	print(num,num)
clauses
 go:-
	write("Write any number"),
	readint(Num),
	Result = 1,
	print(Num,Result).
	
print(Num,Num):-
	write(Num).
print(Num,Result):-
	write(Result),nl,
	NewResult = Result + 1,
	print(Num,NewResult).
	