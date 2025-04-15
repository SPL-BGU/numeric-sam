(define (problem DLOG-2-3-2)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	truck1 - truck
	truck2 - truck
	truck3 - truck
	package1 - obj
	package2 - obj
	s0 - location
	s1 - location
	s2 - location
	p0-1 - location
	p2-0 - location
	p2-1 - location
	)
	(:init
	(at driver1 s1)
	(at driver2 s1)
	(at truck1 s1)
	(empty truck1)
	(at truck2 s1)
	(empty truck2)
	(at truck3 s0)
	(empty truck3)
	(at package1 s1)
	(at package2 s0)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 48)
	(= (time-to-walk p0-1 s0) 48)
	(= (time-to-walk s1 p0-1) 56)
	(= (time-to-walk p0-1 s1) 56)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(= (time-to-walk s2 p2-0) 70)
	(= (time-to-walk p2-0 s2) 70)
	(= (time-to-walk s0 p2-0) 85)
	(= (time-to-walk p2-0 s0) 85)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(= (time-to-walk s2 p2-1) 95)
	(= (time-to-walk p2-1 s2) 95)
	(= (time-to-walk s1 p2-1) 19)
	(= (time-to-walk p2-1 s1) 19)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 71)
	(= (time-to-drive s2 s0) 71)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 9)
	(= (time-to-drive s0 s1) 9)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 9)
	(= (time-to-drive s1 s2) 9)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s2)
	(at truck1 s1)
	(at truck3 s2)
	(at package1 s2)
	(at package2 s2)
	))

(:metric minimize (+ (+ (* 1  (total-time)) (* 2  (driven))) (* 4  (walked))))

)
