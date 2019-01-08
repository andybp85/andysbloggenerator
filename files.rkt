#lang racket

(provide html-file-table
         files
         current-image-files
         add-image-file!)

(require racket/runtime-path
         (for-syntax racket))

(module files-mod racket
  (provide file-table)
  (define file-table
    '(
      ("Home"              . "index.rkt")
      ("Posts"             . "posts.rkt")
      )))
(require 'files-mod
         (for-syntax 'files-mod))

(define-runtime-path-list files
  (dict-values file-table))

(define html-file-table
  (for/list ([f (in-list (dict-keys file-table))]
             [v (in-list (dict-values file-table))])
    (cons f (path-replace-suffix (build-path 'up v) ".html"))))

(define current-image-files* '())

(define (current-image-files)
  current-image-files*)

(define (add-image-file! file)
  (set! current-image-files* (cons file current-image-files*)))
