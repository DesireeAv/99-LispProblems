# 99-PrologProblems   
This file has the purpose of studying the [`99  prolog Problems`](https://www.ic.unicamp.br/~meidanis/courses/mc336/problemas-lisp/L-99_Ninety-Nine_Lisp_Problems.html).
They are the following:

- ## Working with lists

### First problem:
``` prolog
mylast([X], X) :- !.
mylast([_H|T], X) :- mylast(T, X).
```

### Second problem:
``` prolog
mybutlast([X, _Y], X) :- !.
mybutlast([_H|T], X) :- mybutlast(T, X).
```

### Third problem:
``` prolog
element_at([X], 1, X) :- !.
element_at([H|_T], 1, H) :- !.
element_at([_H|T], N, X) :- N1 is N - 1, element_at(T,N1, X).
```

### Fourth problem:
``` prolog
mylength([], 0) :- !.
mylength([_H|T], X) :- mylength(T, Size), X is Size + 1.
```

### Fifth problem:
``` prolog
invert([], []) :- !.
invert(L, X) :- invert(L, [], X).

invert([], X, X) :- !.
invert([H|T], Acc, X) :- invert(T, [H|Acc], X).
```

### Sixth problem:
``` prolog
palindrome(L) :- invert(L, L).
```

### Seventh problem:
``` prolog

```

### Eighth problem:
``` prolog

```

### Nineth problem:
``` prolog

```

### Tenth problem:
``` prolog
```

### Eleventh problem:
``` prolog
```

### Twelfth problem:
``` prolog
```

### Fourteenth problem:
``` prolog
```

### Fifteenth problem:
``` prolog
```

### Sixteenth problem:
``` prolog
```

### Seventeenth problem:
``` prolog
```

### Eighteenth problem:
``` prolog

```

### Nineteenth problem: 
``` prolog

```

### Twentyth problem:
``` prolog

```

### Twenty-first problem:
``` prolog

```

### Twenty-second problem:
``` prolog
```

### Twenty-third problem:
``` prolog

```

### Twenty-fifth problem:
``` prolog
```



### Twenty-sixth problem:
``` prolog
```

### Twenty-seventh problem:
``` prolog

```
### Twenty-eighth problem:
``` prolog
```
- ## Arithmetic

### Thirty-first problem:
``` prolog
```

### Thirty-second problem:
``` prolog
```

### Thirty-third problem:
``` prolog

```

### Thirty-fourth problem:
``` prolog

```

### Thirty-fifth problem:
``` prolog
```

### Thirty-sixth problem:
``` prolog

```

### Thirty-seventh problem:
``` prolog

```

### Thirty-eighth problem:


### Thirty-nineth problem:
``` prolog
```
### Fortyth problem:
``` prolog
```
### Forty-one problem:
``` prolog

```

- ## Logic and Codes
- ## Binary Trees
Their representation:

### Fifty-fourth problem:
``` prolog

```


### Fifty-fifth problem:
``` prolog

```

### Fifty-sixth problem:
``` prolog

```

### Fifty-seventh problem:
``` prolog

```

### Fifty-eighth problem:
(Its the same function as the problem 55)
``` prolog

```

### Fifty-ninth problem:
``` prolog

```

### Sixtieth problem:
``` prolog

```
### Sixty-first problem:
``` prolog

```
### Sixty-first-A problem:
``` prolog

```
### Sixty-second problem:
``` prolog

```
### Sixty-second-B problem:
``` prolog

```
### Sixty-third problem:
``` prolog

``` 
### Sixty-fourth problem:
``` prolog

``` 
### Sixty-fifth problem:
``` prolog

```
### Sixty-sixth problem:
``` prolog

```
### Sixty-seventh problem:
``` prolog

```
### Sixty-eighth problem:
a)
``` prolog

```
### Sixty-ninth problem:
``` prolog

```

- ## Multiway Trees
Their  prolog representation:

### Seventieth-B problem: 
```  prolog

```
### Seventieth-C problem:
``` prolog

```
### Seventieth problem:
``` prolog

```
###  problem:
``` prolog

```
###  problem:
``` prolog

```
###  problem:
``` prolog

```


- ## Graphs
- ## Miscellaneous Problems
