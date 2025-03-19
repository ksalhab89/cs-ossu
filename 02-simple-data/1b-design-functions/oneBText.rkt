;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname oneBText) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;Signature, purpose and stub.
;Define examples, wrap each in check-expect.
;Template and inventory.
;Code the function body.
;Test and debug until correct

;; Number --> Number
;; function should produce 2 times the given number
(check-expect (double 3) 6)        ;; test
(check-expect (double 1.2) 2.4)    ;; test

;; (define (double n) 0)              stub

;;(define (double n)               ;; template
;;  (... n))

(define (double n)                 ;; Function Body
        (* 2 n))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;Problem: Design a function that pluralizes a given word. (Pluralize means to convert the word to its plural form.)
;;For simplicity you may assume that just adding s is enough to pluralize a word.

;; String -> String
;; a function that returns plural of word (by adding s)

;;(define (plural str) "")

(check-expect (plural "coin") "coins")
(check-expect (plural "phone") "phones")

;;(define (plural str)
;;  (... str))

(define (plural str)
  (string-append str "s"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; String -> String
;; add ! to end of string

;(define (yell str) "")       stub

(check-expect (yell "hello") "hello!")
(check-expect (yell "123") "123!")

;(define (yell str)  
;  (... str))                 template

(define (yell str)
  (string-append str "!"))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;; Number -> Number 
;; calculate area of square using side length

;; (define (area side) 0)                 stub

(check-expect (area 10) 100)            ; tests
(check-expect (area 0) 0)

;;(define (area side) 
;;  (... side))                           template

(define (area side)                      ; body
  (* side side))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 2htdp/image)

;;Image -> Natural
;;calculate image area using its width and height


(check-expect (img-Area (square 2 "solid" "red")) 4)
(check-expect (img-Area (rectangle 10 10 "solid" "red")) 100)
              
;;(define (img-Area img) 0)                       stub

;;(define (img-Area img)
;;  (... img))                                     template


(define (img-Area img)
  (* (image-width img) (image-height img)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

