# 99-SchemeProblems
This file has the pourpuse of studying the [99 Scheme Problems](https://www.ic.unicamp.br/~meidanis/courses/mc336/problemas-lisp/L-99_Ninety-Nine_Lisp_Problems.html)

- ## Working with lists

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

## Fifth problem:
```scheme
(define reverse
  (lambda(x)
    (cond ((null? (cdr x))
          (list (car x)))
      (else(append  (reverse (cdr x)) (list(car x)))))))
```

## Sixth problem:
```scheme
; Use the function from above
(define is-palindrome?
  (lambda (x)
    (cond ((null? x)
           #t)
          ((equal? x (reverse x)) ; here
           #t)
          (else #f))))
```

## Seventh problem:
```scheme
(define (flatten lst)
  (cond ((null? lst) '())                    
        ((not (pair? lst)) (list lst))       
        (else (append (flatten (car lst))    
                      (flatten (cdr lst)))))) 
```

## Eighth problem:
```scheme
(define (compress x)
  (cond ((null? x) '())               
        ((null? (cdr x)) (list (car x)))  
        ((equal? (car x) (cadr x))     ; If the current element equals the next element
         (compress (cdr x)))             ; Skip the current element and continue compressing
        (else                             ; Otherwise, keep the current element
         (cons (car x)                   
               (compress (cdr x))))))   
```

## Nineth problem:
```scheme
(define (pack x)
  (cond ((null? x) '())
        (else (cons (pega x) (pack (tira x))))))

(define (pega x)
  (cond ((null? x) '())
        ((null? (cdr x)) x)
        ((equal? (car x) (cadr x))
         (cons (car x) (pega (cdr x))))
        (else (list (car x)))))

(define (tira x)
  (cond ((null? x) '())
        ((null? (cdr x)) '())
        ((equal? (car x) (cadr x))
         (tira (cdr x)))
        (else (cdr x))))
```

## Tenth problem:
```scheme
(define (encode x)
  (map (lambda (xx) 
         (list (length xx) (car xx)))   
       (pack x))) : uses here the problem 09                             
```

## Eleventh problem:
```scheme
(define (encode-modified lst)
  (map (lambda (sublst)
         (append (cond
                   ((= (length sublst) 1)(car sublst))
                   (else(list (length sublst) (car sublst))))))
       (pack lst)))
```

## Twelfth problem: ***
```scheme

```

## Thirteenth problem:
```scheme
(define (encode-modified lst)
  (map (lambda (sublst)
         (append (cond
                   ((= (length sublst) 1)(car sublst))
                   (else(list (length sublst) (car sublst))))))
       (pack lst)))
```

## Fourteenth problem:
```scheme
(define (dupli lst)
  (cond ((null? lst) '())
        (else (append (list (car lst)) (list (car lst)) (dupli (cdr lst))))))
```

## Fifteenth problem:
```scheme
(define (repeat-value n e)
  (cond ((= n 0) '())            
        (else (cons e             
                    (repeat-value (- n 1) e)))))  

(define (repli lst y)
  (cond ((null? lst) '())
        (else (append (repeat-value y (car lst)) (repli (cdr lst) y)))))
```

## Sixteenth problem:
```scheme
(define (drop lst y)
  (drop-aux lst y y))

(define (drop-aux lst y count)
  (cond
    ((null? lst) '())
    ((= count 1) (drop-aux (cdr lst) y y))  
    (else (cons (car lst) (drop-aux (cdr lst) y (- count 1)))))) 
```

## Seventeenth problem:
```scheme
(define (take lst n) ; returns a list of the first n elements of a list
  (if (or (null? lst) (= n 0))
      '()                              
      (cons (car lst)                  
            (take (cdr lst) (- n 1))))) 

(define (split lst n)
  (cond ((null?  lst) '())                     
        (else (list (take lst n)  (drop lst n))) ; here it uses the problem 16
                     )) 
```

## Eighteenth problem:
```scheme
(define (slice lst i k)
  (cond((null? lst) '())
        (else (drop (take lst k) i)))) ; use the problems 16 & 17
```

## Nineteenth problem: *
```scheme
(define (rotate lst n)
  (define sublist lst)
  (cond((null? lst) '())
       ((< n 0) (append (cdr (split lst (+ (length lst) n))) (car (split lst (+ (length lst) n)))) )
       (else (append  (slice lst n (length lst)) (take sublist n) ))))
```

## Twentyth problem:
```scheme
(define (remove-at lst n)
  (cond
       ((null? lst)'())
       ((= n 1) (cdr lst))
       (else(append (list (car lst)) (remove-at (cdr lst) (- n 1))))))
```

## Twenty-first problem:
```scheme

```

## Twenty-second problem:
```scheme

```

## Twenty-third problem:
```scheme

```

- ## Arithmetic

## Thirtieth problem:
```scheme

```

## Thirty-first problem:
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
