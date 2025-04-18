(define (problem DLOG-4-4-4)
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
	package1 - obj
	package2 - obj
	package3 - obj
	package4 - obj
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
	p1-2 - location
	p2-3 - location
	p3-1 - location
	p3-5 - location
	p3-6 - location
	p3-7 - location
	p3-8 - location
	p3-9 - location
	p4-0 - location
	p4-1 - location
	p5-1 - location
	p6-3 - location
	p6-4 - location
	p6-10 - location
	p7-1 - location
	p7-2 - location
	p8-1 - location
	p8-2 - location
	p8-5 - location
	p8-7 - location
	p9-7 - location
	p10-2 - location
	)
	(:init
	(at driver1 s8)
	(at driver2 s5)
	(at driver3 s2)
	(at driver4 s9)
	(at truck1 s1)
	(empty truck1)
	(at truck2 s5)
	(empty truck2)
	(at truck3 s2)
	(empty truck3)
	(at truck4 s9)
	(empty truck4)
	(at package1 s10)
	(at package2 s3)
	(at package3 s0)
	(at package4 s9)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 43)
	(= (time-to-walk p1-2 s1) 43)
	(= (time-to-walk s2 p1-2) 23)
	(= (time-to-walk p1-2 s2) 23)
	(path s2 p2-3)
	(path p2-3 s2)
	(path s3 p2-3)
	(path p2-3 s3)
	(= (time-to-walk s2 p2-3) 6)
	(= (time-to-walk p2-3 s2) 6)
	(= (time-to-walk s3 p2-3) 23)
	(= (time-to-walk p2-3 s3) 23)
	(path s3 p3-1)
	(path p3-1 s3)
	(path s1 p3-1)
	(path p3-1 s1)
	(= (time-to-walk s3 p3-1) 9)
	(= (time-to-walk p3-1 s3) 9)
	(= (time-to-walk s1 p3-1) 12)
	(= (time-to-walk p3-1 s1) 12)
	(path s3 p3-5)
	(path p3-5 s3)
	(path s5 p3-5)
	(path p3-5 s5)
	(= (time-to-walk s3 p3-5) 40)
	(= (time-to-walk p3-5 s3) 40)
	(= (time-to-walk s5 p3-5) 23)
	(= (time-to-walk p3-5 s5) 23)
	(path s3 p3-6)
	(path p3-6 s3)
	(path s6 p3-6)
	(path p3-6 s6)
	(= (time-to-walk s3 p3-6) 52)
	(= (time-to-walk p3-6 s3) 52)
	(= (time-to-walk s6 p3-6) 47)
	(= (time-to-walk p3-6 s6) 47)
	(path s3 p3-7)
	(path p3-7 s3)
	(path s7 p3-7)
	(path p3-7 s7)
	(= (time-to-walk s3 p3-7) 77)
	(= (time-to-walk p3-7 s3) 77)
	(= (time-to-walk s7 p3-7) 70)
	(= (time-to-walk p3-7 s7) 70)
	(path s3 p3-8)
	(path p3-8 s3)
	(path s8 p3-8)
	(path p3-8 s8)
	(= (time-to-walk s3 p3-8) 88)
	(= (time-to-walk p3-8 s3) 88)
	(= (time-to-walk s8 p3-8) 1)
	(= (time-to-walk p3-8 s8) 1)
	(path s3 p3-9)
	(path p3-9 s3)
	(path s9 p3-9)
	(path p3-9 s9)
	(= (time-to-walk s3 p3-9) 40)
	(= (time-to-walk p3-9 s3) 40)
	(= (time-to-walk s9 p3-9) 84)
	(= (time-to-walk p3-9 s9) 84)
	(path s4 p4-0)
	(path p4-0 s4)
	(path s0 p4-0)
	(path p4-0 s0)
	(= (time-to-walk s4 p4-0) 85)
	(= (time-to-walk p4-0 s4) 85)
	(= (time-to-walk s0 p4-0) 77)
	(= (time-to-walk p4-0 s0) 77)
	(path s4 p4-1)
	(path p4-1 s4)
	(path s1 p4-1)
	(path p4-1 s1)
	(= (time-to-walk s4 p4-1) 41)
	(= (time-to-walk p4-1 s4) 41)
	(= (time-to-walk s1 p4-1) 82)
	(= (time-to-walk p4-1 s1) 82)
	(path s5 p5-1)
	(path p5-1 s5)
	(path s1 p5-1)
	(path p5-1 s1)
	(= (time-to-walk s5 p5-1) 62)
	(= (time-to-walk p5-1 s5) 62)
	(= (time-to-walk s1 p5-1) 35)
	(= (time-to-walk p5-1 s1) 35)
	(path s6 p6-4)
	(path p6-4 s6)
	(path s4 p6-4)
	(path p6-4 s4)
	(= (time-to-walk s6 p6-4) 16)
	(= (time-to-walk p6-4 s6) 16)
	(= (time-to-walk s4 p6-4) 30)
	(= (time-to-walk p6-4 s4) 30)
	(path s6 p6-10)
	(path p6-10 s6)
	(path s10 p6-10)
	(path p6-10 s10)
	(= (time-to-walk s6 p6-10) 74)
	(= (time-to-walk p6-10 s6) 74)
	(= (time-to-walk s10 p6-10) 20)
	(= (time-to-walk p6-10 s10) 20)
	(path s7 p7-1)
	(path p7-1 s7)
	(path s1 p7-1)
	(path p7-1 s1)
	(= (time-to-walk s7 p7-1) 77)
	(= (time-to-walk p7-1 s7) 77)
	(= (time-to-walk s1 p7-1) 99)
	(= (time-to-walk p7-1 s1) 99)
	(path s7 p7-2)
	(path p7-2 s7)
	(path s2 p7-2)
	(path p7-2 s2)
	(= (time-to-walk s7 p7-2) 6)
	(= (time-to-walk p7-2 s7) 6)
	(= (time-to-walk s2 p7-2) 74)
	(= (time-to-walk p7-2 s2) 74)
	(path s8 p8-1)
	(path p8-1 s8)
	(path s1 p8-1)
	(path p8-1 s1)
	(= (time-to-walk s8 p8-1) 15)
	(= (time-to-walk p8-1 s8) 15)
	(= (time-to-walk s1 p8-1) 48)
	(= (time-to-walk p8-1 s1) 48)
	(path s8 p8-2)
	(path p8-2 s8)
	(path s2 p8-2)
	(path p8-2 s2)
	(= (time-to-walk s8 p8-2) 97)
	(= (time-to-walk p8-2 s8) 97)
	(= (time-to-walk s2 p8-2) 20)
	(= (time-to-walk p8-2 s2) 20)
	(path s8 p8-5)
	(path p8-5 s8)
	(path s5 p8-5)
	(path p8-5 s5)
	(= (time-to-walk s8 p8-5) 71)
	(= (time-to-walk p8-5 s8) 71)
	(= (time-to-walk s5 p8-5) 5)
	(= (time-to-walk p8-5 s5) 5)
	(path s8 p8-7)
	(path p8-7 s8)
	(path s7 p8-7)
	(path p8-7 s7)
	(= (time-to-walk s8 p8-7) 32)
	(= (time-to-walk p8-7 s8) 32)
	(= (time-to-walk s7 p8-7) 11)
	(= (time-to-walk p8-7 s7) 11)
	(path s9 p9-7)
	(path p9-7 s9)
	(path s7 p9-7)
	(path p9-7 s7)
	(= (time-to-walk s9 p9-7) 28)
	(= (time-to-walk p9-7 s9) 28)
	(= (time-to-walk s7 p9-7) 83)
	(= (time-to-walk p9-7 s7) 83)
	(path s10 p10-2)
	(path p10-2 s10)
	(path s2 p10-2)
	(path p10-2 s2)
	(= (time-to-walk s10 p10-2) 57)
	(= (time-to-walk p10-2 s10) 57)
	(= (time-to-walk s2 p10-2) 4)
	(= (time-to-walk p10-2 s2) 4)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 52)
	(= (time-to-drive s2 s0) 52)
	(link s0 s3)
	(link s3 s0)
	(= (time-to-drive s0 s3) 45)
	(= (time-to-drive s3 s0) 45)
	(link s0 s6)
	(link s6 s0)
	(= (time-to-drive s0 s6) 4)
	(= (time-to-drive s6 s0) 4)
	(link s0 s7)
	(link s7 s0)
	(= (time-to-drive s0 s7) 91)
	(= (time-to-drive s7 s0) 91)
	(link s0 s8)
	(link s8 s0)
	(= (time-to-drive s0 s8) 28)
	(= (time-to-drive s8 s0) 28)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 88)
	(= (time-to-drive s0 s1) 88)
	(link s1 s3)
	(link s3 s1)
	(= (time-to-drive s1 s3) 68)
	(= (time-to-drive s3 s1) 68)
	(link s1 s10)
	(link s10 s1)
	(= (time-to-drive s1 s10) 69)
	(= (time-to-drive s10 s1) 69)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 70)
	(= (time-to-drive s1 s2) 70)
	(link s2 s7)
	(link s7 s2)
	(= (time-to-drive s2 s7) 29)
	(= (time-to-drive s7 s2) 29)
	(link s2 s10)
	(link s10 s2)
	(= (time-to-drive s2 s10) 3)
	(= (time-to-drive s10 s2) 3)
	(link s3 s8)
	(link s8 s3)
	(= (time-to-drive s3 s8) 86)
	(= (time-to-drive s8 s3) 86)
	(link s3 s10)
	(link s10 s3)
	(= (time-to-drive s3 s10) 58)
	(= (time-to-drive s10 s3) 58)
	(link s4 s1)
	(link s1 s4)
	(= (time-to-drive s4 s1) 76)
	(= (time-to-drive s1 s4) 76)
	(link s4 s3)
	(link s3 s4)
	(= (time-to-drive s4 s3) 6)
	(= (time-to-drive s3 s4) 6)
	(link s4 s8)
	(link s8 s4)
	(= (time-to-drive s4 s8) 35)
	(= (time-to-drive s8 s4) 35)
	(link s5 s4)
	(link s4 s5)
	(= (time-to-drive s5 s4) 75)
	(= (time-to-drive s4 s5) 75)
	(link s5 s8)
	(link s8 s5)
	(= (time-to-drive s5 s8) 11)
	(= (time-to-drive s8 s5) 11)
	(link s6 s1)
	(link s1 s6)
	(= (time-to-drive s6 s1) 8)
	(= (time-to-drive s1 s6) 8)
	(link s7 s5)
	(link s5 s7)
	(= (time-to-drive s7 s5) 89)
	(= (time-to-drive s5 s7) 89)
	(link s7 s6)
	(link s6 s7)
	(= (time-to-drive s7 s6) 59)
	(= (time-to-drive s6 s7) 59)
	(link s7 s9)
	(link s9 s7)
	(= (time-to-drive s7 s9) 5)
	(= (time-to-drive s9 s7) 5)
	(link s9 s2)
	(link s2 s9)
	(= (time-to-drive s9 s2) 8)
	(= (time-to-drive s2 s9) 8)
	(link s9 s3)
	(link s3 s9)
	(= (time-to-drive s9 s3) 29)
	(= (time-to-drive s3 s9) 29)
	(link s9 s4)
	(link s4 s9)
	(= (time-to-drive s9 s4) 9)
	(= (time-to-drive s4 s9) 9)
	(link s9 s6)
	(link s6 s9)
	(= (time-to-drive s9 s6) 39)
	(= (time-to-drive s6 s9) 39)
	(link s10 s4)
	(link s4 s10)
	(= (time-to-drive s10 s4) 40)
	(= (time-to-drive s4 s10) 40)
	(link s10 s9)
	(link s9 s10)
	(= (time-to-drive s10 s9) 37)
	(= (time-to-drive s9 s10) 37)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s9)
	(at driver2 s10)
	(at driver3 s9)
	(at truck2 s1)
	(at truck3 s7)
	(at truck4 s4)
	(at package1 s9)
	(at package2 s7)
	(at package3 s5)
	(at package4 s10)
	))

(:metric minimize (+ (+ (* 1  (total-time)) (* 4  (driven))) (* 2  (walked))))

)
