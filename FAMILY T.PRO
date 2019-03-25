domains
name=symbol
predicates
	parent(name,name)
	female(name)
	male(name)
	mother(name,name)
	father(name,name)
	haschild(name)
	sister(name,name)
	brother(name,name)
	husband(name,name)
	wife(name,name)

clauses
	female(pam).
	female(liz).
	female(rem).
	female(rim).
	female(uri).
	
	male(joy).
	male(bob).
	male(tom).
	male(peter).
	male(pat).
	
	parent(pam,bob).
	parent(tom,bob).
	parent(bob,peter).
	parent(rem,pat).
	parent(peter,uri).
	parent(pam,liz).
	
	mother(X,Y) :- parent(X,Y),female(X).
	father(X,Y):-parent(X,Y),male(X).
	haschild(X):-parent(X,_).
	sister(X,Y):-parent(Z,X),parent(Z,Y),female(X),not(X=Y).
	brother(X,Y):-parent(Z,X),parent(Z,Y),male(X),not(X=Y).
	husband(X,Y):-parent(X,A),parent(Y,A),male(X),female(Y).
	wife(X,Y):-parent(X,A),parent(Y,A),female(X),male(Y).
	