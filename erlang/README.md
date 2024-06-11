# 99-ErlangProblems   
This file has the purpose of studying the [`99 erlang Problems`](https://www.ic.unicamp.br/~meidanis/courses/mc336/problemas-lisp/L-99_Ninety-Nine_Lisp_Problems.html).
They are the following:

- ## Working with lists

### First problem:
```erlang
mylast([]) -> [];
mylast([N]) -> N;
mylast([_H|T]) -> mylast(T).
```

### Second problem:
```erlang
mybutlast([]) -> [];
mybutlast([T, _]) -> T;
mybutlast([_H1|T]) -> mybutlast(T).
```

### Third problem:
```erlang
elementat([], _) -> [];
elementat([H|_T], 1) -> H;
elementat([_H|T], N) when N > 1 -> elementat(T, N-1).
```

### Fourth problem:
```erlang
mylength([]) -> 0;
mylength([_]) -> 1;
mylength([_H|T]) -> 1 + mylength(T).
```

### Fifth problem:
```erlang
lreverse([]) -> [];
lreverse([H|T]) -> lreverse(T) ++ [H].
```

### Sixth problem:
```erlang
palindrome([]) -> true;
palindrome([_L]) -> true;
palindrome(List) -> List == lreverse(List).
```

### Seventh problem:
```erlang
myflatten([]) -> [];
myflatten([[H|T]| TG]) -> myflatten([H|T]) ++ myflatten(TG);
myflatten([H|T]) ->[H|myflatten(T)];
myflatten([[]|T]) -> myflatten(T).
```

### Eighth problem:
```erlang
compress([])->[];
compress([H, H|T]) -> compress([H|T]);
compress([H|T]) -> [H] ++ compress(T).
```

### Nineth problem:
```erlang
pack([])->[];
pack([H|T])->pack(T,[H]).

pack([H|T],[H|P])->pack(T,[H,H|P]);
pack([H|T],Pack)->[Pack|pack(T,[H])];
pack([],Pack)->[Pack].
```

### Tenth problem:
```erlang
encode([])->[];
encode(L) -> [{length(Pack), hd(Pack)} || Pack <- pack(L)].
% la funcion hd() retorna el primer elemento de la lista que le entre
```

### Eleventh problem:
```erlang
tuple([X])->X;
tuple([H|T])->{H,1+length(T)}.

encodemodified(L)->[tuple(X)||X<-pack(L)].
```

### Twelfth problem:
```erlang
detuple({_E, 0}) -> [];
detuple({E, N}) -> [E] ++ detuple({E, N-1}).

decode([]) -> [];
decode([H | T]) when is_tuple(H) -> detuple(H) ++ decode(T);
decode([H | T]) -> [H| decode(T)].
```

### Fourteenth problem:
```erlang
dupli([]) -> [];
dupli([H|T]) -> [H, H | dupli(T)].
```

### Fifteenth problem:
```erlang
repli([], _N)->[];
repli([H|T], N) -> detuple({H, N}) ++ repli(T, N).
```

### Sixteenth problem:
```erlang
drop1([], _N) -> [];
drop1(L, N) -> drop2(L, N, N).

drop2([_H|T], 1, N) -> drop2(T, N, N);
drop2([H|T], A, N) -> [H|drop2(T, A-1, N)];
drop2([], _A, _N) -> [].
```

### Seventeenth problem:
```erlang
split(L,N) -> split(L, N, []).
split(L, 0, A) -> [A, L];
split([H|T], N, A)->split(T, N-1, A++[H]).
```

### Eighteenth problem:
```erlang

```

### Nineteenth problem: 
```erlang

```

### Twentyth problem:
```erlang

```

### Twenty-first problem:
```erlang

```

### Twenty-second problem:
```erlang
range(M, M) -> [M];
range(N, M) -> [N|range(N+1, M)].
```

### Twenty-third problem:
```erlang

```erlang
```

### Twenty-fifth problem:
```erlang
rndpermu(L) -> [Y || {_,Y} <- lists:sort([ {rand:uniform(), X} || X <- L])].
```

### Twenty-seventh problem:
a)
```erlang

```
### Twenty-eighth problem:
a)
```erlang


```
- ## Arithmetic

### Thirty-first problem:
```erlang

```

### Thirty-second problem:
```erlang

```

### Thirty-third problem:
```erlang

```

### Thirty-fourth problem:
```erlang

```

### Thirty-fifth problem:
```erlang

```

### Thirty-sixth problem:
```erlang

```

### Thirty-seventh problem:
```erlang

```

### Thirty-eighth problem:


### Thirty-nineth problem:
```erlang

```
### Fortyth problem:
```erlang

```
### Forty-one problem:
```erlang

```

- ## Logic and Codes
- ## Binary Trees

### Fifty-fourth problem:
```erlang

```


### Fifty-fifth problem:
```erlang

```

### Fifty-sixth problem:
```erlang

```

### Fifty-seventh problem:
```erlang

```

### Fifty-eighth problem:
(Its the same function as the problem 55)
```erlang

```

### Fifty-ninth problem:
```erlang

```

### Sixtieth problem:
```erlang

```
### Sixty-first problem:
```erlang

```
### Sixty-first-A problem:
```erlang

```
### Sixty-second problem:
```erlang

```
### Sixty-second-B problem:
```erlang

```
### Sixty-third problem:
```erlang

``` 
### Sixty-fourth problem:
```erlang

``` 
### Sixty-fifth problem:
```erlang

```
### Sixty-sixth problem:
```erlang

```
### Sixty-seventh problem:
```erlang

```
### Sixty-eighth problem:
```erlang

```
### Sixty-ninth problem:
```erlang

```

- ## Multiway Trees
Their erlang representation:

### Seventieth-B problem: 
``` erlang

```
### Seventieth-C problem:
```erlang

```
### Seventieth problem:
```erlang

```
###  problem:
```erlang

```
###  problem:
```erlang

```
###  problem:
```erlang

```


- ## Graphs
- ## Miscellaneous Problems
