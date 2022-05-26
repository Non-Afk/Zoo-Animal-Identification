         CLIPS (V6.24 06/15/06)
CLIPS> (defrule q1 
(initial-fact) 
=> 
(printout t "Is the animal has hair? (y/n)" crlf) 
(bind ?hair(read)) 
(assert(hair ?hair)))
CLIPS> (defrule q2 
(initial-fact) 
=> 
(printout t "Is the animal has claws? (y/n)" crlf) 
(bind ?claws(read)) 
(assert(claws ?claws)))
CLIPS> (defrule q3 
(initial-fact) 
=> 
(printout t "Is the animal has pointed teech? (y/n)" crlf) 
(bind ?pointed_teeth(read)) 
(assert(pointed_teeth ?pointed_teeth)))
CLIPS> (defrule q4 
(initial-fact) 
=> 
(printout t "Is the animal's eyes pointed forward? (y/n)" crlf) 
(bind ?eyes_point_forward(read)) 
(assert(eyes_point_forward ?eyes_point_forward)))
CLIPS> (defrule q5 
(initial-fact) 
=> 
(printout t "Is the animal has a tawny colour? (y/n)" crlf) 
(bind ?tawny_colour(read)) 
(assert(tawny_colour ?tawny_colour)))
CLIPS> (defrule q6 
(initial-fact) 
=> 
(printout t "Is the animal has dark spots? (y/n)" crlf) 
(bind ?dark_spots(read)) 
(assert(dark_spots ?dark_spots)))
CLIPS> (defrule R1 
(hair ?hair) 
=> 
(if (eq ?hair y) 
then  
(printout t "It is a mammal" crlf) 
(assert (mammal y))))
CLIPS> (defrule R2 
(milk ?milk) 
=> 
(if(eq ?milk y) 
then  
(printout t "It is a mammal" crlf) 
(assert (mammal y))))
CLIPS> (defrule R3 
(father ?father) 
=> 
(if(eq ?father y) 
then  
(assert(bird y)) 
(printout t "It is a bird" crlf)))
CLIPS> (defrule R4 
(flies ?flies) 
(lays_eggs ?lays_eggs) 
=> 
(if(and(eq ?files y) 
(eq ?lays_eggs)) 
then 
(assert(bird y)) 
(printout t "It is a bird" crlf)))
[ARGACCES4] Function eq expected at least 2 argument(s)

ERROR:
(defrule MAIN::R4
   (flies ?flies)
   (lays_eggs ?lays_eggs)
   =>
   (if (and (eq ?files y) (eq ?lays_eggs)
CLIPS> (defrule R4 
(flies ?flies) 
(lays_eggs ?lays_eggs) 
=> 
(if(and(eq ?files y) 
(eq ?lays_eggs y)) 
then 
(assert(bird y)) 
(printout t "It is a bird" crlf)))

[PRCCODE3] Undefined variable files referenced in RHS of defrule.

ERROR:
(defrule MAIN::R4
   (flies ?flies)
   (lays_eggs ?lays_eggs)
   =>
   (if (and (eq ?files y) (eq ?lays_eggs y))
      then
      (assert (bird y))
      (printout t "It is a bird" crlf)))
CLIPS> (defrule R4 
(flies ?flies) 
(lays_eggs ?lays_eggs) 
=> 
(if(and(eq ?files y) 
(eq ?lays_eggs y)) 
then 
(assert(bird y)) 
(printout t "It is a bird" crlf)))

[PRCCODE3] Undefined variable files referenced in RHS of defrule.

ERROR:
(defrule MAIN::R4
   (flies ?flies)
   (lays_eggs ?lays_eggs)
   =>
   (if (and (eq ?files y) (eq ?lays_eggs y))
      then
      (assert (bird y))
      (printout t "It is a bird" crlf)))
CLIPS> (defrule R5 
(mammal ?mammal) 
(meat ?meat) 
=> 
(if(and(eq ?mammal y) 
(eq ?meat y)) 
then 
(assert (carnivore y)) 
(printout t "It is a carnivore" crlf)))
CLIPS> (defrule R6 
(mammal ?mammal) 
(pointed_teeth ?pointed_teeth) 
(claws ?claws) 
(eyes_point_forward ?eyes_point_forward) 
=> 
(if(and(eq ?mammal y) 
(eq ?pointed_teeth y) 
(eq ?claws y) 
(eq ?eyes_point_forward)) 
then 
(assert (carnivore y)) 
(printout t "It is a carnivore" crlf)))
[ARGACCES4] Function eq expected at least 2 argument(s)

ERROR:
(defrule MAIN::R6
   (mammal ?mammal)
   (pointed_teeth ?pointed_teeth)
   (claws ?claws)
   (eyes_point_forward ?eyes_point_forward)
   =>
   (if (and (eq ?mammal y) (eq ?pointed_teeth y) (eq ?claws y) (eq ?eyes_point_forward)
CLIPS> (defrule R6 
(mammal ?mammal) 
(pointed_teeth ?pointed_teeth) 
(claws ?claws) 
(eyes_point_forward ?eyes_point_forward) 
=> 
(if(and(eq ?mammal y) 
(eq ?pointed_teeth y) 
(eq ?claws y) 
(eq ?eyes_point_forward y)) 
then 
(assert (carnivore y)) 
(printout t "It is a carnivore" crlf)))
CLIPS> (defrule R7 
(mammal ?mammal) 
(hooves ?hooves) 
=> 
(if(and(eq ?mammal y) 
(eq ?hooves y)) 
then 
(assert (ungulate y)) 
(printout t "It is an ungulate" crlf)))
CLIPS> (defrule R8 
(mammal ?mammal) 
(chews_cud ?chews_cud) 
=> 
(if(and(eq ?mammal y) 
(eq ?chews_cud y)) 
then 
(assert (even_toed y)) 
(assert (ungulate y)) 
(printout t "It is an ungulate" crlf)))
CLIPS> (defrule R9 
(carnivore ?carnivore) 
(tawny_colour ?tawny_colour) 
(dark_spots ?dark_spots) 
=> 
(if(and(eq ?carnivore y) 
(eq ?tawny_colour y) 
(eq ?dark_spots y)) 
then 
(assert (cheetah y)) 
(printout t "It is a cheetah" crlf)))
CLIPS> (defrule R10 
(carnivore ?carnivore) 
(tawny_colour ?tawny_colour) 
(black_stripes ?black_stripes) 
=> 
(if(and(eq ?carnivore y) 
(eq ?tawny_colour y) 
(eq ?black_stripes y)) 
then 
(assert (tiger y)) 
(printout t "It is a tiger" crlf)))
CLIPS> (defrule R11 
(ungulate ?ungulate) 
(long_legs ?long_legs) 
(long_neck ?long_neck) 
(dark_spots ?dark_spots) 
=> 
(if(and(eq ?ungulate y) 
(eq ?long_legs y) 
(eq ?long_neck y) 
(eq ?dark_spots y)) 
then 
(assert (giraffe y)) 
(printout t "It is a giraffe" crlf)))
CLIPS> (defrule R12 
(ungulate ?ungulate) 
(white_colour ?white_colour) 
(black_stripes ?black_stripes) 
=> 
(if(and(eq ?ungulate y) 
(eq ?white_colour y) 
(eq ?black_stripes y)) 
then 
(assert (zebra y)) 
(printout t "It is a zebra" crlf)))
CLIPS> (defrule R13 
(bird ?bird) 
(not_fly ?not_fly) 
(long_legs ?long_legs) 
(long_neck ?long_neck) 
(black_white ?black_white) 
=> 
(if(and(eq ?bird y) 
(eq ?not_fly y) 
(eq ?long_legs y) 
(eq ?long_neck y) 
(eq ?black_white y)) 
then 
(assert (ostrich y)) 
(printout t "It is an ostrich" crlf)))
CLIPS> (defrule R14 
(bird ?bird) 
(not_fly ?not_fly) 
(swims ?swims) 
(black_white ?black_white) 
=> 
(if(and(eq ?bird y) 
(eq ?not_fly y) 
(eq ?swims y) 
(eq ?black_white y)) 
then 
(assert (penguin y)) 
(printout t "It is a penguin" crlf)))
CLIPS> (defrule R15 
(bird ?bird) 
(good_flier ?good_flier) 
=> 
(if(and(eq ?bird y) 
(eq ?good_flier y)) 
then 
(assert (albatross y)) 
(printout t "It is an albatross" crlf)))
CLIPS> (defrule R4 
(flies ?flies) 
(lays_eggs ?lays_eggs) 
=> 
(if(and(eq ?flies y) 
(eq ?lays_eggs y)) 
then 
(assert(bird y)) 
(printout t "It is a bird" crlf)))
CLIPS> (reset)
CLIPS> (run)
Is the animal has hair? (y/n)
y
It is a mammal
Is the animal has claws? (y/n)
y
Is the animal has pointed teech? (y/n)
y
Is the animal's eyes pointed forward? (y/n)
y
It is a carnivore
Is the animal has a tawny colour? (y/n)
y
Is the animal has dark spots? (y/n)
y
It is a cheetah
CLIPS> 
