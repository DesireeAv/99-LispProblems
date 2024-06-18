% 99-PrologProblems   
% This file has the purpose of studying the [`99 Prolog Problems`](https://www.ic.unicamp.br/~meidanis/courses/mc336/problemas-lisp/L-99_Ninety-Nine_Lisp_Problems.html).
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

invert([], []) :- !.
invert(L, X) :- invert(L, [], X).

invert([], X, X) :- !.
invert([H|T], Acc, X) :- invert(T, [H|Acc], X).


%%% Sixth problem:

palindrome(L) :- invert(L, L).


%%% Seventh problem:

my_flatten([], []) :- !.
my_flatten([[H|T]| TT], FF) :- 
		my_flatten([H|T], F1), 
		my_flatten(TT, F2), 
		append(F1, F2, FF).
my_flatten([[], T], F) :- my_flatten(T, F).
my_flatten([H|T], [H|F]) :- my_flatten(T, F).


%%% Eighth problem:

compress([], []) :-!.
compress([H, H|T], X) :- !, compress([H|T], X).
compress([H|T], [H|X]) :- compress(T, X).


%%% Nineth problem:

pack([], []) :- !.
pack([H|T], X) :- pack(T, [H], X).

pack([], P, [P]):-!.
pack([H|T], [H|P], X) :- !, pack(T, [H, H|P], X).
pack([H|T], L, [L|X]) :- pack(T, [H], X).


%%% Tenth problem:

encode(L, LE):- pack(L, PL), encode1(PL,LE).

encode1([], []):-!.
encode1([[A|TA]|T], [[A,Len]|X]) :- length(TA, Le), Len is Le + 1, encode1(T, X).


%%% Eleventh problem:

encode_modified(L, LE) :- pack(L, PL), encode_modified1(PL, LE).

encode_modified1([], []) :- !.
encode_modified1([[A]|T], [A|X]) :- encode_modified1(T, X).
encode_modified1([[A|TA]|T], [[A,Len]|X]) :- length(TA, Le), Len is Le + 1, encode_modified1(T, X).


%%% Twelfth problem:

detuple([_S, 0],  []) :-!.
detuple([S, N], [S|X]) :- N > 0, N1 is N-1, detuple([S, N1], X).

decode([], []) :-!.
decode([H|T], [X1|X]) :- detuple(H, X1), decode(T, X).


%%% Fourteenth problem:

dupli([], []) :- !.
dupli([H|T], [H, H | X]):- dupli(T, X).


%%% Fifteenth problem:

dupli1([], []) :- !.
dupli1(L, N, X):- dupli1(L, N, N, X).

dupli1([], _, _, []) :-!.
dupli1([_H|T], 0, N2, X) :- dupli1(T, N2, N2, X).
dupli1([H|T], N1, N2, [H|X]) :- N is N1-1, dupli1([H|T], N, N2, X).


%%% Sixteenth problem:

drop([], _, []) :- !.
drop(L, N, X) :- drop(L, N, N, X).

drop([], _, _, []) :- !.
drop([_H|T], 1, N2, X) :- drop(T, N2, N2, X).
drop([H|T], N1, N2, [H|X]) :- N is N1-1, drop(T, N, N2, X).


%%% Seventeenth problem:

split(L, 0, [], L) :- !.
split([H|T], N, [H|L1], L2) :- N1 is N-1, split(T, N1, L1, L2).


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
(Its the same function as the problem 55)




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
Their  prolog representation:

%%% Seventieth-B problem: 
  prolog


%%% Seventieth-C problem:



%%% Seventieth problem:



%%%  problem:



%%%  problem:



%%%  problem:





%% Graphs
%% Miscellaneous Problems
