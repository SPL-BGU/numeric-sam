(define (problem DLOG-3-2-10)
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
	p1-2 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s2)
	(at driver3 s1)
	(at truck1 s2)
	(empty truck1)
	(at truck2 s2)
	(empty truck2)
	(at package1 s0)
	(at package2 s1)
	(at package3 s1)
	(at package4 s2)
	(at package5 s0)
	(at package6 s0)
	(at package7 s0)
	(at package8 s1)
	(at package9 s2)
	(at package10 s0)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 30)
	(= (time-to-walk p0-1 s0) 30)
	(= (time-to-walk s1 p0-1) 60)
	(= (time-to-walk p0-1 s1) 60)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 26)
	(= (time-to-walk p1-2 s1) 26)
	(= (time-to-walk s2 p1-2) 56)
	(= (time-to-walk p1-2 s2) 56)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 8)
	(= (time-to-drive s2 s0) 8)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 55)
	(= (time-to-drive s0 s1) 55)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 58)
	(= (time-to-drive s1 s2) 58)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s2)
	(at driver2 s1)
	(at driver3 s2)
	(at package1 s2)
	(at package3 s0)
	(at package4 s2)
	(at package5 s2)
	(at package6 s0)
	(at package7 s0)
	(at package8 s2)
	(at package9 s1)
	(at package10 s1)
	))

(:metric minimize (+ (+ (* 2  (total-time)) (* 3  (driven))) (* 2  (walked))))

)
