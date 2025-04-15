(define (problem DLOG-2-4-3)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
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
	p0-1 - location
	p1-2 - location
	p2-0 - location
	)
	(:init
	(at driver1 s2)
	(at driver2 s1)
	(at truck1 s1)
	(empty truck1)
	(at truck2 s1)
	(empty truck2)
	(at truck3 s2)
	(empty truck3)
	(at truck4 s2)
	(empty truck4)
	(at package1 s0)
	(at package2 s1)
	(at package3 s2)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 43)
	(= (time-to-walk p0-1 s0) 43)
	(= (time-to-walk s1 p0-1) 21)
	(= (time-to-walk p0-1 s1) 21)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 36)
	(= (time-to-walk p1-2 s1) 36)
	(= (time-to-walk s2 p1-2) 27)
	(= (time-to-walk p1-2 s2) 27)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(= (time-to-walk s2 p2-0) 19)
	(= (time-to-walk p2-0 s2) 19)
	(= (time-to-walk s0 p2-0) 63)
	(= (time-to-walk p2-0 s0) 63)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 19)
	(= (time-to-drive s1 s0) 19)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 82)
	(= (time-to-drive s2 s0) 82)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 94)
	(= (time-to-drive s1 s2) 94)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s0)
	(at driver2 s0)
	(at truck2 s0)
	(at truck4 s2)
	(at package1 s2)
	(at package3 s2)
	))

(:metric minimize (+ (+ (* 3  (total-time)) (* 2  (driven))) (* 1  (walked))))

)
