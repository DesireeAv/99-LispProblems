; You can download here the complete file with the problems and try them!

; First problem:

(define my-last
  (lambda(x)
    (cond ((null? (cdr x))
          (car x))
    (else
     (my-last(cdr x))))))


; Second problem:

(define my-but-last
  (lambda(x)
    (cond ((null? (caddr x))
          x)
      (else(my-but-last (cdr x))))))


; Third problem:

(define (element-at x y)
  (cond ((= 1 y)
         (car x))
        (else (element-at (cdr x) (- y 1)))))


; Fourth problem:

(define number-elements
  (lambda(x)
    (cond ((null? (cdr x))
          1)
      (else(+ 1 (number-elements (cdr x)))))))


; Fifth problem:

(define reverse
  (lambda(x)
    (cond ((null? (cdr x))
          (list (car x)))
      (else(append  (reverse (cdr x)) (list(car x)))))))


; Sixth problem:

; Use the function from above
(define is-palindrome?
  (lambda (x)
    (cond ((null? x)
           #t)
          ((equal? x (reverse x)) ; here
           #t)
          (else #f))))


; Seventh problem:

(define (flatten lst)
  (cond ((null? lst) '())                    
        ((not (pair? lst)) (list lst))       
        (else (append (flatten (car lst))    
                      (flatten (cdr lst)))))) 


; Eighth problem:

(define (compress x)
  (cond ((null? x) '())               
        ((null? (cdr x)) (list (car x)))  
        ((equal? (car x) (cadr x))     ; If the current element equals the next element
         (compress (cdr x)))             ; Skip the current element and continue compressing
        (else                             ; Otherwise, keep the current element
         (cons (car x)                   
               (compress (cdr x))))))   


; Nineth problem:

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


; Tenth problem:

(define (encode x)
  (map (lambda (xx) 
         (list (length xx) (car xx)))   
       (pack x))) : uses here the problem 09                             


; Eleventh problem:

(define (encode-modified lst)
  (map (lambda (sublst)
         (append (cond
                   ((= (length sublst) 1)(car sublst))
                   (else(list (length sublst) (car sublst))))))
       (pack lst)))


; Twelfth problem: 


; Thirteenth problem:

(define (encode-modified lst)
  (map (lambda (sublst)
         (append (cond
                   ((= (length sublst) 1)(car sublst))
                   (else(list (length sublst) (car sublst))))))
       (pack lst)))


;Fourteenth problem:

(define (dupli lst)
  (cond ((null? lst) '())
        (else (append (list (car lst)) (list (car lst)) (dupli (cdr lst))))))


;Fifteenth problem:
(define (repeat-value n e)
  (cond ((= n 0) '())            
        (else (cons e             
                    (repeat-value (- n 1) e)))))  

(define (repli lst y)
  (cond ((null? lst) '())
        (else (append (repeat-value y (car lst)) (repli (cdr lst) y)))))

; Sixteenth problem:

(define (drop lst y)
  (drop-aux lst y y))

(define (drop-aux lst y count)
  (cond
    ((null? lst) '())
    ((= count 1) (drop-aux (cdr lst) y y))  
    (else (cons (car lst) (drop-aux (cdr lst) y (- count 1)))))) 
