(define (problem DLOG-5-5-4-163)
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
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	p2-1 - location
	p0-3 - location
	p0-4 - location
	p3-1 - location
	p3-4 - location
	)
	(:init
	(at driver1 s1)
	(at driver2 s0)
	(at driver3 s3)
	(at driver4 s3)
	(at driver5 s1)
	(at truck1 s0)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s0)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at truck3 s2)
	(empty truck3)
	(= (load truck3) 0)
	(= (fuel-per-minute truck3) 10)
	(at truck4 s3)
	(empty truck4)
	(= (load truck4) 0)
	(= (fuel-per-minute truck4) 10)
	(at truck5 s2)
	(empty truck5)
	(= (load truck5) 0)
	(= (fuel-per-minute truck5) 10)
	(at package1 s4)
	(at package2 s0)
	(at package3 s0)
	(at package4 s0)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(= (time-to-walk s2 p2-1) 17)
	(= (time-to-walk p2-1 s2) 17)
	(= (time-to-walk s1 p2-1) 4)
	(= (time-to-walk p2-1 s1) 4)
	(path s0 p0-3)
	(path p0-3 s0)
	(path s3 p0-3)
	(path p0-3 s3)
	(= (time-to-walk s0 p0-3) 1)
	(= (time-to-walk p0-3 s0) 1)
	(= (time-to-walk s3 p0-3) 20)
	(= (time-to-walk p0-3 s3) 20)
	(path s0 p0-4)
	(path p0-4 s0)
	(path s4 p0-4)
	(path p0-4 s4)
	(= (time-to-walk s0 p0-4) 14)
	(= (time-to-walk p0-4 s0) 14)
	(= (time-to-walk s4 p0-4) 8)
	(= (time-to-walk p0-4 s4) 8)
	(path s3 p3-1)
	(path p3-1 s3)
	(path s1 p3-1)
	(path p3-1 s1)
	(= (time-to-walk s3 p3-1) 10)
	(= (time-to-walk p3-1 s3) 10)
	(= (time-to-walk s1 p3-1) 15)
	(= (time-to-walk p3-1 s1) 15)
	(path s3 p3-4)
	(path p3-4 s3)
	(path s4 p3-4)
	(path p3-4 s4)
	(= (time-to-walk s3 p3-4) 18)
	(= (time-to-walk p3-4 s3) 18)
	(= (time-to-walk s4 p3-4) 1)
	(= (time-to-walk p3-4 s4) 1)
	(link s4 s1)
	(link s1 s4)
	(= (time-to-drive s4 s1) 16)
	(= (time-to-drive s1 s4) 16)
	(link s4 s2)
	(link s2 s4)
	(= (time-to-drive s4 s2) 22)
	(= (time-to-drive s2 s4) 22)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 16)
	(= (time-to-drive s2 s0) 16)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 16)
	(= (time-to-drive s1 s2) 16)
	(link s3 s0)
	(link s0 s3)
	(= (time-to-drive s3 s0) 8)
	(= (time-to-drive s0 s3) 8)
	(link s3 s1)
	(link s1 s3)
	(= (time-to-drive s3 s1) 22)
	(= (time-to-drive s1 s3) 22)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s1)
	(at driver2 s1)
	(at driver3 s4)
	(at truck1 s0)
	(at truck2 s2)
	(at truck4 s2)
	(at package1 s4)
	(at package2 s1)
	(at package3 s4)
	(at package4 s4)
	))

(:metric minimize (+ (* 4 (total-time)) (* 2 (fuel-used))))

)
