# 99-SchemeProblems
#### This repository has the pourpuse of studying the [99 Scheme Problems](https://www.ic.unicamp.br/~meidanis/courses/mc336/problemas-lisp/L-99_Ninety-Nine_Lisp_Problems.html)

## First problem:
```scheme
(define my-last
  (lambda(x)
    (cond ((null? (cdr x))
          (car x))
    (else
     (my-last(cdr x))))))
```

## Second problem:
```scheme
(define my-but-last
  (lambda(x)
    (cond ((null? (caddr x))
          x)
      (else(my-but-last (cdr x))))))
```

## Third problem:
```scheme
(define (element-at x y)
  (cond ((= 1 y)
         (car x))
        (else (element-at (cdr x) (- y 1)))))
```

## Fourth problem:
```scheme
(define number-elements
  (lambda(x)
    (cond ((null? (cdr x))
          1)
      (else(+ 1 (number-elements (cdr x)))))))
```

##  problem:
```scheme

```

##  problem:
```scheme

```

##  problem:
```scheme

```

##  problem:
```scheme

```

##  problem:
```scheme

```

##  problem:
```scheme

```

##  problem:
```scheme

```

##  problem:
```scheme

```

##  problem:
```scheme

```

##  problem:
```scheme

```

##  problem:
```scheme

```

##  problem:
```scheme

```

##  problem:
```scheme

```

##  problem:
```scheme

```

##  problem:
```scheme

```

##  problem:
```scheme

```

##  problem:
```scheme

```

##  problem:
```scheme

```

##  problem:
```scheme

```

##  problem:
```scheme

```

##  problem:
```scheme

```

##  problem:
```scheme

```

##  problem:
```scheme

```

##  problem:
```scheme

```

##  problem:
```scheme

```

##  problem:
```scheme

```

##  problem:
```scheme

```

##  problem:
```scheme

```
