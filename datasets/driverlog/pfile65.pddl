(define (problem DLOG-2-2-3)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	truck1 - truck
	truck2 - truck
	package1 - obj
	package2 - obj
	package3 - obj
	s0 - location
	s1 - location
	s2 - location
	p1-0 - location
	p2-1 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s2)
	(at truck1 s0)
	(empty truck1)
	(at truck2 s0)
	(empty truck2)
	(at package1 s0)
	(at package2 s1)
	(at package3 s0)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(= (time-to-walk s1 p1-0) 81)
	(= (time-to-walk p1-0 s1) 81)
	(= (time-to-walk s0 p1-0) 92)
	(= (time-to-walk p1-0 s0) 92)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(= (time-to-walk s2 p2-1) 35)
	(= (time-to-walk p2-1 s2) 35)
	(= (time-to-walk s1 p2-1) 40)
	(= (time-to-walk p2-1 s1) 40)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 48)
	(= (time-to-drive s2 s0) 48)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 92)
	(= (time-to-drive s0 s1) 92)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 1)
	(= (time-to-drive s1 s2) 1)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s0)
	(at driver2 s2)
	(at truck1 s1)
	(at truck2 s0)
	(at package1 s0)
	(at package2 s1)
	(at package3 s0)
	))

(:metric minimize (+ (+ (* 2  (total-time)) (* 4  (driven))) (* 3  (walked))))

)
