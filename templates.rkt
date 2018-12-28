#lang scribble/html

@(provide (all-defined-out))

@(define (header . v)
   @head{
     @meta[charset: "utf-8"]
     @meta[name: "viewport" 'content: "width=device-width, initial-scale=1"]
     @link[href: "css/custom.css" rel: "stylesheet"]
     @title[v]{ - Andy's Blog }})