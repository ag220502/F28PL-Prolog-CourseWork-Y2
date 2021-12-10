/* route planning from Edinburgh to Leuchars */

/* some slow connections */

slow(waverley,haymarket).
slow(haymarket,inverkeithing).
slow(inverkeithing,kirkcaldy).
slow(kirkcaldy,cupar).
slow(cupar,leuchars).

/* some faster connections */

fast(waverley,inverkeithing).
fast(haymarket,kirkcaldy).
fast(kirkcaldy,leuchars).

/* lines can be fast or slow */

line(X,Y) :- fast(X,Y).
line(X,Y) :- slow(X,Y).

/* the longest journey begins with a single step */

journey(X,Z) :- line(X,Y), journey(Y,Z). 
journey(X,X) :- true. 

/* but it's possible to take even longer to get there */

longjourney(X,Z) :- longjourney(X,Y), longjourney(Y,Z). 
longjourney(X,Y) :- line(X,Y). 
