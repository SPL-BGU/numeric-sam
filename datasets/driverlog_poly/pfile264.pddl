(define (problem DLOG-3-2-5-264)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	truck1 - truck
	truck2 - truck
	package1 - obj
	package2 - obj
	package3 - obj
	package4 - obj
	package5 - obj
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	p3-1 - location
	p3-2 - location
	p0-1 - location
	p0-3 - location
	p0-4 - location
	)
	(:init
	(at driver1 s1)
	(at driver2 s1)
	(at driver3 s4)
	(at truck1 s1)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s2)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at package1 s3)
	(at package2 s1)
	(at package3 s2)
	(at package4 s2)
	(at package5 s1)
	(path s3 p3-1)
	(path p3-1 s3)
	(path s1 p3-1)
	(path p3-1 s1)
	(= (time-to-walk s3 p3-1) 35)
	(= (time-to-walk p3-1 s3) 35)
	(= (time-to-walk s1 p3-1) 55)
	(= (time-to-walk p3-1 s1) 55)
	(path s3 p3-2)
	(path p3-2 s3)
	(path s2 p3-2)
	(path p3-2 s2)
	(= (time-to-walk s3 p3-2) 26)
	(= (time-to-walk p3-2 s3) 26)
	(= (time-to-walk s2 p3-2) 33)
	(= (time-to-walk p3-2 s2) 33)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 13)
	(= (time-to-walk p0-1 s0) 13)
	(= (time-to-walk s1 p0-1) 9)
	(= (time-to-walk p0-1 s1) 9)
	(path s0 p0-3)
	(path p0-3 s0)
	(path s3 p0-3)
	(path p0-3 s3)
	(= (time-to-walk s0 p0-3) 1)
	(= (time-to-walk p0-3 s0) 1)
	(= (time-to-walk s3 p0-3) 58)
	(= (time-to-walk p0-3 s3) 58)
	(path s0 p0-4)
	(path p0-4 s0)
	(path s4 p0-4)
	(path p0-4 s4)
	(= (time-to-walk s0 p0-4) 40)
	(= (time-to-walk p0-4 s0) 40)
	(= (time-to-walk s4 p0-4) 11)
	(= (time-to-walk p0-4 s4) 11)
	(link s4 s2)
	(link s2 s4)
	(= (time-to-drive s4 s2) 6)
	(= (time-to-drive s2 s4) 6)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 66)
	(= (time-to-drive s2 s1) 66)
	(link s1 s3)
	(link s3 s1)
	(= (time-to-drive s1 s3) 15)
	(= (time-to-drive s3 s1) 15)
	(link s1 s4)
	(link s4 s1)
	(= (time-to-drive s1 s4) 63)
	(= (time-to-drive s4 s1) 63)
	(link s3 s4)
	(link s4 s3)
	(= (time-to-drive s3 s4) 22)
	(= (time-to-drive s4 s3) 22)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 58)
	(= (time-to-drive s1 s0) 58)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 23)
	(= (time-to-drive s2 s0) 23)
	(link s0 s3)
	(link s3 s0)
	(= (time-to-drive s0 s3) 48)
	(= (time-to-drive s3 s0) 48)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s1)
	(at driver2 s2)
	(at driver3 s4)
	(at package1 s2)
	(at package2 s3)
	(at package3 s1)
	(at package4 s2)
	(at package5 s1)
	))

(:metric minimize (+ (* 2 (total-time)) (* 1 (fuel-used))))

)
