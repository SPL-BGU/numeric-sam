(define (problem DLOG-4-5-7-186)
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
	package4 - obj
	package5 - obj
	package6 - obj
	package7 - obj
	s0 - location
	s1 - location
	s2 - location
	p2-1 - location
	)
	(:init
	(at driver1 s2)
	(at driver2 s1)
	(at driver3 s1)
	(at driver4 s1)
	(at truck1 s2)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s1)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at truck3 s0)
	(empty truck3)
	(= (load truck3) 0)
	(= (fuel-per-minute truck3) 10)
	(at truck4 s0)
	(empty truck4)
	(= (load truck4) 0)
	(= (fuel-per-minute truck4) 10)
	(at truck5 s0)
	(empty truck5)
	(= (load truck5) 0)
	(= (fuel-per-minute truck5) 10)
	(at package1 s0)
	(at package2 s0)
	(at package3 s1)
	(at package4 s0)
	(at package5 s0)
	(at package6 s2)
	(at package7 s1)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(= (time-to-walk s2 p2-1) 75)
	(= (time-to-walk p2-1 s2) 75)
	(= (time-to-walk s1 p2-1) 77)
	(= (time-to-walk p2-1 s1) 77)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 16)
	(= (time-to-drive s2 s0) 16)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 52)
	(= (time-to-drive s0 s1) 52)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 10)
	(= (time-to-drive s2 s1) 10)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s0)
	(at driver2 s2)
	(at driver3 s2)
	(at truck1 s0)
	(at truck3 s1)
	(at truck4 s2)
	(at truck5 s1)
	(at package1 s1)
	(at package2 s1)
	(at package3 s2)
	(at package4 s0)
	(at package5 s0)
	(at package7 s1)
	))

(:metric minimize (+ (* 1 (total-time)) (* 3 (fuel-used))))

)
