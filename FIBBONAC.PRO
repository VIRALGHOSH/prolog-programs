domains
	n=integer
predicates
	go
	fibo(n,n,n)
clauses
	go:-
	write("enter for fibonacc "),
	readint(N),
	C=0,
	U=1,
	fibo(N,C,U).
	
   
	
fibo(N,C,U):-
	N>C,
	write(C,","),
	Newc=U,
	Newu=C+U,
	fibo(N,Newc,Newu).

fibo(_,_,_):-
	write("").