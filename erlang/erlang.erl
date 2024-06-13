%  99-ErlangProblems   
%  This file has the purpose of studying the [`99 erlang Problems`](https://www.ic.unicamp.br/~meidanis/courses/mc336/problemas-lisp/L-99_Ninety-Nine_Lisp_Problems.html).
%  They are the following:

% %  Working with lists

% %  First problem:
 
mylast([]) -> [];
mylast([N]) -> N;
mylast([_H|T]) -> mylast(T).
 

% %  Second problem:
 
mybutlast([]) -> [];
mybutlast([T, _]) -> T;
mybutlast([_H1|T]) -> mybutlast(T).
 

% %  Third problem:
 
elementat([], _) -> [];
elementat([H|_T], 1) -> H;
elementat([_H|T], N) when N > 1 -> elementat(T, N-1).
 

% %  Fourth problem:
 
mylength([]) -> 0;
mylength([_]) -> 1;
mylength([_H|T]) -> 1 + mylength(T).
 

% %  Fifth problem:
 
lreverse([]) -> [];
lreverse([H|T]) -> lreverse(T) ++ [H].
 

% %  Sixth problem:
 
palindrome([]) -> true;
palindrome([_L]) -> true;
palindrome(List) -> List == lreverse(List).
 

% %  Seventh problem:
 
myflatten([]) -> [];
myflatten([[H|T]| TG]) -> myflatten([H|T]) ++ myflatten(TG);
myflatten([H|T]) ->[H|myflatten(T)];
myflatten([[]|T]) -> myflatten(T).
 

% %  Eighth problem:
 
compress([])->[];
compress([H, H|T]) -> compress([H|T]);
compress([H|T]) -> [H] ++ compress(T).
 

% %  Nineth problem:
 
pack([])->[];
pack([H|T])->pack(T,[H]).

pack([H|T],[H|P])->pack(T,[H,H|P]);
pack([H|T],Pack)->[Pack|pack(T,[H])];
pack([],Pack)->[Pack].
 

% %  Tenth problem:
 
encode([])->[];
encode(L) -> [{length(Pack), hd(Pack)} || Pack <- pack(L)].
% la funcion hd() retorna el primer elemento de la lista que le entre
 

% %  Eleventh problem:
 
tuple([X])->X;
tuple([H|T])->{H,1+length(T)}.

encodemodified(L)->[tuple(X)||X<-pack(L)].
 

% %  Twelfth problem:
 
detuple({_E, 0}) -> [];
detuple({E, N}) -> [E] ++ detuple({E, N-1}).

decode([]) -> [];
decode([H | T]) when is_tuple(H) -> detuple(H) ++ decode(T);
decode([H | T]) -> [H| decode(T)].
 

% %  Fourteenth problem:
 
dupli([]) -> [];
dupli([H|T]) -> [H, H | dupli(T)].
 

% %  Fifteenth problem:
 
repli([], _N)->[];
repli([H|T], N) -> detuple({H, N}) ++ repli(T, N).
 

% %  Sixteenth problem:
 
drop1([], _N) -> [];
drop1(L, N) -> drop2(L, N, N).

drop2([_H|T], 1, N) -> drop2(T, N, N);
drop2([H|T], A, N) -> [H|drop2(T, A-1, N)];
drop2([], _A, _N) -> [].
 

% %  Seventeenth problem:
 
split(L,N) -> split(L, N, []).
split(L, 0, A) -> [A, L];
split([H|T], N, A)->split(T, N-1, A++[H]).
 

% %  Eighteenth problem:
 

 

% %  Nineteenth problem: 
 

 

% %  Twentyth problem:
 

 

% %  Twenty-first problem:
 

 

% %  Twenty-second problem:
 
range(M, M) -> [M];
range(N, M) -> [N|range(N+1, M)].
 

% %  Twenty-third problem:
 

 

% %  Twenty-fifth problem:
 
rndpermu(L) -> [Y || {_,Y} <- lists:sort([ {rand:uniform(), X} || X <- L])].
 



% %  Twenty-sixth problem:
 
combination(_N, []) -> [];
combination(0, _L) -> [[]];
combination(N, L) when length(L) == N -> [L];
combination(N, [H|T]) -> [[H|C] || C <- combination1(N-1, T)] ++ combination1(N, T).
 

% %  Twenty-seventh problem:
 

 
% %  Twenty-eighth problem:
 
lsort(LL) -> [Y || {_Length, Y} <- lists:sort([{length(X), X} || X <- LL])].
 
% %  Arithmetic

% %  Thirty-first problem:
 
prime(1) -> false;
prime(2) -> true;
prime(N) when N rem 2 =:= 0 -> false;
prime(3) -> true;
prime(Odd) -> prime(Odd, 3).

prime(N, I) when N rem I =:= 0 -> false;
prime(N, I) when I*I > N -> true;
prime(N, I) -> prime(N, I+2).
 

% %  Thirty-second problem:
 
gcd(A, 0) -> A;
gcd(A, B) -> gcd(B, mod(A, B)).
 

% %  Thirty-third problem:
 

 

% %  Thirty-fourth problem:
 

 

% %  Thirty-fifth problem:
 
primefactors(N) -> primefactors(N, N, 3).

primefactors(1, _M, _I) -> [];
primefactors(N, M, I) when N rem 2 =:= 0 -> [2| primefactors(N div 2, M, I)];
primefactors(N, M, I) when N rem I =:= 0 -> [I| primefactors(N div I, M, I)];
primefactors(N, M, I) -> primefactors (N, M, I + 2).
 

% %  Thirty-sixth problem:
 

 

% %  Thirty-seventh problem:
 

 

% %  Thirty-eighth problem:


% %  Thirty-nineth problem:
 
rangeprimes(N, M) -> [X || X <- lists:seq(N, M), prime(X)].
 
% %  Fortyth problem:
 
numsum(_N, []) -> [];
numsum(N, [H|T]) ->
    case lists:member(N-H, T) of
        true -> {H, N-H};
        false -> numsum(N, T)
    end.

goldbach(N) when N rem 2 =:= 0 -> numsum(N, rangeprimes(2, N)).
 
% %  Forty-one problem:
 

 

% %  Logic and Codes
% %  Binary Trees

% %  Fifty-fourth problem:
 
istree({}) -> true;
istree({_, I, D}) -> istree(I) and istree(D);
istree(I) -> false.
 


% %  Fifty-fifth problem:
 
cbaltree(0) -> {};
cbaltree(N)  -> {N, cbaltree(N-1), cbaltree(N-1)}.
 

% %  Fifty-sixth problem:
 
symetric({}, {}) -> true;
symetric({_X, _Y, _Y}, {}) -> false;
symetric({}, {_X, _Y, _Y}) -> false;
symetric({_R1, I1, D1}, {_R2, I2, D2}) -> symetric(I1, I2) and symetric(D1, D2).
 

% %  Fifty-seventh problem:
 
construct([N]) -> {N, {}, {}};
construct([H|T]) -> construct(T, {H, {}, {}}).

insert(N, {}) -> {N, {}, {}};
insert(N, {Root, L, R}) when N =< Root -> {Root, insert(N, L), R};
insert(N, {Root, L, R}) when N > Root -> {Root, L, insert(N, R)}.

construct([], Tree) -> Tree;
construct([H|T], Tree) -> construct(T, insert(H, Tree)).
 

% %  Fifty-eighth problem:

 

 

% %  Fifty-ninth problem:
 

 

% %  Sixtieth problem:
 
minnodes(-1) -> 0;
minnodes(0) -> 1;
minnodes(N) -> 1 + minnodes(N-1) + minnodes(N-2). 

maxheight(N) ->  round(math:floor(math:log2(N+1)) - 1).


 
% %  Sixty-first problem:
 
countleaves({}) -> 0;
countleaves({_X, {}, {}}) -> 1;
countleaves({_R, I, D}) -> countleaves(I) + countleaves(D).
 
% %  Sixty-first-A problem:
 
leaves({X, {}, {}}) -> [X];
leaves({_R, I, D}) -> leaves(I) ++ leaves(D).
 
% %  Sixty-second problem:
 
internals({}) -> [];
internals({R, I, D}) -> [R | internals(I) ++ internals(D)].
 
% %  Sixty-second-B problem:
 
atlevel({}, N) -> [];
atlevel({R, _I, _D}, 1) -> [R];
atlevel({_R, I, D}, N) -> atlevel(I, N-1) ++ atlevel(D, N-1).
 
% %  Sixty-third problem:
 

  
% %  Sixty-fourth problem:
 

  
% %  Sixty-fifth problem:
 

 
% %  Sixty-sixth problem:
 

 
% %  Sixty-seventh problem:
 

 
% %  Sixty-eighth problem:
 

 
% %  Sixty-ninth problem:
 

 

% %  Multiway Trees


% %  Seventieth-B problem: 

 
% %  Seventieth-C problem:
 

 
% %  Seventieth problem:
 

 
% %   problem:
 

 
% %   problem:
 

 
% %   problem:
 

 


% %  Graphs
% %  Miscellaneous Problems
