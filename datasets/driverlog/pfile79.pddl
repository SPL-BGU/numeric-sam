(define (problem DLOG-4-5-3)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	driver4 - driver
	truck1 - truck
	truck2 - truck
	truck3 - truck
	truck4 - truck
	truck5 - truck
	package1 - obj
	package2 - obj
	package3 - obj
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
	(at driver4 s1)
	(at truck1 s1)
	(empty truck1)
	(at truck2 s2)
	(empty truck2)
	(at truck3 s2)
	(empty truck3)
	(at truck4 s2)
	(empty truck4)
	(at truck5 s2)
	(empty truck5)
	(at package1 s2)
	(at package2 s2)
	(at package3 s0)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 60)
	(= (time-to-walk p0-1 s0) 60)
	(= (time-to-walk s1 p0-1) 15)
	(= (time-to-walk p0-1 s1) 15)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 12)
	(= (time-to-walk p1-2 s1) 12)
	(= (time-to-walk s2 p1-2) 31)
	(= (time-to-walk p1-2 s2) 31)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 68)
	(= (time-to-drive s2 s0) 68)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 28)
	(= (time-to-drive s0 s1) 28)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 35)
	(= (time-to-drive s1 s2) 35)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s0)
	(at driver2 s0)
	(at driver3 s2)
	(at truck1 s2)
	(at truck2 s2)
	(at truck3 s0)
	(at truck4 s2)
	(at truck5 s2)
	(at package1 s1)
	(at package2 s2)
	(at package3 s0)
	))

(:metric minimize (+ (+ (* 1  (total-time)) (* 4  (driven))) (* 2  (walked))))

)
