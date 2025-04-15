(define (problem DLOG-2-4-10)
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
	package4 - obj
	package5 - obj
	package6 - obj
	package7 - obj
	package8 - obj
	package9 - obj
	package10 - obj
	s0 - location
	s1 - location
	s2 - location
	p0-1 - location
	p0-2 - location
	p2-0 - location
	p2-1 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s1)
	(at truck1 s1)
	(empty truck1)
	(at truck2 s0)
	(empty truck2)
	(at truck3 s0)
	(empty truck3)
	(at truck4 s0)
	(empty truck4)
	(at package1 s2)
	(at package2 s1)
	(at package3 s2)
	(at package4 s0)
	(at package5 s0)
	(at package6 s0)
	(at package7 s0)
	(at package8 s1)
	(at package9 s2)
	(at package10 s2)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 71)
	(= (time-to-walk p0-1 s0) 71)
	(= (time-to-walk s1 p0-1) 32)
	(= (time-to-walk p0-1 s1) 32)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(= (time-to-walk s0 p0-2) 67)
	(= (time-to-walk p0-2 s0) 67)
	(= (time-to-walk s2 p0-2) 27)
	(= (time-to-walk p0-2 s2) 27)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(= (time-to-walk s2 p2-1) 74)
	(= (time-to-walk p2-1 s2) 74)
	(= (time-to-walk s1 p2-1) 35)
	(= (time-to-walk p2-1 s1) 35)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 89)
	(= (time-to-drive s1 s0) 89)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 61)
	(= (time-to-drive s2 s1) 61)
	(link s2 s0)
	(link s0 s2)
	(= (time-to-drive s2 s0) 50)
	(= (time-to-drive s0 s2) 50)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at truck1 s2)
	(at truck4 s1)
	(at package1 s2)
	(at package2 s2)
	(at package3 s0)
	(at package4 s2)
	(at package5 s0)
	(at package6 s1)
	(at package7 s2)
	(at package8 s0)
	(at package9 s0)
	(at package10 s1)
	))

(:metric minimize (+ (+ (* 3  (total-time)) (* 3  (driven))) (* 2  (walked))))

)
