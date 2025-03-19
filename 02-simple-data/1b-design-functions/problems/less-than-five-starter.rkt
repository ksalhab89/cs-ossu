;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname less-than-five-starter) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

;; less-than-five-starter.rkt

; 
; PROBLEM:
; 
; DESIGN function that consumes a string and determines whether its length is
; less than 5.  Follow the HtDF recipe and leave behind commented out versions 
; of the stub and template.
; 


;; String -> Boolean
;; return true if a string-length is less than 5, otherwise false

(check-expect (less_than_five? "a") true)
(check-expect (less_than_five? "river") false)
(check-expect (less_than_five? "blabla") false)


;; (define (less_than_five? str) false)          ;stub

;;(define (less_than_five? str)
;;  (... str))                                   ;template

(define (less_than_five? str)
  (< (string-length str) 5))
