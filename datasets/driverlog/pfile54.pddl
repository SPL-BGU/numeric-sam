(define (problem DLOG-3-3-9)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	truck1 - truck
	truck2 - truck
	truck3 - truck
	package1 - obj
	package2 - obj
	package3 - obj
	package4 - obj
	package5 - obj
	package6 - obj
	package7 - obj
	package8 - obj
	package9 - obj
	s0 - location
	s1 - location
	s2 - location
	p0-1 - location
	p0-2 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s0)
	(at driver3 s2)
	(at truck1 s1)
	(empty truck1)
	(at truck2 s2)
	(empty truck2)
	(at truck3 s2)
	(empty truck3)
	(at package1 s0)
	(at package2 s1)
	(at package3 s2)
	(at package4 s2)
	(at package5 s2)
	(at package6 s1)
	(at package7 s0)
	(at package8 s0)
	(at package9 s0)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 90)
	(= (time-to-walk p0-1 s0) 90)
	(= (time-to-walk s1 p0-1) 60)
	(= (time-to-walk p0-1 s1) 60)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(= (time-to-walk s0 p0-2) 28)
	(= (time-to-walk p0-2 s0) 28)
	(= (time-to-walk s2 p0-2) 45)
	(= (time-to-walk p0-2 s2) 45)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 67)
	(= (time-to-drive s1 s0) 67)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 73)
	(= (time-to-drive s2 s0) 73)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 45)
	(= (time-to-drive s1 s2) 45)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s0)
	(at driver2 s1)
	(at driver3 s0)
	(at truck2 s0)
	(at truck3 s0)
	(at package2 s1)
	(at package3 s0)
	(at package4 s0)
	(at package6 s1)
	(at package7 s0)
	(at package8 s2)
	(at package9 s2)
	))

(:metric minimize (+ (+ (* 1  (total-time)) (* 1  (driven))) (* 3  (walked))))

)
