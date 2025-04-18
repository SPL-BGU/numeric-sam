(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	satellite1 - satellite
	instrument1 - instrument
	satellite2 - satellite
	instrument2 - instrument
	instrument3 - instrument
	satellite3 - satellite
	instrument4 - instrument
	instrument5 - instrument
	instrument6 - instrument
	image2 - mode
	infrared1 - mode
	image0 - mode
	Star1 - direction
	GroundStation0 - direction
	Star3 - direction
	GroundStation4 - direction
	GroundStation2 - direction
	Phenomenon5 - direction
	Phenomenon6 - direction
	Phenomenon7 - direction
	Star8 - direction
	Star9 - direction
	Star10 - direction
	Phenomenon11 - direction
)
(:init
	(supports instrument0 image2)
	(supports instrument0 infrared1)
	(supports instrument0 image0)
	(calibration_target instrument0 Star3)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Star8)
	(= (data_capacity satellite0) 1000)
	(= (fuel satellite0) 176)
	(supports instrument1 image2)
	(supports instrument1 image0)
	(supports instrument1 infrared1)
	(calibration_target instrument1 GroundStation2)
	(on_board instrument1 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Phenomenon7)
	(= (data_capacity satellite1) 1000)
	(= (fuel satellite1) 187)
	(supports instrument2 image2)
	(supports instrument2 image0)
	(supports instrument2 infrared1)
	(calibration_target instrument2 GroundStation0)
	(supports instrument3 image2)
	(supports instrument3 infrared1)
	(supports instrument3 image0)
	(calibration_target instrument3 Star3)
	(on_board instrument2 satellite2)
	(on_board instrument3 satellite2)
	(power_avail satellite2)
	(pointing satellite2 GroundStation0)
	(= (data_capacity satellite2) 1000)
	(= (fuel satellite2) 199)
	(supports instrument4 image0)
	(supports instrument4 image2)
	(supports instrument4 infrared1)
	(calibration_target instrument4 GroundStation4)
	(supports instrument5 infrared1)
	(supports instrument5 image2)
	(supports instrument5 image0)
	(calibration_target instrument5 GroundStation4)
	(supports instrument6 image0)
	(calibration_target instrument6 GroundStation2)
	(on_board instrument4 satellite3)
	(on_board instrument5 satellite3)
	(on_board instrument6 satellite3)
	(power_avail satellite3)
	(pointing satellite3 GroundStation4)
	(= (data_capacity satellite3) 1000)
	(= (fuel satellite3) 164)
	(= (data Phenomenon5 image2) 146)
	(= (data Phenomenon6 image2) 200)
	(= (data Phenomenon7 image2) 252)
	(= (data Star8 image2) 293)
	(= (data Star9 image2) 117)
	(= (data Star10 image2) 16)
	(= (data Phenomenon11 image2) 172)
	(= (data Phenomenon5 infrared1) 256)
	(= (data Phenomenon6 infrared1) 152)
	(= (data Phenomenon7 infrared1) 234)
	(= (data Star8 infrared1) 196)
	(= (data Star9 infrared1) 178)
	(= (data Star10 infrared1) 174)
	(= (data Phenomenon11 infrared1) 155)
	(= (data Phenomenon5 image0) 264)
	(= (data Phenomenon6 image0) 110)
	(= (data Phenomenon7 image0) 154)
	(= (data Star8 image0) 208)
	(= (data Star9 image0) 244)
	(= (data Star10 image0) 201)
	(= (data Phenomenon11 image0) 124)
	(= (slew_time Star1 GroundStation0) 83.04)
	(= (slew_time GroundStation0 Star1) 83.04)
	(= (slew_time Star3 GroundStation0) 53.37)
	(= (slew_time GroundStation0 Star3) 53.37)
	(= (slew_time Star3 Star1) 62.59)
	(= (slew_time Star1 Star3) 62.59)
	(= (slew_time Star3 GroundStation2) 45.09)
	(= (slew_time GroundStation2 Star3) 45.09)
	(= (slew_time GroundStation4 GroundStation0) 85.49)
	(= (slew_time GroundStation0 GroundStation4) 85.49)
	(= (slew_time GroundStation4 Star1) 36.7)
	(= (slew_time Star1 GroundStation4) 36.7)
	(= (slew_time GroundStation4 GroundStation2) 58.07)
	(= (slew_time GroundStation2 GroundStation4) 58.07)
	(= (slew_time GroundStation4 Star3) 39.72)
	(= (slew_time Star3 GroundStation4) 39.72)
	(= (slew_time GroundStation2 GroundStation0) 44.78)
	(= (slew_time GroundStation0 GroundStation2) 44.78)
	(= (slew_time GroundStation2 Star1) 26.28)
	(= (slew_time Star1 GroundStation2) 26.28)
	(= (slew_time Phenomenon5 GroundStation0) 0.07427)
	(= (slew_time GroundStation0 Phenomenon5) 0.07427)
	(= (slew_time Phenomenon5 Star1) 60.82)
	(= (slew_time Star1 Phenomenon5) 60.82)
	(= (slew_time Phenomenon5 GroundStation2) 24.99)
	(= (slew_time GroundStation2 Phenomenon5) 24.99)
	(= (slew_time Phenomenon5 Star3) 24.59)
	(= (slew_time Star3 Phenomenon5) 24.59)
	(= (slew_time Phenomenon5 GroundStation4) 17.18)
	(= (slew_time GroundStation4 Phenomenon5) 17.18)
	(= (slew_time Phenomenon6 GroundStation0) 40.19)
	(= (slew_time GroundStation0 Phenomenon6) 40.19)
	(= (slew_time Phenomenon6 Star1) 3.758)
	(= (slew_time Star1 Phenomenon6) 3.758)
	(= (slew_time Phenomenon6 GroundStation2) 67.94)
	(= (slew_time GroundStation2 Phenomenon6) 67.94)
	(= (slew_time Phenomenon6 Star3) 1.931)
	(= (slew_time Star3 Phenomenon6) 1.931)
	(= (slew_time Phenomenon6 GroundStation4) 8.981)
	(= (slew_time GroundStation4 Phenomenon6) 8.981)
	(= (slew_time Phenomenon6 Phenomenon5) 31.56)
	(= (slew_time Phenomenon5 Phenomenon6) 31.56)
	(= (slew_time Phenomenon7 GroundStation0) 21.6)
	(= (slew_time GroundStation0 Phenomenon7) 21.6)
	(= (slew_time Phenomenon7 Star1) 83.94)
	(= (slew_time Star1 Phenomenon7) 83.94)
	(= (slew_time Phenomenon7 GroundStation2) 30.91)
	(= (slew_time GroundStation2 Phenomenon7) 30.91)
	(= (slew_time Phenomenon7 Star3) 13.28)
	(= (slew_time Star3 Phenomenon7) 13.28)
	(= (slew_time Phenomenon7 GroundStation4) 26.83)
	(= (slew_time GroundStation4 Phenomenon7) 26.83)
	(= (slew_time Phenomenon7 Phenomenon5) 11.07)
	(= (slew_time Phenomenon5 Phenomenon7) 11.07)
	(= (slew_time Phenomenon7 Phenomenon6) 29.7)
	(= (slew_time Phenomenon6 Phenomenon7) 29.7)
	(= (slew_time Star8 GroundStation0) 29.38)
	(= (slew_time GroundStation0 Star8) 29.38)
	(= (slew_time Star8 Star1) 19.46)
	(= (slew_time Star1 Star8) 19.46)
	(= (slew_time Star8 GroundStation2) 50.64)
	(= (slew_time GroundStation2 Star8) 50.64)
	(= (slew_time Star8 Star3) 63.25)
	(= (slew_time Star3 Star8) 63.25)
	(= (slew_time Star8 GroundStation4) 33.89)
	(= (slew_time GroundStation4 Star8) 33.89)
	(= (slew_time Star8 Phenomenon5) 41.87)
	(= (slew_time Phenomenon5 Star8) 41.87)
	(= (slew_time Star8 Phenomenon6) 39.14)
	(= (slew_time Phenomenon6 Star8) 39.14)
	(= (slew_time Star8 Phenomenon7) 37.45)
	(= (slew_time Phenomenon7 Star8) 37.45)
	(= (slew_time Star9 GroundStation0) 25.23)
	(= (slew_time GroundStation0 Star9) 25.23)
	(= (slew_time Star9 Star1) 56.34)
	(= (slew_time Star1 Star9) 56.34)
	(= (slew_time Star9 GroundStation2) 9.357)
	(= (slew_time GroundStation2 Star9) 9.357)
	(= (slew_time Star9 Star3) 8.596)
	(= (slew_time Star3 Star9) 8.596)
	(= (slew_time Star9 GroundStation4) 53.72)
	(= (slew_time GroundStation4 Star9) 53.72)
	(= (slew_time Star9 Phenomenon5) 17.54)
	(= (slew_time Phenomenon5 Star9) 17.54)
	(= (slew_time Star9 Phenomenon6) 15.2)
	(= (slew_time Phenomenon6 Star9) 15.2)
	(= (slew_time Star9 Phenomenon7) 55.82)
	(= (slew_time Phenomenon7 Star9) 55.82)
	(= (slew_time Star9 Star8) 66.06)
	(= (slew_time Star8 Star9) 66.06)
	(= (slew_time Star10 GroundStation0) 36.94)
	(= (slew_time GroundStation0 Star10) 36.94)
	(= (slew_time Star10 Star1) 30.08)
	(= (slew_time Star1 Star10) 30.08)
	(= (slew_time Star10 GroundStation2) 31.68)
	(= (slew_time GroundStation2 Star10) 31.68)
	(= (slew_time Star10 Star3) 34.03)
	(= (slew_time Star3 Star10) 34.03)
	(= (slew_time Star10 GroundStation4) 42.22)
	(= (slew_time GroundStation4 Star10) 42.22)
	(= (slew_time Star10 Phenomenon5) 10.66)
	(= (slew_time Phenomenon5 Star10) 10.66)
	(= (slew_time Star10 Phenomenon6) 10.84)
	(= (slew_time Phenomenon6 Star10) 10.84)
	(= (slew_time Star10 Phenomenon7) 5.41)
	(= (slew_time Phenomenon7 Star10) 5.41)
	(= (slew_time Star10 Star8) 4.957)
	(= (slew_time Star8 Star10) 4.957)
	(= (slew_time Star10 Star9) 8.12)
	(= (slew_time Star9 Star10) 8.12)
	(= (slew_time Phenomenon11 GroundStation0) 50.92)
	(= (slew_time GroundStation0 Phenomenon11) 50.92)
	(= (slew_time Phenomenon11 Star1) 35.47)
	(= (slew_time Star1 Phenomenon11) 35.47)
	(= (slew_time Phenomenon11 GroundStation2) 11.82)
	(= (slew_time GroundStation2 Phenomenon11) 11.82)
	(= (slew_time Phenomenon11 Star3) 72.3)
	(= (slew_time Star3 Phenomenon11) 72.3)
	(= (slew_time Phenomenon11 GroundStation4) 31.04)
	(= (slew_time GroundStation4 Phenomenon11) 31.04)
	(= (slew_time Phenomenon11 Phenomenon5) 18.53)
	(= (slew_time Phenomenon5 Phenomenon11) 18.53)
	(= (slew_time Phenomenon11 Phenomenon6) 13.09)
	(= (slew_time Phenomenon6 Phenomenon11) 13.09)
	(= (slew_time Phenomenon11 Phenomenon7) 61.73)
	(= (slew_time Phenomenon7 Phenomenon11) 61.73)
	(= (slew_time Phenomenon11 Star8) 11.75)
	(= (slew_time Star8 Phenomenon11) 11.75)
	(= (slew_time Phenomenon11 Star9) 22.38)
	(= (slew_time Star9 Phenomenon11) 22.38)
	(= (slew_time Phenomenon11 Star10) 69.36)
	(= (slew_time Star10 Phenomenon11) 69.36)
	(= (data-stored) 0)
	(= (fuel-used) 0)
)
(:goal (and
	(pointing satellite0 Phenomenon7)
	(pointing satellite3 GroundStation0)
	(have_image Phenomenon6 image2)
	(have_image Phenomenon7 image0)
	(have_image Star8 infrared1)
	(have_image Star9 image2)
	(have_image Star10 image0)
	(have_image Phenomenon11 image0)
))
(:metric minimize (fuel-used))

)
