% Coursework template

% Akshay Arunkumar Garg, H00338776       <--- confirm who you are 
% F28PL Coursework 3, Prolog    <--- confirm what you're submitting 

% Due: Wednesday 8th December 2021, 3:30pm
% Submit (this file) via GitLab as usual.

% You may assume variables, procedures, and functions defined in
% earlier questions in your answers to later questions, though you
% should add comments in code explaining this if any clarification
% might help read your code.

% For all questions, include testing in comments, so your marker can
% load this file as a database then cut-and-paste any testing into the
% command line.

% Testing on GitLab will NOT be provided for Prolog. Your own test
% will in this case be marked - note this is unlike the Python and
% OCaml coursework.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Question 1   <--- Yes, so we know what question you think you're answering
% The complex numbers are explained here (and elsewhere):
%
%   http://www.mathsisfun.com/algebra/complex-number-multiply.html
%
% Represent a complex integer as a two-element list of integers, so
% [4,5] represents 4+5i.  Write Prolog predicates
%
%   cadd/3
%   cmult/3
%
% representing complex integer addition and multiplication. Thus for
% instance, cadd([X1,X2],[Y1,Y2],[Z1,Z2]) succeeds if and only if
% Z1=X1+Y1 and Z2=X2+Y2. Note that complex number multiplication is
% not just like complex number addition. Check the link and read the
% definition.
%
%   <--- always have the question under your nose
% Test :- cadd([1,2],[2,3],L).
% Result :- L = [3, 5].
% Assigning Values to z1 and z2 and returning it as a list
cadd([X1,X2],[Y1,Y2],[Z1,Z2]) :- Z1 is X1+Y1 , Z2 is X2+Y2.
% Test :- cmult([1,2],[2,3],L).
% Result :- L = [-4, 7].
% Assigning Values to z1 and z2 and returning it as a list which results in complex number multiplication
cmult([X1,X2],[Y1,Y2],[Z1,Z2]) :- Z1 is ((X1*Y1) - (X2*Y2)) , Z2 is ((X1*Y2)+(X2*Y1)).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% END ANSWER TO Question 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Question 2

% An integer sequence is a list of integers. Write a Prolog predicate
%
%   seqadd/3
%
% such that seqadd(Xs,Yy,Zs) succeeds when Xs and Ys are lists of
% integers of the same length and Zs is their sequence sum.
% Test :- seqadd([1,2],[3,4],L).
% L = [4, 6].
% Writing the base case for the seqadd
seqadd([],[],[]).
% Taking out the first element from both the lists and adding the values in H3 and appending the result in returned list
seqadd([H1|X1],[H2|Y1],[H3|Z]) :- seqadd(X1,Y1,Z),H3 is H1+H2.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% END ANSWER TO Question 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Question 3

% Please consult the supplied Prolog database file stations.pl
% and answer the following questions. 

% 3a. Explain what backtracking has to do with Prolog. You might find
% this webpage helpful:
%
%   https://www.doc.gold.ac.uk/~mas02gw/prolog_tutorial/prologpages/search.html
%
% Explain your answer in terms of any differences you may observe between answer(s)
% to queries of the form ‘journey(...,leuchars)’ and ‘longjourney(...,leuchars)’
% where ‘...’ can be either a logic variable or one of the stations mentioned.  
%
% Backtracking is a feature of prolog which helps us to find the right answer of the question asked. We can backtrack by entering a semicolon at the terminal when the goal of the question is not satisfied.




% 3b. What is Cut in prolog and what does it have to do with
% backtracking? Explain your answer by giving examples of Cut used in
% at least one prolog rule, and explain how it affects the
% execution/resolution process.
% 
% Illustrate your answer in terms of the ‘stations’ database. 

% Cut operator is also a feature of prolog which prevents backtracking where it is unnecessary to do so.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% END ANSWER TO Question 3
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Question 4

% Write a database for a predicate cycleoflife/1 such that the query
%
%   cycleoflife(X)
%
% returns the instantiations
%
%   X = eat
%   X = sleep
%   X = code
%   X = eat
%   X = sleep
%   X = code
%   ...
%
% in an endless cycle.
%
% (This question has a beautiful and simple answer. If you find
% yourself writing lines and lines of complex code, there’s probably
% something amiss.)

% Writing facts/database for cycleoflife
cycleoflife(eat).
cycleoflife(sleep).
cycleoflife(code).
% Calling the same function again and again for the endless cycle.
cycleoflife(X):-cycleoflife(X).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                      END ANSWER TO Question 4
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%