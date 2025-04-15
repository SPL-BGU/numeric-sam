(define (problem DLOG-2-5-4)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
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
	p0-1 - location
	p2-0 - location
	p2-1 - location
	)
	(:init
	(at driver1 s1)
	(at driver2 s2)
	(at truck1 s0)
	(empty truck1)
	(at truck2 s1)
	(empty truck2)
	(at truck3 s2)
	(empty truck3)
	(at truck4 s0)
	(empty truck4)
	(at truck5 s1)
	(empty truck5)
	(at package1 s0)
	(at package2 s1)
	(at package3 s1)
	(at package4 s0)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 84)
	(= (time-to-walk p0-1 s0) 84)
	(= (time-to-walk s1 p0-1) 26)
	(= (time-to-walk p0-1 s1) 26)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(= (time-to-walk s2 p2-0) 57)
	(= (time-to-walk p2-0 s2) 57)
	(= (time-to-walk s0 p2-0) 15)
	(= (time-to-walk p2-0 s0) 15)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(= (time-to-walk s2 p2-1) 57)
	(= (time-to-walk p2-1 s2) 57)
	(= (time-to-walk s1 p2-1) 61)
	(= (time-to-walk p2-1 s1) 61)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 83)
	(= (time-to-drive s1 s0) 83)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 1)
	(= (time-to-drive s2 s0) 1)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 63)
	(= (time-to-drive s1 s2) 63)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s2)
	(at driver2 s2)
	(at truck1 s0)
	(at truck2 s0)
	(at truck3 s2)
	(at truck4 s2)
	(at truck5 s1)
	(at package1 s2)
	(at package2 s2)
	(at package3 s0)
	(at package4 s1)
	))

(:metric minimize (+ (+ (* 1  (total-time)) (* 4  (driven))) (* 3  (walked))))

)
