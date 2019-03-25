domains
name,sport=symbol
predicates
likes(name,sport)

clauses
likes(ellen,tennis).
likes(john,football).
likes(tom,baseball).
likes(eric,swmming).
likes(mark,cricket).
likes(tom,tennis).
likes(bill,Activity) if likes(tom,Activity).
likes(mark,Activity) :-likes(tom,Activity),likes(ellen,Activity).