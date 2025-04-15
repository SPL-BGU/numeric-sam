(define (problem DLOG-2-4-6)
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
	s0 - location
	s1 - location
	s2 - location
	p0-2 - location
	p1-0 - location
	p2-1 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s0)
	(at truck1 s2)
	(empty truck1)
	(at truck2 s2)
	(empty truck2)
	(at truck3 s0)
	(empty truck3)
	(at truck4 s1)
	(empty truck4)
	(at package1 s0)
	(at package2 s0)
	(at package3 s2)
	(at package4 s1)
	(at package5 s2)
	(at package6 s0)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(= (time-to-walk s0 p0-2) 18)
	(= (time-to-walk p0-2 s0) 18)
	(= (time-to-walk s2 p0-2) 27)
	(= (time-to-walk p0-2 s2) 27)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(= (time-to-walk s1 p1-0) 55)
	(= (time-to-walk p1-0 s1) 55)
	(= (time-to-walk s0 p1-0) 9)
	(= (time-to-walk p1-0 s0) 9)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(= (time-to-walk s2 p2-1) 3)
	(= (time-to-walk p2-1 s2) 3)
	(= (time-to-walk s1 p2-1) 89)
	(= (time-to-walk p2-1 s1) 89)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 86)
	(= (time-to-drive s1 s0) 86)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 26)
	(= (time-to-drive s2 s0) 26)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 19)
	(= (time-to-drive s1 s2) 19)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s0)
	(at truck1 s1)
	(at truck2 s1)
	(at truck3 s0)
	(at package1 s1)
	(at package2 s1)
	(at package3 s2)
	(at package4 s0)
	(at package5 s0)
	))

(:metric minimize (+ (+ (* 3  (total-time)) (* 3  (driven))) (* 2  (walked))))

)
