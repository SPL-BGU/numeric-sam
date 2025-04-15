(define (problem DLOG-3-2-2)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	truck1 - truck
	truck2 - truck
	package1 - obj
	package2 - obj
	s0 - location
	s1 - location
	s2 - location
	p1-0 - location
	p1-2 - location
	)
	(:init
	(at driver1 s1)
	(at driver2 s1)
	(at driver3 s2)
	(at truck1 s1)
	(empty truck1)
	(at truck2 s2)
	(empty truck2)
	(at package1 s2)
	(at package2 s0)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(= (time-to-walk s1 p1-0) 14)
	(= (time-to-walk p1-0 s1) 14)
	(= (time-to-walk s0 p1-0) 85)
	(= (time-to-walk p1-0 s0) 85)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 56)
	(= (time-to-walk p1-2 s1) 56)
	(= (time-to-walk s2 p1-2) 72)
	(= (time-to-walk p1-2 s2) 72)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 36)
	(= (time-to-drive s1 s0) 36)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 76)
	(= (time-to-drive s2 s0) 76)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 41)
	(= (time-to-drive s1 s2) 41)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s1)
	(at driver2 s2)
	(at driver3 s2)
	(at truck1 s1)
	(at package1 s2)
	(at package2 s1)
	))

(:metric minimize (+ (+ (* 3  (total-time)) (* 2  (driven))) (* 4  (walked))))

)
