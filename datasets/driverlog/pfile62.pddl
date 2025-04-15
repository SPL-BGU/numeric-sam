(define (problem DLOG-2-3-5)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	truck1 - truck
	truck2 - truck
	truck3 - truck
	package1 - obj
	package2 - obj
	package3 - obj
	package4 - obj
	package5 - obj
	s0 - location
	s1 - location
	s2 - location
	p0-1 - location
	p1-2 - location
	p2-0 - location
	)
	(:init
	(at driver1 s1)
	(at driver2 s2)
	(at truck1 s1)
	(empty truck1)
	(at truck2 s1)
	(empty truck2)
	(at truck3 s0)
	(empty truck3)
	(at package1 s1)
	(at package2 s0)
	(at package3 s2)
	(at package4 s2)
	(at package5 s0)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 32)
	(= (time-to-walk p0-1 s0) 32)
	(= (time-to-walk s1 p0-1) 70)
	(= (time-to-walk p0-1 s1) 70)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 25)
	(= (time-to-walk p1-2 s1) 25)
	(= (time-to-walk s2 p1-2) 77)
	(= (time-to-walk p1-2 s2) 77)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(= (time-to-walk s2 p2-0) 51)
	(= (time-to-walk p2-0 s2) 51)
	(= (time-to-walk s0 p2-0) 71)
	(= (time-to-walk p2-0 s0) 71)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 80)
	(= (time-to-drive s1 s0) 80)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 96)
	(= (time-to-drive s2 s0) 96)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 78)
	(= (time-to-drive s2 s1) 78)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s0)
	(at truck1 s0)
	(at truck2 s2)
	(at package1 s0)
	(at package2 s0)
	(at package3 s2)
	(at package4 s2)
	(at package5 s0)
	))

(:metric minimize (+ (+ (* 1  (total-time)) (* 3  (driven))) (* 3  (walked))))

)
