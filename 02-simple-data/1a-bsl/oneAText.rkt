;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
;; #reader(lib "htdp-beginner-reader.ss" "lang")((modname oneAText) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

(+ 3 4)
(+ 3 (* 2 3))
(/ 12 ( * 2 3 ) )
(sqr 3)
(sqrt 9)
(sqrt (+ (sqr 3) (sqr 4)))


"apple"
(string-append "this is" " " "an apple")
(string-length "this is a whole string")
(substring "this is a string" 2 7)


(circle 10 "solid" "red")
(rectangle 30 60 "outline" "blue")
(text "hello" 24 "orange")
(above (circle 20 "solid" "red")
       (circle 40 "solid" "yellow")
       (circle 60 "solid" "green"))
(beside (circle 20 "solid" "red")
       (circle 40 "solid" "yellow")
       (circle 60 "solid" "green"))
(overlay (circle 20 "solid" "red")
       (circle 40 "solid" "yellow")
       (circle 60 "solid" "green"))


(define WIDTH 400)
(define HEIGHT 600)

(define CAT .)

(define RCAT (rotate -30 CAT))
(define LCAT (rotate 30 CAT))


(define (bulb c)
  (circle 40 "solid" c))

(bulb "purple")

(above (bulb "red")
       (bulb "yellow")
       (bulb "green"))

(bulb (string-append "re" "d"))

;true
;false

(define width 100)
(define height 100)

(> width height)
(>= width height)

(= 1 2)
(> 3 9)


(string=? "foo" "bar")

(define I1 (rectangle 10 20 "solid" "red"))
(define I2 (rectangle 20 10 "solid" "blue"))



10

(if (< (image-width I1)
       (image-width I2))
    "tall"
    "wide")

(if (< (image-width I2)
       (image-height I2))
       (image-width I2)
       (image-height I2))

(and (< 2 3)
     (> 9 9))

(define (max-dim img)
         (if (> (image-width img) (image-height img))
                (image-width img)
                (image-height img)))

(max-dim (rectangle 10 20 "solid" "blue"))
