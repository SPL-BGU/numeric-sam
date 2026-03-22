(define (problem DLOG-1-5-4-242)
	(:domain driverlog)
	(:objects
	driver1 - driver
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
	p1-0 - location
	p2-0 - location
	p2-1 - location
	)
	(:init
	(at driver1 s0)
	(at truck1 s0)
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
	(at truck4 s1)
	(empty truck4)
	(= (load truck4) 0)
	(= (fuel-per-minute truck4) 10)
	(at truck5 s1)
	(empty truck5)
	(= (load truck5) 0)
	(= (fuel-per-minute truck5) 10)
	(at package1 s2)
	(at package2 s2)
	(at package3 s2)
	(at package4 s2)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(= (time-to-walk s1 p1-0) 46)
	(= (time-to-walk p1-0 s1) 46)
	(= (time-to-walk s0 p1-0) 51)
	(= (time-to-walk p1-0 s0) 51)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(= (time-to-walk s2 p2-0) 28)
	(= (time-to-walk p2-0 s2) 28)
	(= (time-to-walk s0 p2-0) 15)
	(= (time-to-walk p2-0 s0) 15)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(= (time-to-walk s2 p2-1) 55)
	(= (time-to-walk p2-1 s2) 55)
	(= (time-to-walk s1 p2-1) 44)
	(= (time-to-walk p2-1 s1) 44)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 66)
	(= (time-to-drive s2 s1) 66)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 17)
	(= (time-to-drive s1 s0) 17)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 72)
	(= (time-to-drive s2 s0) 72)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s0)
	(at truck1 s2)
	(at truck2 s0)
	(at truck3 s0)
	(at truck4 s2)
	(at truck5 s1)
	(at package1 s0)
	(at package2 s0)
	(at package3 s0)
	(at package4 s1)
	))

(:metric minimize (+ (* 1 (total-time)) (* 2 (fuel-used))))

)
