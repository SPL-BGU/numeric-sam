(define (problem DLOG-3-4-6)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
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
	p0-1 - location
	p1-2 - location
	p2-1 - location
	)
	(:init
	(at driver1 s1)
	(at driver2 s0)
	(at driver3 s0)
	(at truck1 s1)
	(empty truck1)
	(at truck2 s1)
	(empty truck2)
	(at truck3 s2)
	(empty truck3)
	(at truck4 s2)
	(empty truck4)
	(at package1 s2)
	(at package2 s2)
	(at package3 s2)
	(at package4 s2)
	(at package5 s0)
	(at package6 s1)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 31)
	(= (time-to-walk p0-1 s0) 31)
	(= (time-to-walk s1 p0-1) 68)
	(= (time-to-walk p0-1 s1) 68)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 28)
	(= (time-to-walk p1-2 s1) 28)
	(= (time-to-walk s2 p1-2) 35)
	(= (time-to-walk p1-2 s2) 35)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 12)
	(= (time-to-drive s2 s0) 12)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 96)
	(= (time-to-drive s0 s1) 96)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 27)
	(= (time-to-drive s1 s2) 27)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s0)
	(at driver2 s0)
	(at driver3 s2)
	(at truck2 s2)
	(at truck3 s2)
	(at truck4 s0)
	(at package1 s2)
	(at package2 s2)
	(at package3 s1)
	(at package4 s2)
	(at package5 s0)
	(at package6 s0)
	))

(:metric minimize (+ (+ (* 1  (total-time)) (* 3  (driven))) (* 4  (walked))))

)
