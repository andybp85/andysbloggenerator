#lang scribble/html

@require["templates.rkt"]

@doctype{html}
@html[lang: "en"]{
  @header{Home}
    @body{}
    }

@;(define (create-index-html)
@;  (htmlo
@;   (head
@;    (title "Andy's Blog"))
@;   (body)))

@;(define out-port (open-output-file "../andybp85.github.io/indext.html" #:exists 'replace))
@;(write (create-index-html) out-port)
@;(close-output-port out-port)

@;(call-with-output-file "../andybp85.github.io/indext.html" #:exists 'replace
@;  (lambda (out)
@;    (pretty-print
@;     (output-xml (doctype 'html) out)
@;     (output-xml  (create-index-html) out))))