#lang scribble/html

@require[racket/dict
         "files.rkt"]

@(provide (all-defined-out))

@(define (header . v)
   @head{
     @meta[charset: "utf-8"]
     @meta[name: "viewport" 'content: "width=device-width, initial-scale=1"]
     @link[href: "css/custom.css" rel: "stylesheet"]
     @title[v]{ - Andy's Blog }})

@(define (navbar . current-page)
   @element/not-empty["nav" class: "navbar navbar-inverse"]{
     @div[class: "navbar-inner"]{
       @div[class: "container"]{
         @div[class: "navbar-header"]{
           @button[type: "button"
                   class: "navbar-toggle collapsed"
                   data-toggle: "collapse"
                   data-target: "#navbar"
                   aria-expanded: "false"
                   aria-controls: "navbar"]{
             @span[class: "sr-only"]{Toggle navigation}
             @span[class: "icon-bar"]
             @span[class: "icon-bar"]
             @span[class: "icon-bar"]}
           @h1{Andy's Blog}}
         @div[id: "navbar" class: "navbar-collapse collapse"]{
           @ul[class: "nav navbar-nav pull-right"]{
             @(for/list ([title-pair (in-list html-file-table)])
               (if (equal? (car title-pair) (car current-page))
                 @li[role: "presentation" class: "active"]{@a[href: "#" (car title-pair)]}
                 @li[role: "presentation"]{@a[href: (cdr title-pair) (car title-pair)]}))}}}}})

@(define (footer . v)
   (list
    @div[class: "footer-color"]{
    @div[class: "container"]{
      @element/not-empty["footer" class: "footer float:right"]{
        @div[class: "copyright"]{
          @p[style: "float:left"]{Copyright © 2016 Leif Andersen, Andy Keep}}
        @div[class: "pull-right"]{}}}}))



                 
@(define (page #:title title . content)
  (list
    @doctype{html}
    @html[lang: "en"]{
      @header{title}
      @body{
        @navbar{title}
        @content
        @footer{}
  }}))