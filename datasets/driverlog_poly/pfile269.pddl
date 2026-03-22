(define (problem DLOG-1-5-1-269)
	(:domain driverlog)
	(:objects
	driver1 - driver
	truck1 - truck
	truck2 - truck
	truck3 - truck
	truck4 - truck
	truck5 - truck
	package1 - obj
	s0 - location
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
	(at truck4 s0)
	(empty truck4)
	(= (load truck4) 0)
	(= (fuel-per-minute truck4) 10)
	(at truck5 s0)
	(empty truck5)
	(= (load truck5) 0)
	(= (fuel-per-minute truck5) 10)
	(at package1 s0)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s0)
	(at truck3 s0)
	(at truck4 s0)
	(at truck5 s0)
	(at package1 s0)
	))

(:metric minimize (+ (* 4 (total-time)) (* 4 (fuel-used))))

)
