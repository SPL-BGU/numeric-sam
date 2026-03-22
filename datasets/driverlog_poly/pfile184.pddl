(define (problem DLOG-1-3-2-184)
	(:domain driverlog)
	(:objects
	driver1 - driver
	truck1 - truck
	truck2 - truck
	truck3 - truck
	package1 - obj
	package2 - obj
	s0 - location
	s1 - location
	s2 - location
	p0-1 - location
	p0-2 - location
	p2-1 - location
	)
	(:init
	(at driver1 s1)
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
	(at package1 s1)
	(at package2 s2)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 30)
	(= (time-to-walk p0-1 s0) 30)
	(= (time-to-walk s1 p0-1) 27)
	(= (time-to-walk p0-1 s1) 27)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(= (time-to-walk s0 p0-2) 17)
	(= (time-to-walk p0-2 s0) 17)
	(= (time-to-walk s2 p0-2) 25)
	(= (time-to-walk p0-2 s2) 25)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(= (time-to-walk s2 p2-1) 28)
	(= (time-to-walk p2-1 s2) 28)
	(= (time-to-walk s1 p2-1) 24)
	(= (time-to-walk p2-1 s1) 24)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 14)
	(= (time-to-drive s1 s0) 14)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 2)
	(= (time-to-drive s2 s0) 2)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 34)
	(= (time-to-drive s2 s1) 34)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s1)
	(at truck3 s0)
	(at package1 s2)
	(at package2 s2)
	))

(:metric minimize (+ (* 2 (total-time)) (* 2 (fuel-used))))

)
