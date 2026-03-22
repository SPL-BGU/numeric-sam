(define (problem DLOG-1-2-4-294)
	(:domain driverlog)
	(:objects
	driver1 - driver
	truck1 - truck
	truck2 - truck
	package1 - obj
	package2 - obj
	package3 - obj
	package4 - obj
	s0 - location
	s1 - location
	p0-1 - location
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
	(at package1 s0)
	(at package2 s0)
	(at package3 s0)
	(at package4 s1)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 60)
	(= (time-to-walk p0-1 s0) 60)
	(= (time-to-walk s1 p0-1) 83)
	(= (time-to-walk p0-1 s1) 83)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 91)
	(= (time-to-drive s1 s0) 91)
	(= (fuel-used) 0)
)
	(:goal (and
	(at truck1 s0)
	(at truck2 s1)
	(at package1 s1)
	(at package2 s0)
	(at package3 s0)
	(at package4 s1)
	))

(:metric minimize (+ (* 1 (total-time)) (* 3 (fuel-used))))

)
