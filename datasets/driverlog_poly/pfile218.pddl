(define (problem DLOG-2-5-1-218)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	truck1 - truck
	truck2 - truck
	truck3 - truck
	truck4 - truck
	truck5 - truck
	package1 - obj
	s0 - location
	s1 - location
	s2 - location
	p0-2 - location
	p1-0 - location
	p2-1 - location
	)
	(:init
	(at driver1 s1)
	(at driver2 s0)
	(at truck1 s2)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s0)
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
	(at truck5 s2)
	(empty truck5)
	(= (load truck5) 0)
	(= (fuel-per-minute truck5) 10)
	(at package1 s1)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(= (time-to-walk s0 p0-2) 6)
	(= (time-to-walk p0-2 s0) 6)
	(= (time-to-walk s2 p0-2) 24)
	(= (time-to-walk p0-2 s2) 24)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(= (time-to-walk s1 p1-0) 14)
	(= (time-to-walk p1-0 s1) 14)
	(= (time-to-walk s0 p1-0) 4)
	(= (time-to-walk p1-0 s0) 4)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(= (time-to-walk s2 p2-1) 9)
	(= (time-to-walk p2-1 s2) 9)
	(= (time-to-walk s1 p2-1) 41)
	(= (time-to-walk p2-1 s1) 41)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 43)
	(= (time-to-drive s1 s2) 43)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 17)
	(= (time-to-drive s2 s0) 17)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 8)
	(= (time-to-drive s0 s1) 8)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver2 s0)
	(at truck2 s0)
	(at truck3 s1)
	(at truck5 s0)
	(at package1 s1)
	))

(:metric minimize (+ (* 3 (total-time)) (* 1 (fuel-used))))

)
