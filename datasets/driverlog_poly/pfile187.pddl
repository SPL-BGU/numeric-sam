(define (problem DLOG-4-5-7-187)
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
	p1-0 - location
	p0-2 - location
	p2-1 - location
	)
	(:init
	(at driver1 s2)
	(at driver2 s0)
	(at driver3 s2)
	(at driver4 s0)
	(at truck1 s1)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s1)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at truck3 s2)
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
	(at package1 s0)
	(at package2 s0)
	(at package3 s1)
	(at package4 s0)
	(at package5 s2)
	(at package6 s2)
	(at package7 s2)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(= (time-to-walk s1 p1-0) 19)
	(= (time-to-walk p1-0 s1) 19)
	(= (time-to-walk s0 p1-0) 3)
	(= (time-to-walk p1-0 s0) 3)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(= (time-to-walk s0 p0-2) 16)
	(= (time-to-walk p0-2 s0) 16)
	(= (time-to-walk s2 p0-2) 6)
	(= (time-to-walk p0-2 s2) 6)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(= (time-to-walk s2 p2-1) 5)
	(= (time-to-walk p2-1 s2) 5)
	(= (time-to-walk s1 p2-1) 4)
	(= (time-to-walk p2-1 s1) 4)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 19)
	(= (time-to-drive s1 s0) 19)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 15)
	(= (time-to-drive s2 s0) 15)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 1)
	(= (time-to-drive s1 s2) 1)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s2)
	(at driver2 s0)
	(at driver3 s2)
	(at truck1 s2)
	(at truck2 s0)
	(at truck3 s1)
	(at truck4 s0)
	(at truck5 s0)
	(at package1 s1)
	(at package2 s1)
	(at package3 s1)
	(at package4 s1)
	(at package5 s2)
	(at package6 s0)
	(at package7 s0)
	))

(:metric minimize (+ (* 1 (total-time)) (* 1 (fuel-used))))

)
