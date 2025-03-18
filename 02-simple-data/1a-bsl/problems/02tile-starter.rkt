;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
;; #reader(lib "htdp-beginner-reader.ss" "lang")((modname 02tile-starter) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;; tile-starter.rkt

; 
; PROBLEM:
; 
; Use the DrRacket square, beside and above functions to create an image like this one:
; 
; .
; 
; If you prefer to be more creative feel free to do so. You can use other DrRacket image 
; functions to make a more interesting or more attractive image.
; 


(define (c_sq color)
         (square 25 "solid" color))

(define (two_rec color1 color2)
         (above (c_sq color1)
                (c_sq color2)))

(beside (two_rec "blue" "yellow")
        (two_rec "yellow" "blue"))
        