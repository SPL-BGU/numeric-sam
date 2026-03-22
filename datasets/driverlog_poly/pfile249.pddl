(define (problem DLOG-5-5-7-249)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	driver4 - driver
	driver5 - driver
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
	p0-1 - location
	p0-2 - location
	p1-2 - location
	)
	(:init
	(at driver1 s1)
	(at driver2 s2)
	(at driver3 s2)
	(at driver4 s0)
	(at driver5 s2)
	(at truck1 s1)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s2)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at truck3 s0)
	(empty truck3)
	(= (load truck3) 0)
	(= (fuel-per-minute truck3) 10)
	(at truck4 s1)
	(empty truck4)
	(= (load truck4) 0)
	(= (fuel-per-minute truck4) 10)
	(at truck5 s0)
	(empty truck5)
	(= (load truck5) 0)
	(= (fuel-per-minute truck5) 10)
	(at package1 s1)
	(at package2 s0)
	(at package3 s2)
	(at package4 s1)
	(at package5 s2)
	(at package6 s2)
	(at package7 s1)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 23)
	(= (time-to-walk p0-1 s0) 23)
	(= (time-to-walk s1 p0-1) 10)
	(= (time-to-walk p0-1 s1) 10)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(= (time-to-walk s0 p0-2) 20)
	(= (time-to-walk p0-2 s0) 20)
	(= (time-to-walk s2 p0-2) 4)
	(= (time-to-walk p0-2 s2) 4)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 13)
	(= (time-to-walk p1-2 s1) 13)
	(= (time-to-walk s2 p1-2) 18)
	(= (time-to-walk p1-2 s2) 18)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 18)
	(= (time-to-drive s0 s1) 18)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 13)
	(= (time-to-drive s2 s1) 13)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 7)
	(= (time-to-drive s2 s0) 7)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver4 s0)
	(at driver5 s1)
	(at truck3 s0)
	(at truck4 s0)
	(at truck5 s1)
	(at package1 s1)
	(at package2 s0)
	(at package3 s1)
	(at package4 s0)
	(at package5 s2)
	(at package6 s1)
	(at package7 s1)
	))

(:metric minimize (+ (* 2 (total-time)) (* 1 (fuel-used))))

)
