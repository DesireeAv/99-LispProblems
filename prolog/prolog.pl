% 99-PrologProblems   
% This file has the purpose of studying the [`99  prolog Problems`](https://www.ic.unicamp.br/~meidanis/courses/mc336/problemas-lisp/L-99_Ninety-Nine_Lisp_Problems.html).
% They are the following:

%% Working with lists

%%% First problem:

mylast([X], X) :- !.
mylast([_H|T], X) :- mylast(T, X).


%%% Second problem:

mybutlast([X, _Y], X) :- !.
mybutlast([_H|T], X) :- mybutlast(T, X).


%%% Third problem:

element_at([X], 1, X) :- !.
element_at([H|_T], 1, H) :- !.
element_at([_H|T], N, X) :- N1 is N - 1, element_at(T,N1, X).


%%% Fourth problem:

mylength([], 0) :- !.
mylength([_H|T], X) :- mylength(T, Size), X is Size + 1.


%%% Fifth problem:




%%% Sixth problem:




%%% Seventh problem:




%%% Eighth problem:




%%% Nineth problem:




%%% Tenth problem:



%%% Eleventh problem:



%%% Twelfth problem:



%%% Fourteenth problem:



%%% Fifteenth problem:



%%% Sixteenth problem:



%%% Seventeenth problem:



%%% Eighteenth problem:




%%% Nineteenth problem: 




%%% Twentyth problem:




%%% Twenty-first problem:




%%% Twenty-second problem:



%%% Twenty-third problem:




%%% Twenty-fifth problem:





%%% Twenty-sixth problem:



%%% Twenty-seventh problem:



%%% Twenty-eighth problem:


%% Arithmetic

%%% Thirty-first problem:



%%% Thirty-second problem:



%%% Thirty-third problem:




%%% Thirty-fourth problem:




%%% Thirty-fifth problem:



%%% Thirty-sixth problem:




%%% Thirty-seventh problem:




%%% Thirty-eighth problem:


%%% Thirty-nineth problem:


%%% Fortyth problem:


%%% Forty-one problem:




%% Logic and Codes
%% Binary Trees
Their representation:

%%% Fifty-fourth problem:





%%% Fifty-fifth problem:




%%% Fifty-sixth problem:




%%% Fifty-seventh problem:




%%% Fifty-eighth problem:
% (Its the same function as the problem 55)




%%% Fifty-ninth problem:




%%% Sixtieth problem:



%%% Sixty-first problem:



%%% Sixty-first-A problem:



%%% Sixty-second problem:



%%% Sixty-second-B problem:



%%% Sixty-third problem:


 
%%% Sixty-fourth problem:


 
%%% Sixty-fifth problem:



%%% Sixty-sixth problem:



%%% Sixty-seventh problem:



%%% Sixty-eighth problem:
a)



%%% Sixty-ninth problem:




%% Multiway Trees
% Their  prolog representation:

%%% Seventieth-B problem: 



%%% Seventieth-C problem:



%%% Seventieth problem:



%%%  problem:



%%%  problem:



%%%  problem:





%% Graphs
%% Miscellaneous Problems
