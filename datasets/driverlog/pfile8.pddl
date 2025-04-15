(define (problem DLOG-3-5-4)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	truck1 - truck
	truck2 - truck
	truck3 - truck
	truck4 - truck
	truck5 - truck
	package1 - obj
	package2 - obj
	package3 - obj
	package4 - obj
	s0 - location
	s1 - location
	s2 - location
	p0-1 - location
	p0-2 - location
	p2-0 - location
	p2-1 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s1)
	(at driver3 s1)
	(at truck1 s0)
	(empty truck1)
	(at truck2 s0)
	(empty truck2)
	(at truck3 s0)
	(empty truck3)
	(at truck4 s2)
	(empty truck4)
	(at truck5 s1)
	(empty truck5)
	(at package1 s2)
	(at package2 s0)
	(at package3 s0)
	(at package4 s0)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 28)
	(= (time-to-walk p0-1 s0) 28)
	(= (time-to-walk s1 p0-1) 99)
	(= (time-to-walk p0-1 s1) 99)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(= (time-to-walk s0 p0-2) 21)
	(= (time-to-walk p0-2 s0) 21)
	(= (time-to-walk s2 p0-2) 66)
	(= (time-to-walk p0-2 s2) 66)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(= (time-to-walk s2 p2-1) 20)
	(= (time-to-walk p2-1 s2) 20)
	(= (time-to-walk s1 p2-1) 47)
	(= (time-to-walk p2-1 s1) 47)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 72)
	(= (time-to-drive s1 s0) 72)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 33)
	(= (time-to-drive s2 s1) 33)
	(link s2 s0)
	(link s0 s2)
	(= (time-to-drive s2 s0) 57)
	(= (time-to-drive s0 s2) 57)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver3 s2)
	(at truck3 s1)
	(at truck4 s2)
	(at truck5 s2)
	(at package1 s0)
	(at package2 s2)
	(at package3 s0)
	(at package4 s1)
	))

(:metric minimize (+ (+ (* 4  (total-time)) (* 3  (driven))) (* 4  (walked))))

)
