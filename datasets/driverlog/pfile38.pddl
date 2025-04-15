(define (problem DLOG-3-2-4)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	truck1 - truck
	truck2 - truck
	package1 - obj
	package2 - obj
	package3 - obj
	package4 - obj
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
	(at driver3 s2)
	(at truck1 s2)
	(empty truck1)
	(at truck2 s2)
	(empty truck2)
	(at package1 s1)
	(at package2 s0)
	(at package3 s2)
	(at package4 s0)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(= (time-to-walk s1 p1-0) 14)
	(= (time-to-walk p1-0 s1) 14)
	(= (time-to-walk s0 p1-0) 57)
	(= (time-to-walk p1-0 s0) 57)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 12)
	(= (time-to-walk p1-2 s1) 12)
	(= (time-to-walk s2 p1-2) 99)
	(= (time-to-walk p1-2 s2) 99)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(= (time-to-walk s2 p2-0) 94)
	(= (time-to-walk p2-0 s2) 94)
	(= (time-to-walk s0 p2-0) 74)
	(= (time-to-walk p2-0 s0) 74)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 57)
	(= (time-to-drive s1 s0) 57)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 42)
	(= (time-to-drive s2 s0) 42)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 33)
	(= (time-to-drive s1 s2) 33)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s1)
	(at driver2 s1)
	(at package1 s1)
	(at package2 s0)
	(at package3 s2)
	(at package4 s2)
	))

(:metric minimize (+ (+ (* 2  (total-time)) (* 2  (driven))) (* 4  (walked))))

)
