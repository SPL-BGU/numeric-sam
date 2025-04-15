(define (problem DLOG-4-4-4)
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
	package1 - obj
	package2 - obj
	package3 - obj
	package4 - obj
	s0 - location
	s1 - location
	s2 - location
	p0-1 - location
	p0-2 - location
	p1-0 - location
	p2-0 - location
	)
	(:init
	(at driver1 s1)
	(at driver2 s0)
	(at driver3 s1)
	(at driver4 s0)
	(at truck1 s2)
	(empty truck1)
	(at truck2 s0)
	(empty truck2)
	(at truck3 s0)
	(empty truck3)
	(at truck4 s0)
	(empty truck4)
	(at package1 s2)
	(at package2 s0)
	(at package3 s2)
	(at package4 s0)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 97)
	(= (time-to-walk p0-1 s0) 97)
	(= (time-to-walk s1 p0-1) 8)
	(= (time-to-walk p0-1 s1) 8)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(= (time-to-walk s0 p0-2) 80)
	(= (time-to-walk p0-2 s0) 80)
	(= (time-to-walk s2 p0-2) 49)
	(= (time-to-walk p0-2 s2) 49)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 15)
	(= (time-to-drive s1 s0) 15)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 64)
	(= (time-to-drive s2 s1) 64)
	(link s2 s0)
	(link s0 s2)
	(= (time-to-drive s2 s0) 73)
	(= (time-to-drive s0 s2) 73)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s1)
	(at driver2 s1)
	(at driver3 s1)
	(at truck1 s0)
	(at truck2 s2)
	(at truck3 s0)
	(at package1 s2)
	(at package2 s2)
	(at package3 s1)
	(at package4 s1)
	))

(:metric minimize (+ (+ (* 4  (total-time)) (* 3  (driven))) (* 3  (walked))))

)
