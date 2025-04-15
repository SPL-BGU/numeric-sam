(define (problem DLOG-4-3-6)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	driver4 - driver
	truck1 - truck
	truck2 - truck
	truck3 - truck
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
	p0-2 - location
	p2-0 - location
	p2-1 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s1)
	(at driver3 s1)
	(at driver4 s2)
	(at truck1 s1)
	(empty truck1)
	(at truck2 s0)
	(empty truck2)
	(at truck3 s1)
	(empty truck3)
	(at package1 s2)
	(at package2 s2)
	(at package3 s1)
	(at package4 s0)
	(at package5 s2)
	(at package6 s2)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 66)
	(= (time-to-walk p0-1 s0) 66)
	(= (time-to-walk s1 p0-1) 33)
	(= (time-to-walk p0-1 s1) 33)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(= (time-to-walk s0 p0-2) 70)
	(= (time-to-walk p0-2 s0) 70)
	(= (time-to-walk s2 p0-2) 85)
	(= (time-to-walk p0-2 s2) 85)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(= (time-to-walk s2 p2-1) 80)
	(= (time-to-walk p2-1 s2) 80)
	(= (time-to-walk s1 p2-1) 23)
	(= (time-to-walk p2-1 s1) 23)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 8)
	(= (time-to-drive s2 s0) 8)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 96)
	(= (time-to-drive s0 s1) 96)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 51)
	(= (time-to-drive s1 s2) 51)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s2)
	(at driver2 s1)
	(at driver3 s1)
	(at truck3 s2)
	(at package1 s2)
	(at package2 s0)
	(at package3 s0)
	(at package4 s0)
	(at package5 s2)
	(at package6 s1)
	))

(:metric minimize (+ (+ (* 2  (total-time)) (* 3  (driven))) (* 2  (walked))))

)
