;Header and description

(define (domain domain_name)

;remove requirements that are not needed
(:requirements :strips :fluents :durative-actions :timed-initial-literals :typing :conditional-effects :negative-preconditions :duration-inequalities :equality)

(:types 
)

(:constants
    train
 )

(:predicates ;todo: define predicates here
(onOrIn ?object ?location) (ready ?a) (connected ?a ?b) (gone ?a) (isFactory ?a)
)

(:functions
(storage ?a)
(maxStorage ?a)
)

(:action
load
    :parameters (?box ?location)
    :precondition (and
    (not (=(maxStorage train)(storage train)))
    (onOrIn train ?location)
    )
    :effect (and 
    (onOrIn ?box train)
    (not (onOrIn ?box ?location))
    (decrease(storage ?location) 1) 
    (when (isFactory?location) (ready?box))
move
    :parameters (?l1 ?l2)
    :precondition (and
    (onOrIn train ?l1)
    (connected ?l1 ?l2)
    )
    :effect (assign (trainLocation) ?location)
unload
    :parameters (?box ?location)
    :precondition and
    =(trainLocation ?location)
    not(=(maxStorage ?location storage ?location))
    :effect and
) 
)