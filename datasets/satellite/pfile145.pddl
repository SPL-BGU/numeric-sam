(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	satellite1 - satellite
	instrument1 - instrument
	instrument2 - instrument
	instrument3 - instrument
	satellite2 - satellite
	instrument4 - instrument
	satellite3 - satellite
	instrument5 - instrument
	instrument6 - instrument
	instrument7 - instrument
	satellite4 - satellite
	instrument8 - instrument
	instrument9 - instrument
	instrument10 - instrument
	image2 - mode
	infrared1 - mode
	image0 - mode
	GroundStation0 - direction
	GroundStation2 - direction
	Star1 - direction
	Star3 - direction
	Phenomenon4 - direction
	Star5 - direction
	Phenomenon6 - direction
	Phenomenon7 - direction
	Phenomenon8 - direction
	Phenomenon9 - direction
	Planet10 - direction
	Planet11 - direction
	Planet12 - direction
	Phenomenon13 - direction
	Planet14 - direction
	Phenomenon15 - direction
	Phenomenon16 - direction
)
(:init
	(supports instrument0 image0)
	(supports instrument0 image2)
	(calibration_target instrument0 GroundStation0)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Phenomenon15)
	(= (data_capacity satellite0) 1000)
	(= (fuel satellite0) 161)
	(supports instrument1 infrared1)
	(supports instrument1 image0)
	(supports instrument1 image2)
	(calibration_target instrument1 GroundStation2)
	(supports instrument2 image2)
	(supports instrument2 image0)
	(supports instrument2 infrared1)
	(calibration_target instrument2 Star1)
	(supports instrument3 infrared1)
	(supports instrument3 image0)
	(calibration_target instrument3 GroundStation2)
	(on_board instrument1 satellite1)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Star3)
	(= (data_capacity satellite1) 1000)
	(= (fuel satellite1) 167)
	(supports instrument4 image2)
	(supports instrument4 infrared1)
	(calibration_target instrument4 GroundStation0)
	(on_board instrument4 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Planet12)
	(= (data_capacity satellite2) 1000)
	(= (fuel satellite2) 172)
	(supports instrument5 image2)
	(supports instrument5 image0)
	(supports instrument5 infrared1)
	(calibration_target instrument5 GroundStation0)
	(supports instrument6 image0)
	(supports instrument6 infrared1)
	(calibration_target instrument6 Star1)
	(supports instrument7 infrared1)
	(supports instrument7 image0)
	(supports instrument7 image2)
	(calibration_target instrument7 GroundStation2)
	(on_board instrument5 satellite3)
	(on_board instrument6 satellite3)
	(on_board instrument7 satellite3)
	(power_avail satellite3)
	(pointing satellite3 GroundStation0)
	(= (data_capacity satellite3) 1000)
	(= (fuel satellite3) 146)
	(supports instrument8 image2)
	(calibration_target instrument8 GroundStation0)
	(supports instrument9 infrared1)
	(calibration_target instrument9 GroundStation2)
	(supports instrument10 image0)
	(supports instrument10 infrared1)
	(calibration_target instrument10 Star1)
	(on_board instrument8 satellite4)
	(on_board instrument9 satellite4)
	(on_board instrument10 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Phenomenon9)
	(= (data_capacity satellite4) 1000)
	(= (fuel satellite4) 156)
	(= (data Star3 image2) 91)
	(= (data Phenomenon4 image2) 287)
	(= (data Star5 image2) 102)
	(= (data Phenomenon6 image2) 42)
	(= (data Phenomenon7 image2) 131)
	(= (data Phenomenon8 image2) 229)
	(= (data Phenomenon9 image2) 79)
	(= (data Planet10 image2) 91)
	(= (data Planet11 image2) 213)
	(= (data Planet12 image2) 291)
	(= (data Phenomenon13 image2) 269)
	(= (data Planet14 image2) 116)
	(= (data Phenomenon15 image2) 257)
	(= (data Phenomenon16 image2) 152)
	(= (data Star3 infrared1) 265)
	(= (data Phenomenon4 infrared1) 128)
	(= (data Star5 infrared1) 197)
	(= (data Phenomenon6 infrared1) 9)
	(= (data Phenomenon7 infrared1) 5)
	(= (data Phenomenon8 infrared1) 177)
	(= (data Phenomenon9 infrared1) 111)
	(= (data Planet10 infrared1) 146)
	(= (data Planet11 infrared1) 138)
	(= (data Planet12 infrared1) 81)
	(= (data Phenomenon13 infrared1) 299)
	(= (data Planet14 infrared1) 169)
	(= (data Phenomenon15 infrared1) 192)
	(= (data Phenomenon16 infrared1) 194)
	(= (data Star3 image0) 47)
	(= (data Phenomenon4 image0) 157)
	(= (data Star5 image0) 65)
	(= (data Phenomenon6 image0) 278)
	(= (data Phenomenon7 image0) 171)
	(= (data Phenomenon8 image0) 279)
	(= (data Phenomenon9 image0) 52)
	(= (data Planet10 image0) 59)
	(= (data Planet11 image0) 84)
	(= (data Planet12 image0) 49)
	(= (data Phenomenon13 image0) 76)
	(= (data Planet14 image0) 118)
	(= (data Phenomenon15 image0) 218)
	(= (data Phenomenon16 image0) 157)
	(= (slew_time GroundStation2 GroundStation0) 44.78)
	(= (slew_time GroundStation0 GroundStation2) 44.78)
	(= (slew_time GroundStation2 Star1) 26.28)
	(= (slew_time Star1 GroundStation2) 26.28)
	(= (slew_time Star1 GroundStation0) 83.04)
	(= (slew_time GroundStation0 Star1) 83.04)
	(= (slew_time Star3 GroundStation0) 53.37)
	(= (slew_time GroundStation0 Star3) 53.37)
	(= (slew_time Star3 Star1) 62.59)
	(= (slew_time Star1 Star3) 62.59)
	(= (slew_time Star3 GroundStation2) 45.09)
	(= (slew_time GroundStation2 Star3) 45.09)
	(= (slew_time Phenomenon4 GroundStation0) 39.72)
	(= (slew_time GroundStation0 Phenomenon4) 39.72)
	(= (slew_time Phenomenon4 Star1) 6.496)
	(= (slew_time Star1 Phenomenon4) 6.496)
	(= (slew_time Phenomenon4 GroundStation2) 0.03618)
	(= (slew_time GroundStation2 Phenomenon4) 0.03618)
	(= (slew_time Phenomenon4 Star3) 14.99)
	(= (slew_time Star3 Phenomenon4) 14.99)
	(= (slew_time Star5 GroundStation0) 16.77)
	(= (slew_time GroundStation0 Star5) 16.77)
	(= (slew_time Star5 Star1) 2.779)
	(= (slew_time Star1 Star5) 2.779)
	(= (slew_time Star5 GroundStation2) 48.85)
	(= (slew_time GroundStation2 Star5) 48.85)
	(= (slew_time Star5 Star3) 32.5)
	(= (slew_time Star3 Star5) 32.5)
	(= (slew_time Star5 Phenomenon4) 54.52)
	(= (slew_time Phenomenon4 Star5) 54.52)
	(= (slew_time Phenomenon6 GroundStation0) 16.92)
	(= (slew_time GroundStation0 Phenomenon6) 16.92)
	(= (slew_time Phenomenon6 Star1) 30.82)
	(= (slew_time Star1 Phenomenon6) 30.82)
	(= (slew_time Phenomenon6 GroundStation2) 14.11)
	(= (slew_time GroundStation2 Phenomenon6) 14.11)
	(= (slew_time Phenomenon6 Star3) 8.038)
	(= (slew_time Star3 Phenomenon6) 8.038)
	(= (slew_time Phenomenon6 Phenomenon4) 40.42)
	(= (slew_time Phenomenon4 Phenomenon6) 40.42)
	(= (slew_time Phenomenon6 Star5) 4.425)
	(= (slew_time Star5 Phenomenon6) 4.425)
	(= (slew_time Phenomenon7 GroundStation0) 29.7)
	(= (slew_time GroundStation0 Phenomenon7) 29.7)
	(= (slew_time Phenomenon7 Star1) 20.57)
	(= (slew_time Star1 Phenomenon7) 20.57)
	(= (slew_time Phenomenon7 GroundStation2) 10.63)
	(= (slew_time GroundStation2 Phenomenon7) 10.63)
	(= (slew_time Phenomenon7 Star3) 26.76)
	(= (slew_time Star3 Phenomenon7) 26.76)
	(= (slew_time Phenomenon7 Phenomenon4) 11.28)
	(= (slew_time Phenomenon4 Phenomenon7) 11.28)
	(= (slew_time Phenomenon7 Star5) 25.57)
	(= (slew_time Star5 Phenomenon7) 25.57)
	(= (slew_time Phenomenon7 Phenomenon6) 53.71)
	(= (slew_time Phenomenon6 Phenomenon7) 53.71)
	(= (slew_time Phenomenon8 GroundStation0) 39.14)
	(= (slew_time GroundStation0 Phenomenon8) 39.14)
	(= (slew_time Phenomenon8 Star1) 37.45)
	(= (slew_time Star1 Phenomenon8) 37.45)
	(= (slew_time Phenomenon8 GroundStation2) 50.72)
	(= (slew_time GroundStation2 Phenomenon8) 50.72)
	(= (slew_time Phenomenon8 Star3) 43.45)
	(= (slew_time Star3 Phenomenon8) 43.45)
	(= (slew_time Phenomenon8 Phenomenon4) 3.798)
	(= (slew_time Phenomenon4 Phenomenon8) 3.798)
	(= (slew_time Phenomenon8 Star5) 68.48)
	(= (slew_time Star5 Phenomenon8) 68.48)
	(= (slew_time Phenomenon8 Phenomenon6) 11.65)
	(= (slew_time Phenomenon6 Phenomenon8) 11.65)
	(= (slew_time Phenomenon8 Phenomenon7) 14.59)
	(= (slew_time Phenomenon7 Phenomenon8) 14.59)
	(= (slew_time Phenomenon9 GroundStation0) 15.2)
	(= (slew_time GroundStation0 Phenomenon9) 15.2)
	(= (slew_time Phenomenon9 Star1) 55.82)
	(= (slew_time Star1 Phenomenon9) 55.82)
	(= (slew_time Phenomenon9 GroundStation2) 66.06)
	(= (slew_time GroundStation2 Phenomenon9) 66.06)
	(= (slew_time Phenomenon9 Star3) 20.54)
	(= (slew_time Star3 Phenomenon9) 20.54)
	(= (slew_time Phenomenon9 Phenomenon4) 50.17)
	(= (slew_time Phenomenon4 Phenomenon9) 50.17)
	(= (slew_time Phenomenon9 Star5) 22.07)
	(= (slew_time Star5 Phenomenon9) 22.07)
	(= (slew_time Phenomenon9 Phenomenon6) 8.704)
	(= (slew_time Phenomenon6 Phenomenon9) 8.704)
	(= (slew_time Phenomenon9 Phenomenon7) 36.1)
	(= (slew_time Phenomenon7 Phenomenon9) 36.1)
	(= (slew_time Phenomenon9 Phenomenon8) 59.26)
	(= (slew_time Phenomenon8 Phenomenon9) 59.26)
	(= (slew_time Planet10 GroundStation0) 10.84)
	(= (slew_time GroundStation0 Planet10) 10.84)
	(= (slew_time Planet10 Star1) 5.41)
	(= (slew_time Star1 Planet10) 5.41)
	(= (slew_time Planet10 GroundStation2) 4.957)
	(= (slew_time GroundStation2 Planet10) 4.957)
	(= (slew_time Planet10 Star3) 8.12)
	(= (slew_time Star3 Planet10) 8.12)
	(= (slew_time Planet10 Phenomenon4) 46.19)
	(= (slew_time Phenomenon4 Planet10) 46.19)
	(= (slew_time Planet10 Star5) 6.722)
	(= (slew_time Star5 Planet10) 6.722)
	(= (slew_time Planet10 Phenomenon6) 8.907)
	(= (slew_time Phenomenon6 Planet10) 8.907)
	(= (slew_time Planet10 Phenomenon7) 84.98)
	(= (slew_time Phenomenon7 Planet10) 84.98)
	(= (slew_time Planet10 Phenomenon8) 25.12)
	(= (slew_time Phenomenon8 Planet10) 25.12)
	(= (slew_time Planet10 Phenomenon9) 57.78)
	(= (slew_time Phenomenon9 Planet10) 57.78)
	(= (slew_time Planet11 GroundStation0) 13.09)
	(= (slew_time GroundStation0 Planet11) 13.09)
	(= (slew_time Planet11 Star1) 61.73)
	(= (slew_time Star1 Planet11) 61.73)
	(= (slew_time Planet11 GroundStation2) 11.75)
	(= (slew_time GroundStation2 Planet11) 11.75)
	(= (slew_time Planet11 Star3) 22.38)
	(= (slew_time Star3 Planet11) 22.38)
	(= (slew_time Planet11 Phenomenon4) 69.36)
	(= (slew_time Phenomenon4 Planet11) 69.36)
	(= (slew_time Planet11 Star5) 19.69)
	(= (slew_time Star5 Planet11) 19.69)
	(= (slew_time Planet11 Phenomenon6) 70.58)
	(= (slew_time Phenomenon6 Planet11) 70.58)
	(= (slew_time Planet11 Phenomenon7) 10.15)
	(= (slew_time Phenomenon7 Planet11) 10.15)
	(= (slew_time Planet11 Phenomenon8) 41.95)
	(= (slew_time Phenomenon8 Planet11) 41.95)
	(= (slew_time Planet11 Phenomenon9) 9.277)
	(= (slew_time Phenomenon9 Planet11) 9.277)
	(= (slew_time Planet11 Planet10) 17.53)
	(= (slew_time Planet10 Planet11) 17.53)
	(= (slew_time Planet12 GroundStation0) 0.4512)
	(= (slew_time GroundStation0 Planet12) 0.4512)
	(= (slew_time Planet12 Star1) 7.435)
	(= (slew_time Star1 Planet12) 7.435)
	(= (slew_time Planet12 GroundStation2) 12.06)
	(= (slew_time GroundStation2 Planet12) 12.06)
	(= (slew_time Planet12 Star3) 12.2)
	(= (slew_time Star3 Planet12) 12.2)
	(= (slew_time Planet12 Phenomenon4) 42.73)
	(= (slew_time Phenomenon4 Planet12) 42.73)
	(= (slew_time Planet12 Star5) 31.61)
	(= (slew_time Star5 Planet12) 31.61)
	(= (slew_time Planet12 Phenomenon6) 80.94)
	(= (slew_time Phenomenon6 Planet12) 80.94)
	(= (slew_time Planet12 Phenomenon7) 37.7)
	(= (slew_time Phenomenon7 Planet12) 37.7)
	(= (slew_time Planet12 Phenomenon8) 18.03)
	(= (slew_time Phenomenon8 Planet12) 18.03)
	(= (slew_time Planet12 Phenomenon9) 26.25)
	(= (slew_time Phenomenon9 Planet12) 26.25)
	(= (slew_time Planet12 Planet10) 34.16)
	(= (slew_time Planet10 Planet12) 34.16)
	(= (slew_time Planet12 Planet11) 21.78)
	(= (slew_time Planet11 Planet12) 21.78)
	(= (slew_time Phenomenon13 GroundStation0) 89.94)
	(= (slew_time GroundStation0 Phenomenon13) 89.94)
	(= (slew_time Phenomenon13 Star1) 11.68)
	(= (slew_time Star1 Phenomenon13) 11.68)
	(= (slew_time Phenomenon13 GroundStation2) 43.99)
	(= (slew_time GroundStation2 Phenomenon13) 43.99)
	(= (slew_time Phenomenon13 Star3) 22.71)
	(= (slew_time Star3 Phenomenon13) 22.71)
	(= (slew_time Phenomenon13 Phenomenon4) 51.4)
	(= (slew_time Phenomenon4 Phenomenon13) 51.4)
	(= (slew_time Phenomenon13 Star5) 62.16)
	(= (slew_time Star5 Phenomenon13) 62.16)
	(= (slew_time Phenomenon13 Phenomenon6) 4.284)
	(= (slew_time Phenomenon6 Phenomenon13) 4.284)
	(= (slew_time Phenomenon13 Phenomenon7) 56.22)
	(= (slew_time Phenomenon7 Phenomenon13) 56.22)
	(= (slew_time Phenomenon13 Phenomenon8) 15.94)
	(= (slew_time Phenomenon8 Phenomenon13) 15.94)
	(= (slew_time Phenomenon13 Phenomenon9) 9.831)
	(= (slew_time Phenomenon9 Phenomenon13) 9.831)
	(= (slew_time Phenomenon13 Planet10) 66.19)
	(= (slew_time Planet10 Phenomenon13) 66.19)
	(= (slew_time Phenomenon13 Planet11) 77.04)
	(= (slew_time Planet11 Phenomenon13) 77.04)
	(= (slew_time Phenomenon13 Planet12) 88.2)
	(= (slew_time Planet12 Phenomenon13) 88.2)
	(= (slew_time Planet14 GroundStation0) 37.61)
	(= (slew_time GroundStation0 Planet14) 37.61)
	(= (slew_time Planet14 Star1) 38.66)
	(= (slew_time Star1 Planet14) 38.66)
	(= (slew_time Planet14 GroundStation2) 23.26)
	(= (slew_time GroundStation2 Planet14) 23.26)
	(= (slew_time Planet14 Star3) 22.46)
	(= (slew_time Star3 Planet14) 22.46)
	(= (slew_time Planet14 Phenomenon4) 5.417)
	(= (slew_time Phenomenon4 Planet14) 5.417)
	(= (slew_time Planet14 Star5) 50.88)
	(= (slew_time Star5 Planet14) 50.88)
	(= (slew_time Planet14 Phenomenon6) 2.8)
	(= (slew_time Phenomenon6 Planet14) 2.8)
	(= (slew_time Planet14 Phenomenon7) 55.49)
	(= (slew_time Phenomenon7 Planet14) 55.49)
	(= (slew_time Planet14 Phenomenon8) 3.203)
	(= (slew_time Phenomenon8 Planet14) 3.203)
	(= (slew_time Planet14 Phenomenon9) 30.67)
	(= (slew_time Phenomenon9 Planet14) 30.67)
	(= (slew_time Planet14 Planet10) 76.8)
	(= (slew_time Planet10 Planet14) 76.8)
	(= (slew_time Planet14 Planet11) 59.61)
	(= (slew_time Planet11 Planet14) 59.61)
	(= (slew_time Planet14 Planet12) 22.43)
	(= (slew_time Planet12 Planet14) 22.43)
	(= (slew_time Planet14 Phenomenon13) 26.23)
	(= (slew_time Phenomenon13 Planet14) 26.23)
	(= (slew_time Phenomenon15 GroundStation0) 59.94)
	(= (slew_time GroundStation0 Phenomenon15) 59.94)
	(= (slew_time Phenomenon15 Star1) 32.1)
	(= (slew_time Star1 Phenomenon15) 32.1)
	(= (slew_time Phenomenon15 GroundStation2) 90.55)
	(= (slew_time GroundStation2 Phenomenon15) 90.55)
	(= (slew_time Phenomenon15 Star3) 37.55)
	(= (slew_time Star3 Phenomenon15) 37.55)
	(= (slew_time Phenomenon15 Phenomenon4) 6.078)
	(= (slew_time Phenomenon4 Phenomenon15) 6.078)
	(= (slew_time Phenomenon15 Star5) 17.48)
	(= (slew_time Star5 Phenomenon15) 17.48)
	(= (slew_time Phenomenon15 Phenomenon6) 21.31)
	(= (slew_time Phenomenon6 Phenomenon15) 21.31)
	(= (slew_time Phenomenon15 Phenomenon7) 33.6)
	(= (slew_time Phenomenon7 Phenomenon15) 33.6)
	(= (slew_time Phenomenon15 Phenomenon8) 59.08)
	(= (slew_time Phenomenon8 Phenomenon15) 59.08)
	(= (slew_time Phenomenon15 Phenomenon9) 47.67)
	(= (slew_time Phenomenon9 Phenomenon15) 47.67)
	(= (slew_time Phenomenon15 Planet10) 9.928)
	(= (slew_time Planet10 Phenomenon15) 9.928)
	(= (slew_time Phenomenon15 Planet11) 31.57)
	(= (slew_time Planet11 Phenomenon15) 31.57)
	(= (slew_time Phenomenon15 Planet12) 2.23)
	(= (slew_time Planet12 Phenomenon15) 2.23)
	(= (slew_time Phenomenon15 Phenomenon13) 85.16)
	(= (slew_time Phenomenon13 Phenomenon15) 85.16)
	(= (slew_time Phenomenon15 Planet14) 35.36)
	(= (slew_time Planet14 Phenomenon15) 35.36)
	(= (slew_time Phenomenon16 GroundStation0) 71.09)
	(= (slew_time GroundStation0 Phenomenon16) 71.09)
	(= (slew_time Phenomenon16 Star1) 4.884)
	(= (slew_time Star1 Phenomenon16) 4.884)
	(= (slew_time Phenomenon16 GroundStation2) 42.12)
	(= (slew_time GroundStation2 Phenomenon16) 42.12)
	(= (slew_time Phenomenon16 Star3) 25.26)
	(= (slew_time Star3 Phenomenon16) 25.26)
	(= (slew_time Phenomenon16 Phenomenon4) 58.58)
	(= (slew_time Phenomenon4 Phenomenon16) 58.58)
	(= (slew_time Phenomenon16 Star5) 16.53)
	(= (slew_time Star5 Phenomenon16) 16.53)
	(= (slew_time Phenomenon16 Phenomenon6) 19.78)
	(= (slew_time Phenomenon6 Phenomenon16) 19.78)
	(= (slew_time Phenomenon16 Phenomenon7) 38.84)
	(= (slew_time Phenomenon7 Phenomenon16) 38.84)
	(= (slew_time Phenomenon16 Phenomenon8) 20.38)
	(= (slew_time Phenomenon8 Phenomenon16) 20.38)
	(= (slew_time Phenomenon16 Phenomenon9) 87.74)
	(= (slew_time Phenomenon9 Phenomenon16) 87.74)
	(= (slew_time Phenomenon16 Planet10) 24.73)
	(= (slew_time Planet10 Phenomenon16) 24.73)
	(= (slew_time Phenomenon16 Planet11) 67.14)
	(= (slew_time Planet11 Phenomenon16) 67.14)
	(= (slew_time Phenomenon16 Planet12) 10.89)
	(= (slew_time Planet12 Phenomenon16) 10.89)
	(= (slew_time Phenomenon16 Phenomenon13) 65.85)
	(= (slew_time Phenomenon13 Phenomenon16) 65.85)
	(= (slew_time Phenomenon16 Planet14) 28.93)
	(= (slew_time Planet14 Phenomenon16) 28.93)
	(= (slew_time Phenomenon16 Phenomenon15) 0.3717)
	(= (slew_time Phenomenon15 Phenomenon16) 0.3717)
	(= (data-stored) 0)
	(= (fuel-used) 0)
)
(:goal (and
	(have_image Phenomenon4 image2)
	(have_image Star5 image0)
	(have_image Phenomenon6 image2)
	(have_image Phenomenon8 image0)
	(have_image Phenomenon9 image2)
	(have_image Planet10 image0)
	(have_image Planet11 image2)
	(have_image Planet12 infrared1)
	(have_image Phenomenon13 infrared1)
	(have_image Planet14 image2)
	(have_image Phenomenon15 image2)
	(have_image Phenomenon16 image2)
))
(:metric minimize (fuel-used))

)
