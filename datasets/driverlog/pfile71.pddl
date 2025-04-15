(define (problem DLOG-3-3-2)
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
	s0 - location
	s1 - location
	s2 - location
	p0-1 - location
	p1-2 - location
	)
	(:init
	(at driver1 s2)
	(at driver2 s2)
	(at driver3 s0)
	(at truck1 s0)
	(empty truck1)
	(at truck2 s1)
	(empty truck2)
	(at truck3 s2)
	(empty truck3)
	(at package1 s1)
	(at package2 s1)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 69)
	(= (time-to-walk p0-1 s0) 69)
	(= (time-to-walk s1 p0-1) 37)
	(= (time-to-walk p0-1 s1) 37)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 23)
	(= (time-to-walk p1-2 s1) 23)
	(= (time-to-walk s2 p1-2) 37)
	(= (time-to-walk p1-2 s2) 37)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 77)
	(= (time-to-drive s1 s0) 77)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 52)
	(= (time-to-drive s2 s0) 52)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 60)
	(= (time-to-drive s1 s2) 60)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s1)
	(at driver2 s2)
	(at truck1 s1)
	(at truck3 s1)
	(at package1 s0)
	(at package2 s2)
	))

(:metric minimize (+ (+ (* 4  (total-time)) (* 1  (driven))) (* 1  (walked))))

)
