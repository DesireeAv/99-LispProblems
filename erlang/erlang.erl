% 99-ErlangProblems   
%% This file has the purpose of studying the [`99 erlang Problems`](https://www.ic.unicamp.br/~meidanis/courses/mc336/problemas-lisp/L-99_Ninety-Nine_Lisp_Problems.html).
They are the following:

%%% Working with lists

%%% First problem:

mylast([]) -> [];
mylast([N]) -> N;
mylast([_H|T]) -> mylast(T).


%%% Second problem:

mybutlast([]) -> [];
mybutlast([T, _]) -> T;
mybutlast([_H1|T]) -> mybutlast(T).


%%% Third problem:

elementat([], _) -> [];
elementat([H|_T], 1) -> H;
elementat([_H|T], N) when N > 1 -> elementat(T, N-1).


%%% Fourth problem:

mylength([]) -> 0;
mylength([_]) -> 1;
mylength([_H|T]) -> 1 + mylength(T).


%%% Fifth problem:

lreverse([]) -> [];
lreverse([H|T]) -> lreverse(T) ++ [H].


%%% Sixth problem:

palindrome([]) -> true;
palindrome([_L]) -> true;
palindrome(List) -> List == lreverse(List).


%%% Seventh problem:

myflatten([]) -> [];
myflatten([[H|T]| TG]) -> myflatten([H|T]) ++ myflatten(TG);
myflatten([H|T]) ->[H|myflatten(T)];
myflatten([[]|T]) -> myflatten(T).


%%% Eighth problem:

compress([])->[];
compress([H, H|T]) -> compress([H|T]);
compress([H|T]) -> [H] ++ compress(T).


%%% Nineth problem:

pack([])->[];
pack([H|T])->pack(T,[H]).

pack([H|T],[H|P])->pack(T,[H,H|P]);
pack([H|T],Pack)->[Pack|pack(T,[H])];
pack([],Pack)->[Pack].


%%% Tenth problem:

encode([])->[];
encode(L) -> [{length(Pack), hd(Pack)} || Pack <- pack(L)].
% la funcion hd() retorna el primer elemento de la lista que le entre


%%% Eleventh problem:

tuple([X])->X;
tuple([H|T])->{H,1+length(T)}.

encodemodified(L)->[tuple(X)||X<-pack(L)].


%%% Twelfth problem:

detuple({_E, 0}) -> [];
detuple({E, N}) -> [E] ++ detuple({E, N-1}).

decode([]) -> [];
decode([H | T]) when is_tuple(H) -> detuple(H) ++ decode(T);
decode([H | T]) -> [H| decode(T)].


%%% Fourteenth problem:

dupli([]) -> [];
dupli([H|T]) -> [H, H | dupli(T)].


%%% Fifteenth problem:

repli([], _N)->[];
repli([H|T], N) -> detuple({H, N}) ++ repli(T, N).


%%% Sixteenth problem:

drop1([], _N) -> [];
drop1(L, N) -> drop2(L, N, N).

drop2([_H|T], 1, N) -> drop2(T, N, N);
drop2([H|T], A, N) -> [H|drop2(T, A-1, N)];
drop2([], _A, _N) -> [].


%%% Seventeenth problem:

split(L,N) -> split(L, N, []).
split(L, 0, A) -> [A, L];
split([H|T], N, A)->split(T, N-1, A++[H]).


%%% Eighteenth problem:




%%% Nineteenth problem: 




%%% Twentyth problem:




%%% Twenty-first problem:




%%% Twenty-second problem:

range(M, M) -> [M];
range(N, M) -> [N|range(N+1, M)].


%%% Twenty-third problem:




%%% Twenty-fifth problem:

rndpermu(L) -> [Y || {_,Y} <- lists:sort([ {rand:uniform(), X} || X <- L])].




%%% Twenty-sixth problem:

combination(_N, []) -> [];
combination(0, _L) -> [[]];
combination(N, L) when length(L) == N -> [L];
combination(N, [H|T]) -> [[H|C] || C <- combination1(N-1, T)] ++ combination1(N, T).


%%% Twenty-seventh problem:
a)



%%% Twenty-eighth problem:
a)

lsort(LL) -> [Y || {_Length, Y} <- lists:sort([{length(X), X} || X <- LL])].

%%% Arithmetic

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




%%% Logic and Codes
%%% Binary Trees

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



%%% Sixty-ninth problem:




%%% Multiway Trees
Their erlang representation:

%%% Seventieth-B problem: 
 erlang


%%% Seventieth-C problem:



%%% Seventieth problem:



%%%  problem:



%%%  problem:



%%%  problem:





%%% Graphs
%%% Miscellaneous Problems
