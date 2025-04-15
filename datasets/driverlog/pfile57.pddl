(define (problem DLOG-2-3-4)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	truck1 - truck
	truck2 - truck
	truck3 - truck
	package1 - obj
	package2 - obj
	package3 - obj
	package4 - obj
	s0 - location
	s1 - location
	s2 - location
	p0-1 - location
	p1-0 - location
	p1-2 - location
	)
	(:init
	(at driver1 s2)
	(at driver2 s0)
	(at truck1 s1)
	(empty truck1)
	(at truck2 s0)
	(empty truck2)
	(at truck3 s2)
	(empty truck3)
	(at package1 s2)
	(at package2 s1)
	(at package3 s0)
	(at package4 s0)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 27)
	(= (time-to-walk p0-1 s0) 27)
	(= (time-to-walk s1 p0-1) 88)
	(= (time-to-walk p0-1 s1) 88)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 43)
	(= (time-to-walk p1-2 s1) 43)
	(= (time-to-walk s2 p1-2) 6)
	(= (time-to-walk p1-2 s2) 6)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 72)
	(= (time-to-drive s1 s0) 72)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 77)
	(= (time-to-drive s2 s0) 77)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 12)
	(= (time-to-drive s2 s1) 12)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver2 s1)
	(at truck2 s1)
	(at truck3 s2)
	(at package1 s2)
	(at package2 s2)
	(at package3 s2)
	(at package4 s2)
	))

(:metric minimize (+ (+ (* 4  (total-time)) (* 2  (driven))) (* 3  (walked))))

)
