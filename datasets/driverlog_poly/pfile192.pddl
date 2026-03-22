(define (problem DLOG-3-4-1-192)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	truck1 - truck
	truck2 - truck
	truck3 - truck
	truck4 - truck
	package1 - obj
	s0 - location
	s1 - location
	s2 - location
	p1-0 - location
	p1-2 - location
	)
	(:init
	(at driver1 s1)
	(at driver2 s1)
	(at driver3 s1)
	(at truck1 s1)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s1)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at truck3 s1)
	(empty truck3)
	(= (load truck3) 0)
	(= (fuel-per-minute truck3) 10)
	(at truck4 s0)
	(empty truck4)
	(= (load truck4) 0)
	(= (fuel-per-minute truck4) 10)
	(at package1 s2)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(= (time-to-walk s1 p1-0) 12)
	(= (time-to-walk p1-0 s1) 12)
	(= (time-to-walk s0 p1-0) 21)
	(= (time-to-walk p1-0 s0) 21)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 14)
	(= (time-to-walk p1-2 s1) 14)
	(= (time-to-walk s2 p1-2) 20)
	(= (time-to-walk p1-2 s2) 20)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 27)
	(= (time-to-drive s1 s2) 27)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 4)
	(= (time-to-drive s1 s0) 4)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 2)
	(= (time-to-drive s2 s0) 2)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver2 s1)
	(at truck2 s2)
	(at truck4 s2)
	(at package1 s0)
	))

(:metric minimize (+ (* 1 (total-time)) (* 2 (fuel-used))))

)
