(define (problem DLOG-3-3-3)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	truck1 - truck
	truck2 - truck
	truck3 - truck
	package1 - obj
	package2 - obj
	package3 - obj
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	s5 - location
	p0-3 - location
	p0-4 - location
	p2-0 - location
	p2-4 - location
	p5-1 - location
	p5-2 - location
	)
	(:init
	(at driver1 s2)
	(at driver2 s1)
	(at driver3 s4)
	(at truck1 s5)
	(empty truck1)
	(at truck2 s0)
	(empty truck2)
	(at truck3 s5)
	(empty truck3)
	(at package1 s2)
	(at package2 s5)
	(at package3 s3)
	(path s0 p0-3)
	(path p0-3 s0)
	(path s3 p0-3)
	(path p0-3 s3)
	(= (time-to-walk s0 p0-3) 84)
	(= (time-to-walk p0-3 s0) 84)
	(= (time-to-walk s3 p0-3) 36)
	(= (time-to-walk p0-3 s3) 36)
	(path s0 p0-4)
	(path p0-4 s0)
	(path s4 p0-4)
	(path p0-4 s4)
	(= (time-to-walk s0 p0-4) 97)
	(= (time-to-walk p0-4 s0) 97)
	(= (time-to-walk s4 p0-4) 44)
	(= (time-to-walk p0-4 s4) 44)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(= (time-to-walk s2 p2-0) 80)
	(= (time-to-walk p2-0 s2) 80)
	(= (time-to-walk s0 p2-0) 74)
	(= (time-to-walk p2-0 s0) 74)
	(path s2 p2-4)
	(path p2-4 s2)
	(path s4 p2-4)
	(path p2-4 s4)
	(= (time-to-walk s2 p2-4) 28)
	(= (time-to-walk p2-4 s2) 28)
	(= (time-to-walk s4 p2-4) 8)
	(= (time-to-walk p2-4 s4) 8)
	(path s5 p5-1)
	(path p5-1 s5)
	(path s1 p5-1)
	(path p5-1 s1)
	(= (time-to-walk s5 p5-1) 34)
	(= (time-to-walk p5-1 s5) 34)
	(= (time-to-walk s1 p5-1) 25)
	(= (time-to-walk p5-1 s1) 25)
	(path s5 p5-2)
	(path p5-2 s5)
	(path s2 p5-2)
	(path p5-2 s2)
	(= (time-to-walk s5 p5-2) 89)
	(= (time-to-walk p5-2 s5) 89)
	(= (time-to-walk s2 p5-2) 88)
	(= (time-to-walk p5-2 s2) 88)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 6)
	(= (time-to-drive s0 s1) 6)
	(link s1 s2)
	(link s2 s1)
	(= (time-to-drive s1 s2) 76)
	(= (time-to-drive s2 s1) 76)
	(link s2 s0)
	(link s0 s2)
	(= (time-to-drive s2 s0) 19)
	(= (time-to-drive s0 s2) 19)
	(link s2 s3)
	(link s3 s2)
	(= (time-to-drive s2 s3) 14)
	(= (time-to-drive s3 s2) 14)
	(link s3 s0)
	(link s0 s3)
	(= (time-to-drive s3 s0) 77)
	(= (time-to-drive s0 s3) 77)
	(link s3 s1)
	(link s1 s3)
	(= (time-to-drive s3 s1) 83)
	(= (time-to-drive s1 s3) 83)
	(link s3 s4)
	(link s4 s3)
	(= (time-to-drive s3 s4) 25)
	(= (time-to-drive s4 s3) 25)
	(link s4 s0)
	(link s0 s4)
	(= (time-to-drive s4 s0) 74)
	(= (time-to-drive s0 s4) 74)
	(link s4 s2)
	(link s2 s4)
	(= (time-to-drive s4 s2) 30)
	(= (time-to-drive s2 s4) 30)
	(link s4 s5)
	(link s5 s4)
	(= (time-to-drive s4 s5) 99)
	(= (time-to-drive s5 s4) 99)
	(link s5 s1)
	(link s1 s5)
	(= (time-to-drive s5 s1) 22)
	(= (time-to-drive s1 s5) 22)
	(link s5 s3)
	(link s3 s5)
	(= (time-to-drive s5 s3) 25)
	(= (time-to-drive s3 s5) 25)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s4)
	(at driver2 s3)
	(at driver3 s3)
	(at truck3 s2)
	(at package1 s5)
	(at package2 s1)
	(at package3 s2)
	))

(:metric minimize (+ (+ (* 3  (total-time)) (* 1  (driven))) (* 2  (walked))))

)
