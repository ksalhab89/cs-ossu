;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname first-image-larger) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;; Image Image -> Boolean
;; Produce true if first image is larger (height and width are both larger) than second image, else false

(check-expect (larger-img? (circle 5 "solid" "red") (circle 10 "solid" "blue")) #f)
(check-expect (larger-img? (rectangle 5 10 "solid" "red") (rectangle 10 10 "solid" "blue")) #f) 
(check-expect (larger-img? (rectangle 10 5 "solid" "red") (rectangle 10 10 "solid" "blue")) #f)
(check-expect (larger-img? (square 10 "solid" "red") (square 10 "solid" "blue")) #f) 
(check-expect (larger-img? (circle 20 "solid" "red") (circle 10 "solid" "blue")) #t) 
(check-expect (larger-img? (rectangle 15 5 "solid" "red") (rectangle 10 10 "solid" "blue")) #f)
(check-expect (larger-img? (rectangle 5 15 "solid" "red") (rectangle 10 10 "solid" "blue")) #f) 

;;(define (first-img-larger? img1 img2) false)         ;stub

;;(define (first-img-larger? img1 img2)                ;template
;;  (... img1 img2))

(define (larger-img? img1 img2)
  (and (> (image-width img1) (image-width img2))
       (> (image-height img1) (image-height img2))))

