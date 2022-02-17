(define (problem problem_name) (:domain domain_name)
(:objects
port box1 box2 box3 box4 box5 box6 box7 box8 wh p1 - factory p2 - factory
)

(:init
    (= (storage p1)0)
    (=(storage p2)0)
    (=(storage wh)0)
    (not (ready box1))
    (not (ready box2))
    (not (ready box3))
    (not (ready box4))
    (not (ready box5))
    (not (ready box6))
    (not (ready box7))
    (not (ready box8))
    (=(storage train)0)
    (connected wh,port)
    (connected,port,p1)
    (connected,p1,p2)
    (connected,p2,wh)
)

(:goal (and
    ;todo: put the goal condition here
))

;un-comment the following line if metric is needed
;(:metric minimize (???))
)
