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
	p1-0 - location
	p1-2 - location
	p2-0 - location
	p2-1 - location
	)
	(:init
	(at driver1 s1)
	(at driver2 s1)
	(at driver3 s2)
	(at driver4 s0)
	(at truck1 s1)
	(empty truck1)
	(at truck2 s2)
	(empty truck2)
	(at truck3 s2)
	(empty truck3)
	(at truck4 s0)
	(empty truck4)
	(at truck5 s2)
	(empty truck5)
	(at package1 s1)
	(at package2 s1)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(= (time-to-walk s1 p1-0) 41)
	(= (time-to-walk p1-0 s1) 41)
	(= (time-to-walk s0 p1-0) 96)
	(= (time-to-walk p1-0 s0) 96)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 35)
	(= (time-to-walk p1-2 s1) 35)
	(= (time-to-walk s2 p1-2) 28)
	(= (time-to-walk p1-2 s2) 28)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(= (time-to-walk s2 p2-0) 81)
	(= (time-to-walk p2-0 s2) 81)
	(= (time-to-walk s0 p2-0) 9)
	(= (time-to-walk p2-0 s0) 9)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 41)
	(= (time-to-drive s1 s0) 41)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 2)
	(= (time-to-drive s2 s1) 2)
	(link s2 s0)
	(link s0 s2)
	(= (time-to-drive s2 s0) 10)
	(= (time-to-drive s0 s2) 10)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s0)
	(at driver2 s0)
	(at driver4 s0)
	(at truck3 s1)
	(at truck4 s1)
	(at truck5 s1)
	(at package1 s2)
	))

(:metric minimize (+ (+ (* 4  (total-time)) (* 2  (driven))) (* 2  (walked))))

)
