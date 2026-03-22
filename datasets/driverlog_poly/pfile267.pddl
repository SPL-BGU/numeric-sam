(define (problem DLOG-1-3-4-267)
	(:domain driverlog)
	(:objects
	driver1 - driver
	truck1 - truck
	truck2 - truck
	truck3 - truck
	package1 - obj
	package2 - obj
	package3 - obj
	package4 - obj
	s0 - location
	s1 - location
	p1-0 - location
	)
	(:init
	(at driver1 s0)
	(at truck1 s0)
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
	(at package1 s0)
	(at package2 s0)
	(at package3 s1)
	(at package4 s1)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(= (time-to-walk s1 p1-0) 2)
	(= (time-to-walk p1-0 s1) 2)
	(= (time-to-walk s0 p1-0) 10)
	(= (time-to-walk p1-0 s0) 10)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 12)
	(= (time-to-drive s0 s1) 12)
	(= (fuel-used) 0)
)
	(:goal (and
	(at truck1 s0)
	(at truck2 s0)
	(at truck3 s1)
	(at package1 s0)
	(at package2 s0)
	(at package3 s0)
	(at package4 s0)
	))

(:metric minimize (+ (* 2 (total-time)) (* 2 (fuel-used))))

)
