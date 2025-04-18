(define (problem DLOG-4-4-3)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	driver4 - driver
	truck1 - truck
	truck2 - truck
	truck3 - truck
	truck4 - truck
	package1 - obj
	package2 - obj
	package3 - obj
	s0 - location
	s1 - location
	s2 - location
	p1-0 - location
	p1-2 - location
	p2-0 - location
	)
	(:init
	(at driver1 s1)
	(at driver2 s1)
	(at driver3 s1)
	(at driver4 s1)
	(at truck1 s0)
	(empty truck1)
	(at truck2 s0)
	(empty truck2)
	(at truck3 s2)
	(empty truck3)
	(at truck4 s1)
	(empty truck4)
	(at package1 s1)
	(at package2 s2)
	(at package3 s2)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(= (time-to-walk s1 p1-0) 13)
	(= (time-to-walk p1-0 s1) 13)
	(= (time-to-walk s0 p1-0) 80)
	(= (time-to-walk p1-0 s0) 80)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 18)
	(= (time-to-walk p1-2 s1) 18)
	(= (time-to-walk s2 p1-2) 23)
	(= (time-to-walk p1-2 s2) 23)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(= (time-to-walk s2 p2-0) 42)
	(= (time-to-walk p2-0 s2) 42)
	(= (time-to-walk s0 p2-0) 23)
	(= (time-to-walk p2-0 s0) 23)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 60)
	(= (time-to-drive s0 s1) 60)
	(link s2 s0)
	(link s0 s2)
	(= (time-to-drive s2 s0) 84)
	(= (time-to-drive s0 s2) 84)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 10)
	(= (time-to-drive s1 s2) 10)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s2)
	(at driver3 s0)
	(at truck4 s1)
	(at package1 s2)
	(at package2 s2)
	(at package3 s0)
	))

(:metric minimize (+ (+ (* 3  (total-time)) (* 4  (driven))) (* 3  (walked))))

)
