(define (problem DLOG-4-5-2)
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
	s0 - location
	s1 - location
	s2 - location
	p0-1 - location
	p0-2 - location
	p2-0 - location
	p2-1 - location
	)
	(:init
	(at driver1 s2)
	(at driver2 s2)
	(at driver3 s2)
	(at driver4 s1)
	(at truck1 s2)
	(empty truck1)
	(at truck2 s2)
	(empty truck2)
	(at truck3 s1)
	(empty truck3)
	(at truck4 s0)
	(empty truck4)
	(at truck5 s0)
	(empty truck5)
	(at package1 s0)
	(at package2 s1)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 22)
	(= (time-to-walk p0-1 s0) 22)
	(= (time-to-walk s1 p0-1) 67)
	(= (time-to-walk p0-1 s1) 67)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(= (time-to-walk s0 p0-2) 35)
	(= (time-to-walk p0-2 s0) 35)
	(= (time-to-walk s2 p0-2) 65)
	(= (time-to-walk p0-2 s2) 65)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(= (time-to-walk s2 p2-1) 66)
	(= (time-to-walk p2-1 s2) 66)
	(= (time-to-walk s1 p2-1) 97)
	(= (time-to-walk p2-1 s1) 97)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 47)
	(= (time-to-drive s1 s0) 47)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 15)
	(= (time-to-drive s2 s0) 15)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 24)
	(= (time-to-drive s1 s2) 24)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s0)
	(at driver2 s2)
	(at driver3 s1)
	(at driver4 s0)
	(at truck1 s0)
	(at truck2 s1)
	(at truck3 s0)
	(at truck4 s2)
	(at package1 s0)
	(at package2 s2)
	))

(:metric minimize (+ (+ (* 2  (total-time)) (* 4  (driven))) (* 2  (walked))))

)
