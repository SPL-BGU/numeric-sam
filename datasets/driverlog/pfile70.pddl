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
	p1-0 - location
	p1-2 - location
	p2-1 - location
	)
	(:init
	(at driver1 s1)
	(at driver2 s1)
	(at driver3 s2)
	(at driver4 s1)
	(at truck1 s2)
	(empty truck1)
	(at truck2 s0)
	(empty truck2)
	(at truck3 s2)
	(empty truck3)
	(at truck4 s1)
	(empty truck4)
	(at truck5 s1)
	(empty truck5)
	(at package1 s2)
	(at package2 s1)
	(at package3 s2)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 52)
	(= (time-to-walk p0-1 s0) 52)
	(= (time-to-walk s1 p0-1) 62)
	(= (time-to-walk p0-1 s1) 62)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 85)
	(= (time-to-walk p1-2 s1) 85)
	(= (time-to-walk s2 p1-2) 39)
	(= (time-to-walk p1-2 s2) 39)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 8)
	(= (time-to-drive s0 s1) 8)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 28)
	(= (time-to-drive s2 s1) 28)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver2 s2)
	(at driver3 s0)
	(at truck2 s1)
	(at truck3 s2)
	(at truck4 s0)
	(at truck5 s2)
	(at package1 s2)
	(at package2 s0)
	(at package3 s2)
	))

(:metric minimize (+ (+ (* 3  (total-time)) (* 4  (driven))) (* 2  (walked))))

)
