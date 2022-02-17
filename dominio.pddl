;Header and description

(define (domain domain_name)

;remove requirements that are not needed
(:requirements :strips :fluents :durative-actions :timed-initial-literals :typing :conditional-effects :negative-preconditions :duration-inequalities :equality)

(:types ;todo: enumerate types and their hierarchy here, e.g. car truck bus - vehicle
)

       
; un-comment following line if constants are needed
(:constants
    train
 )

(:predicates ;todo: define predicates here
(onOrIn ?object ?location) (ready ?a) (connected ?a ?b) (full ?a)
)



(:functions
(storage ?a)
(trainLocation)
(maxStorage ?a)
)

;define actions here
(:action
load
    :parameters (?box ?location)
    :precondition (and
    (not (=(maxStorage ?train)(storage ?train)))
    (onOrIn train ?location))
    :effect (and 
    (onOrIn ?box train)
    (not (onOrIn ?box ?location))
    (decrease(storage ?location) 1)
    (assign (trainLocation) ?location)
)
move
    :parameters (?l1 ?l2)
    :precondition (and
    =(trainLocation ?l1)
    (connected, ?l1, ?l2)
    )
unload
    :parameters (?box ?location)
    :precondition and
    =trainLocation(?location)
    not(=(maxStorage(?location)storage(?location))
    :effect and
    when (trainLocation 
    ) 
)