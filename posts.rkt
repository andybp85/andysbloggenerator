#lang scribble/html

@require[xml
         markdown/scrib
         scribble/decode
         "templates.rkt"
         "loader.rkt"]

@(define (xexprs->xml xs)
  (map (lambda (x) (write-xml/content (xexpr->xml x))) xs))

@page[#:title "Posts"]{
 @(map (lambda (p) (xexprs->xml (hash-ref (car posts) 'content))) posts)
}
