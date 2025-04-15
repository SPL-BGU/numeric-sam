(define (problem DLOG-3-7-3)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	truck1 - truck
	truck2 - truck
	truck3 - truck
	truck4 - truck
	truck5 - truck
	truck6 - truck
	truck7 - truck
	package1 - obj
	package2 - obj
	package3 - obj
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	p0-3 - location
	p0-4 - location
	p1-0 - location
	p1-2 - location
	p2-4 - location
	p3-4 - location
	)
	(:init
	(at driver1 s1)
	(at driver2 s4)
	(at driver3 s0)
	(at truck1 s3)
	(empty truck1)
	(at truck2 s3)
	(empty truck2)
	(at truck3 s3)
	(empty truck3)
	(at truck4 s0)
	(empty truck4)
	(at truck5 s3)
	(empty truck5)
	(at truck6 s3)
	(empty truck6)
	(at truck7 s0)
	(empty truck7)
	(at package1 s0)
	(at package2 s2)
	(at package3 s1)
	(path s0 p0-3)
	(path p0-3 s0)
	(path s3 p0-3)
	(path p0-3 s3)
	(= (time-to-walk s0 p0-3) 1)
	(= (time-to-walk p0-3 s0) 1)
	(= (time-to-walk s3 p0-3) 98)
	(= (time-to-walk p0-3 s3) 98)
	(path s0 p0-4)
	(path p0-4 s0)
	(path s4 p0-4)
	(path p0-4 s4)
	(= (time-to-walk s0 p0-4) 20)
	(= (time-to-walk p0-4 s0) 20)
	(= (time-to-walk s4 p0-4) 25)
	(= (time-to-walk p0-4 s4) 25)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(= (time-to-walk s1 p1-0) 60)
	(= (time-to-walk p1-0 s1) 60)
	(= (time-to-walk s0 p1-0) 70)
	(= (time-to-walk p1-0 s0) 70)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 26)
	(= (time-to-walk p1-2 s1) 26)
	(= (time-to-walk s2 p1-2) 22)
	(= (time-to-walk p1-2 s2) 22)
	(path s2 p2-4)
	(path p2-4 s2)
	(path s4 p2-4)
	(path p2-4 s4)
	(= (time-to-walk s2 p2-4) 4)
	(= (time-to-walk p2-4 s2) 4)
	(= (time-to-walk s4 p2-4) 50)
	(= (time-to-walk p2-4 s4) 50)
	(path s3 p3-4)
	(path p3-4 s3)
	(path s4 p3-4)
	(path p3-4 s4)
	(= (time-to-walk s3 p3-4) 24)
	(= (time-to-walk p3-4 s3) 24)
	(= (time-to-walk s4 p3-4) 48)
	(= (time-to-walk p3-4 s4) 48)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 51)
	(= (time-to-drive s1 s0) 51)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 3)
	(= (time-to-drive s2 s1) 3)
	(link s1 s3)
	(link s3 s1)
	(= (time-to-drive s1 s3) 26)
	(= (time-to-drive s3 s1) 26)
	(link s2 s0)
	(link s0 s2)
	(= (time-to-drive s2 s0) 9)
	(= (time-to-drive s0 s2) 9)
	(link s2 s3)
	(link s3 s2)
	(= (time-to-drive s2 s3) 81)
	(= (time-to-drive s3 s2) 81)
	(link s2 s4)
	(link s4 s2)
	(= (time-to-drive s2 s4) 54)
	(= (time-to-drive s4 s2) 54)
	(link s4 s0)
	(link s0 s4)
	(= (time-to-drive s4 s0) 18)
	(= (time-to-drive s0 s4) 18)
	(link s4 s3)
	(link s3 s4)
	(= (time-to-drive s4 s3) 99)
	(= (time-to-drive s3 s4) 99)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s1)
	(at driver2 s4)
	(at driver3 s3)
	(at truck5 s3)
	(at truck7 s0)
	(at package1 s1)
	(at package2 s1)
	))

(:metric minimize (+ (+ (* 3  (total-time)) (* 2  (driven))) (* 1  (walked))))

)
