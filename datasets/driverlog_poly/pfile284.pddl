(define (problem DLOG-3-1-3-284)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	truck1 - truck
	package1 - obj
	package2 - obj
	package3 - obj
	s0 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s0)
	(at driver3 s0)
	(at truck1 s0)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at package1 s0)
	(at package2 s0)
	(at package3 s0)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s0)
	(at driver2 s0)
	(at driver3 s0)
	(at truck1 s0)
	(at package1 s0)
	(at package2 s0)
	(at package3 s0)
	))

(:metric minimize (+ (* 1 (total-time)) (* 4 (fuel-used))))

)
