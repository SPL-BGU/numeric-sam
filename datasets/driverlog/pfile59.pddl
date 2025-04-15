(define (problem DLOG-4-5-4)
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
	truck5 - truck
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
	p2-1 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s1)
	(at driver3 s0)
	(at driver4 s0)
	(at truck1 s1)
	(empty truck1)
	(at truck2 s1)
	(empty truck2)
	(at truck3 s1)
	(empty truck3)
	(at truck4 s0)
	(empty truck4)
	(at truck5 s1)
	(empty truck5)
	(at package1 s2)
	(at package2 s2)
	(at package3 s0)
	(at package4 s0)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(= (time-to-walk s1 p1-0) 66)
	(= (time-to-walk p1-0 s1) 66)
	(= (time-to-walk s0 p1-0) 25)
	(= (time-to-walk p1-0 s0) 25)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 33)
	(= (time-to-walk p1-2 s1) 33)
	(= (time-to-walk s2 p1-2) 61)
	(= (time-to-walk p1-2 s2) 61)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(= (time-to-walk s2 p2-0) 75)
	(= (time-to-walk p2-0 s2) 75)
	(= (time-to-walk s0 p2-0) 47)
	(= (time-to-walk p2-0 s0) 47)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 88)
	(= (time-to-drive s2 s0) 88)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 27)
	(= (time-to-drive s0 s1) 27)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 54)
	(= (time-to-drive s1 s2) 54)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver3 s1)
	(at driver4 s2)
	(at truck2 s0)
	(at truck3 s1)
	(at truck4 s2)
	(at truck5 s2)
	(at package1 s0)
	(at package2 s0)
	(at package3 s2)
	(at package4 s0)
	))

(:metric minimize (+ (+ (* 4  (total-time)) (* 4  (driven))) (* 1  (walked))))

)
