(define (problem DLOG-4-8-8)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	driver4 - driver
	truck1 - truck
	truck2 - truck
	truck3 - truck
	truck4 - truck
	truck5 - truck
	truck6 - truck
	truck7 - truck
	truck8 - truck
	package1 - obj
	package2 - obj
	package3 - obj
	package4 - obj
	package5 - obj
	package6 - obj
	package7 - obj
	package8 - obj
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	s5 - location
	s6 - location
	s7 - location
	s8 - location
	s9 - location
	s10 - location
	s11 - location
	s12 - location
	p0-1 - location
	p0-10 - location
	p1-4 - location
	p1-6 - location
	p1-7 - location
	p1-12 - location
	p2-6 - location
	p3-8 - location
	p3-9 - location
	p3-11 - location
	p4-3 - location
	p5-0 - location
	p5-2 - location
	p5-9 - location
	p5-11 - location
	p6-0 - location
	p7-9 - location
	p7-10 - location
	p8-1 - location
	p10-5 - location
	p11-10 - location
	p12-4 - location
	p12-6 - location
	p12-8 - location
	p12-11 - location
	)
	(:init
	(at driver1 s9)
	(at driver2 s11)
	(at driver3 s8)
	(at driver4 s3)
	(at truck1 s4)
	(empty truck1)
	(at truck2 s3)
	(empty truck2)
	(at truck3 s0)
	(empty truck3)
	(at truck4 s8)
	(empty truck4)
	(at truck5 s3)
	(empty truck5)
	(at truck6 s7)
	(empty truck6)
	(at truck7 s4)
	(empty truck7)
	(at truck8 s9)
	(empty truck8)
	(at package1 s8)
	(at package2 s7)
	(at package3 s9)
	(at package4 s11)
	(at package5 s0)
	(at package6 s2)
	(at package7 s6)
	(at package8 s2)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 42)
	(= (time-to-walk p0-1 s0) 42)
	(= (time-to-walk s1 p0-1) 95)
	(= (time-to-walk p0-1 s1) 95)
	(path s0 p0-10)
	(path p0-10 s0)
	(path s10 p0-10)
	(path p0-10 s10)
	(= (time-to-walk s0 p0-10) 94)
	(= (time-to-walk p0-10 s0) 94)
	(= (time-to-walk s10 p0-10) 72)
	(= (time-to-walk p0-10 s10) 72)
	(path s1 p1-4)
	(path p1-4 s1)
	(path s4 p1-4)
	(path p1-4 s4)
	(= (time-to-walk s1 p1-4) 65)
	(= (time-to-walk p1-4 s1) 65)
	(= (time-to-walk s4 p1-4) 52)
	(= (time-to-walk p1-4 s4) 52)
	(path s1 p1-6)
	(path p1-6 s1)
	(path s6 p1-6)
	(path p1-6 s6)
	(= (time-to-walk s1 p1-6) 86)
	(= (time-to-walk p1-6 s1) 86)
	(= (time-to-walk s6 p1-6) 34)
	(= (time-to-walk p1-6 s6) 34)
	(path s1 p1-7)
	(path p1-7 s1)
	(path s7 p1-7)
	(path p1-7 s7)
	(= (time-to-walk s1 p1-7) 73)
	(= (time-to-walk p1-7 s1) 73)
	(= (time-to-walk s7 p1-7) 9)
	(= (time-to-walk p1-7 s7) 9)
	(path s1 p1-12)
	(path p1-12 s1)
	(path s12 p1-12)
	(path p1-12 s12)
	(= (time-to-walk s1 p1-12) 89)
	(= (time-to-walk p1-12 s1) 89)
	(= (time-to-walk s12 p1-12) 21)
	(= (time-to-walk p1-12 s12) 21)
	(path s2 p2-6)
	(path p2-6 s2)
	(path s6 p2-6)
	(path p2-6 s6)
	(= (time-to-walk s2 p2-6) 86)
	(= (time-to-walk p2-6 s2) 86)
	(= (time-to-walk s6 p2-6) 64)
	(= (time-to-walk p2-6 s6) 64)
	(path s3 p3-8)
	(path p3-8 s3)
	(path s8 p3-8)
	(path p3-8 s8)
	(= (time-to-walk s3 p3-8) 4)
	(= (time-to-walk p3-8 s3) 4)
	(= (time-to-walk s8 p3-8) 55)
	(= (time-to-walk p3-8 s8) 55)
	(path s3 p3-9)
	(path p3-9 s3)
	(path s9 p3-9)
	(path p3-9 s9)
	(= (time-to-walk s3 p3-9) 54)
	(= (time-to-walk p3-9 s3) 54)
	(= (time-to-walk s9 p3-9) 12)
	(= (time-to-walk p3-9 s9) 12)
	(path s3 p3-11)
	(path p3-11 s3)
	(path s11 p3-11)
	(path p3-11 s11)
	(= (time-to-walk s3 p3-11) 50)
	(= (time-to-walk p3-11 s3) 50)
	(= (time-to-walk s11 p3-11) 60)
	(= (time-to-walk p3-11 s11) 60)
	(path s4 p4-3)
	(path p4-3 s4)
	(path s3 p4-3)
	(path p4-3 s3)
	(= (time-to-walk s4 p4-3) 23)
	(= (time-to-walk p4-3 s4) 23)
	(= (time-to-walk s3 p4-3) 13)
	(= (time-to-walk p4-3 s3) 13)
	(path s5 p5-0)
	(path p5-0 s5)
	(path s0 p5-0)
	(path p5-0 s0)
	(= (time-to-walk s5 p5-0) 82)
	(= (time-to-walk p5-0 s5) 82)
	(= (time-to-walk s0 p5-0) 4)
	(= (time-to-walk p5-0 s0) 4)
	(path s5 p5-2)
	(path p5-2 s5)
	(path s2 p5-2)
	(path p5-2 s2)
	(= (time-to-walk s5 p5-2) 44)
	(= (time-to-walk p5-2 s5) 44)
	(= (time-to-walk s2 p5-2) 33)
	(= (time-to-walk p5-2 s2) 33)
	(path s5 p5-9)
	(path p5-9 s5)
	(path s9 p5-9)
	(path p5-9 s9)
	(= (time-to-walk s5 p5-9) 13)
	(= (time-to-walk p5-9 s5) 13)
	(= (time-to-walk s9 p5-9) 75)
	(= (time-to-walk p5-9 s9) 75)
	(path s5 p5-11)
	(path p5-11 s5)
	(path s11 p5-11)
	(path p5-11 s11)
	(= (time-to-walk s5 p5-11) 55)
	(= (time-to-walk p5-11 s5) 55)
	(= (time-to-walk s11 p5-11) 77)
	(= (time-to-walk p5-11 s11) 77)
	(path s6 p6-0)
	(path p6-0 s6)
	(path s0 p6-0)
	(path p6-0 s0)
	(= (time-to-walk s6 p6-0) 100)
	(= (time-to-walk p6-0 s6) 100)
	(= (time-to-walk s0 p6-0) 96)
	(= (time-to-walk p6-0 s0) 96)
	(path s7 p7-9)
	(path p7-9 s7)
	(path s9 p7-9)
	(path p7-9 s9)
	(= (time-to-walk s7 p7-9) 71)
	(= (time-to-walk p7-9 s7) 71)
	(= (time-to-walk s9 p7-9) 94)
	(= (time-to-walk p7-9 s9) 94)
	(path s7 p7-10)
	(path p7-10 s7)
	(path s10 p7-10)
	(path p7-10 s10)
	(= (time-to-walk s7 p7-10) 67)
	(= (time-to-walk p7-10 s7) 67)
	(= (time-to-walk s10 p7-10) 36)
	(= (time-to-walk p7-10 s10) 36)
	(path s8 p8-1)
	(path p8-1 s8)
	(path s1 p8-1)
	(path p8-1 s1)
	(= (time-to-walk s8 p8-1) 45)
	(= (time-to-walk p8-1 s8) 45)
	(= (time-to-walk s1 p8-1) 53)
	(= (time-to-walk p8-1 s1) 53)
	(path s10 p10-5)
	(path p10-5 s10)
	(path s5 p10-5)
	(path p10-5 s5)
	(= (time-to-walk s10 p10-5) 69)
	(= (time-to-walk p10-5 s10) 69)
	(= (time-to-walk s5 p10-5) 18)
	(= (time-to-walk p10-5 s5) 18)
	(path s11 p11-10)
	(path p11-10 s11)
	(path s10 p11-10)
	(path p11-10 s10)
	(= (time-to-walk s11 p11-10) 61)
	(= (time-to-walk p11-10 s11) 61)
	(= (time-to-walk s10 p11-10) 57)
	(= (time-to-walk p11-10 s10) 57)
	(path s12 p12-4)
	(path p12-4 s12)
	(path s4 p12-4)
	(path p12-4 s4)
	(= (time-to-walk s12 p12-4) 38)
	(= (time-to-walk p12-4 s12) 38)
	(= (time-to-walk s4 p12-4) 47)
	(= (time-to-walk p12-4 s4) 47)
	(path s12 p12-6)
	(path p12-6 s12)
	(path s6 p12-6)
	(path p12-6 s6)
	(= (time-to-walk s12 p12-6) 21)
	(= (time-to-walk p12-6 s12) 21)
	(= (time-to-walk s6 p12-6) 41)
	(= (time-to-walk p12-6 s6) 41)
	(path s12 p12-8)
	(path p12-8 s12)
	(path s8 p12-8)
	(path p12-8 s8)
	(= (time-to-walk s12 p12-8) 2)
	(= (time-to-walk p12-8 s12) 2)
	(= (time-to-walk s8 p12-8) 75)
	(= (time-to-walk p12-8 s8) 75)
	(path s12 p12-11)
	(path p12-11 s12)
	(path s11 p12-11)
	(path p12-11 s11)
	(= (time-to-walk s12 p12-11) 52)
	(= (time-to-walk p12-11 s12) 52)
	(= (time-to-walk s11 p12-11) 51)
	(= (time-to-walk p12-11 s11) 51)
	(link s0 s4)
	(link s4 s0)
	(= (time-to-drive s0 s4) 35)
	(= (time-to-drive s4 s0) 35)
	(link s0 s11)
	(link s11 s0)
	(= (time-to-drive s0 s11) 75)
	(= (time-to-drive s11 s0) 75)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 64)
	(= (time-to-drive s0 s1) 64)
	(link s1 s8)
	(link s8 s1)
	(= (time-to-drive s1 s8) 16)
	(= (time-to-drive s8 s1) 16)
	(link s1 s9)
	(link s9 s1)
	(= (time-to-drive s1 s9) 79)
	(= (time-to-drive s9 s1) 79)
	(link s1 s10)
	(link s10 s1)
	(= (time-to-drive s1 s10) 8)
	(= (time-to-drive s10 s1) 8)
	(link s1 s12)
	(link s12 s1)
	(= (time-to-drive s1 s12) 49)
	(= (time-to-drive s12 s1) 49)
	(link s2 s6)
	(link s6 s2)
	(= (time-to-drive s2 s6) 91)
	(= (time-to-drive s6 s2) 91)
	(link s2 s12)
	(link s12 s2)
	(= (time-to-drive s2 s12) 82)
	(= (time-to-drive s12 s2) 82)
	(link s3 s11)
	(link s11 s3)
	(= (time-to-drive s3 s11) 3)
	(= (time-to-drive s11 s3) 3)
	(link s3 s12)
	(link s12 s3)
	(= (time-to-drive s3 s12) 67)
	(= (time-to-drive s12 s3) 67)
	(link s4 s2)
	(link s2 s4)
	(= (time-to-drive s4 s2) 82)
	(= (time-to-drive s2 s4) 82)
	(link s4 s5)
	(link s5 s4)
	(= (time-to-drive s4 s5) 99)
	(= (time-to-drive s5 s4) 99)
	(link s4 s12)
	(link s12 s4)
	(= (time-to-drive s4 s12) 38)
	(= (time-to-drive s12 s4) 38)
	(link s5 s0)
	(link s0 s5)
	(= (time-to-drive s5 s0) 75)
	(= (time-to-drive s0 s5) 75)
	(link s5 s10)
	(link s10 s5)
	(= (time-to-drive s5 s10) 65)
	(= (time-to-drive s10 s5) 65)
	(link s5 s11)
	(link s11 s5)
	(= (time-to-drive s5 s11) 73)
	(= (time-to-drive s11 s5) 73)
	(link s6 s0)
	(link s0 s6)
	(= (time-to-drive s6 s0) 20)
	(= (time-to-drive s0 s6) 20)
	(link s6 s10)
	(link s10 s6)
	(= (time-to-drive s6 s10) 18)
	(= (time-to-drive s10 s6) 18)
	(link s6 s11)
	(link s11 s6)
	(= (time-to-drive s6 s11) 42)
	(= (time-to-drive s11 s6) 42)
	(link s6 s12)
	(link s12 s6)
	(= (time-to-drive s6 s12) 37)
	(= (time-to-drive s12 s6) 37)
	(link s7 s0)
	(link s0 s7)
	(= (time-to-drive s7 s0) 79)
	(= (time-to-drive s0 s7) 79)
	(link s7 s1)
	(link s1 s7)
	(= (time-to-drive s7 s1) 99)
	(= (time-to-drive s1 s7) 99)
	(link s7 s3)
	(link s3 s7)
	(= (time-to-drive s7 s3) 74)
	(= (time-to-drive s3 s7) 74)
	(link s7 s6)
	(link s6 s7)
	(= (time-to-drive s7 s6) 25)
	(= (time-to-drive s6 s7) 25)
	(link s7 s8)
	(link s8 s7)
	(= (time-to-drive s7 s8) 19)
	(= (time-to-drive s8 s7) 19)
	(link s8 s0)
	(link s0 s8)
	(= (time-to-drive s8 s0) 15)
	(= (time-to-drive s0 s8) 15)
	(link s8 s2)
	(link s2 s8)
	(= (time-to-drive s8 s2) 26)
	(= (time-to-drive s2 s8) 26)
	(link s8 s3)
	(link s3 s8)
	(= (time-to-drive s8 s3) 94)
	(= (time-to-drive s3 s8) 94)
	(link s8 s5)
	(link s5 s8)
	(= (time-to-drive s8 s5) 67)
	(= (time-to-drive s5 s8) 67)
	(link s8 s12)
	(link s12 s8)
	(= (time-to-drive s8 s12) 77)
	(= (time-to-drive s12 s8) 77)
	(link s9 s3)
	(link s3 s9)
	(= (time-to-drive s9 s3) 28)
	(= (time-to-drive s3 s9) 28)
	(link s9 s5)
	(link s5 s9)
	(= (time-to-drive s9 s5) 42)
	(= (time-to-drive s5 s9) 42)
	(link s9 s7)
	(link s7 s9)
	(= (time-to-drive s9 s7) 41)
	(= (time-to-drive s7 s9) 41)
	(link s10 s3)
	(link s3 s10)
	(= (time-to-drive s10 s3) 43)
	(= (time-to-drive s3 s10) 43)
	(link s11 s1)
	(link s1 s11)
	(= (time-to-drive s11 s1) 20)
	(= (time-to-drive s1 s11) 20)
	(link s11 s4)
	(link s4 s11)
	(= (time-to-drive s11 s4) 48)
	(= (time-to-drive s4 s11) 48)
	(link s11 s10)
	(link s10 s11)
	(= (time-to-drive s11 s10) 92)
	(= (time-to-drive s10 s11) 92)
	(link s12 s0)
	(link s0 s12)
	(= (time-to-drive s12 s0) 11)
	(= (time-to-drive s0 s12) 11)
	(link s12 s10)
	(link s10 s12)
	(= (time-to-drive s12 s10) 30)
	(= (time-to-drive s10 s12) 30)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s1)
	(at driver2 s10)
	(at driver3 s1)
	(at truck4 s8)
	(at truck5 s0)
	(at package1 s2)
	(at package2 s6)
	(at package3 s10)
	(at package4 s1)
	(at package5 s1)
	(at package6 s10)
	(at package7 s1)
	(at package8 s8)
	))

(:metric minimize (+ (+ (* 4  (total-time)) (* 4  (driven))) (* 1  (walked))))

)
