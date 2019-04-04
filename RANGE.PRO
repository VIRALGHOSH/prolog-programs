predicates
go(integer)
clauses
	go(Num):-
	Num>0,Num<11,
	write(Num," is between 0-10"),nl;
	Num>10,Num<21,
	write(Num," is between 11-20").