(define (problem DLOG-2-2-5)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	truck1 - truck
	truck2 - truck
	package1 - obj
	package2 - obj
	package3 - obj
	package4 - obj
	package5 - obj
	s0 - location
	s1 - location
	s2 - location
	p0-1 - location
	p0-2 - location
	p2-1 - location
	)
	(:init
	(at driver1 s2)
	(at driver2 s1)
	(at truck1 s0)
	(empty truck1)
	(at truck2 s2)
	(empty truck2)
	(at package1 s0)
	(at package2 s0)
	(at package3 s2)
	(at package4 s1)
	(at package5 s2)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 83)
	(= (time-to-walk p0-1 s0) 83)
	(= (time-to-walk s1 p0-1) 80)
	(= (time-to-walk p0-1 s1) 80)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(= (time-to-walk s0 p0-2) 72)
	(= (time-to-walk p0-2 s0) 72)
	(= (time-to-walk s2 p0-2) 47)
	(= (time-to-walk p0-2 s2) 47)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(= (time-to-walk s2 p2-1) 49)
	(= (time-to-walk p2-1 s2) 49)
	(= (time-to-walk s1 p2-1) 100)
	(= (time-to-walk p2-1 s1) 100)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 52)
	(= (time-to-drive s2 s0) 52)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 91)
	(= (time-to-drive s0 s1) 91)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 1)
	(= (time-to-drive s1 s2) 1)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver2 s0)
	(at truck1 s0)
	(at truck2 s2)
	(at package1 s0)
	(at package2 s0)
	(at package3 s2)
	(at package4 s2)
	(at package5 s0)
	))

(:metric minimize (+ (+ (* 2  (total-time)) (* 1  (driven))) (* 2  (walked))))

)
