(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	image1 - mode
	thermograph2 - mode
	infrared0 - mode
	Star1 - direction
	GroundStation0 - direction
	GroundStation2 - direction
	Star3 - direction
	Phenomenon4 - direction
	Phenomenon5 - direction
	Planet6 - direction
	Planet7 - direction
	Phenomenon8 - direction
	Planet9 - direction
	Star10 - direction
)
(:init
	(supports instrument0 image1)
	(supports instrument0 infrared0)
	(supports instrument0 thermograph2)
	(calibration_target instrument0 GroundStation0)
	(supports instrument1 infrared0)
	(supports instrument1 thermograph2)
	(calibration_target instrument1 GroundStation2)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Planet9)
	(= (data_capacity satellite0) 1000)
	(= (fuel satellite0) 110)
	(= (data Star3 image1) 4)
	(= (data Phenomenon4 image1) 135)
	(= (data Phenomenon5 image1) 160)
	(= (data Planet6 image1) 178)
	(= (data Planet7 image1) 200)
	(= (data Phenomenon8 image1) 268)
	(= (data Planet9 image1) 191)
	(= (data Star10 image1) 35)
	(= (data Star3 thermograph2) 186)
	(= (data Phenomenon4 thermograph2) 33)
	(= (data Phenomenon5 thermograph2) 248)
	(= (data Planet6 thermograph2) 45)
	(= (data Planet7 thermograph2) 148)
	(= (data Phenomenon8 thermograph2) 43)
	(= (data Planet9 thermograph2) 281)
	(= (data Star10 thermograph2) 263)
	(= (data Star3 infrared0) 167)
	(= (data Phenomenon4 infrared0) 4)
	(= (data Phenomenon5 infrared0) 208)
	(= (data Planet6 infrared0) 77)
	(= (data Planet7 infrared0) 140)
	(= (data Phenomenon8 infrared0) 228)
	(= (data Planet9 infrared0) 216)
	(= (data Star10 infrared0) 36)
	(= (slew_time Star1 GroundStation0) 41.69)
	(= (slew_time GroundStation0 Star1) 41.69)
	(= (slew_time GroundStation2 GroundStation0) 30.63)
	(= (slew_time GroundStation0 GroundStation2) 30.63)
	(= (slew_time GroundStation2 Star1) 20.78)
	(= (slew_time Star1 GroundStation2) 20.78)
	(= (slew_time Star3 GroundStation0) 8.362)
	(= (slew_time GroundStation0 Star3) 8.362)
	(= (slew_time Star3 Star1) 46.7)
	(= (slew_time Star1 Star3) 46.7)
	(= (slew_time Star3 GroundStation2) 13.42)
	(= (slew_time GroundStation2 Star3) 13.42)
	(= (slew_time Phenomenon4 GroundStation0) 25.72)
	(= (slew_time GroundStation0 Phenomenon4) 25.72)
	(= (slew_time Phenomenon4 Star1) 94.37)
	(= (slew_time Star1 Phenomenon4) 94.37)
	(= (slew_time Phenomenon4 GroundStation2) 27.32)
	(= (slew_time GroundStation2 Phenomenon4) 27.32)
	(= (slew_time Phenomenon4 Star3) 74.81)
	(= (slew_time Star3 Phenomenon4) 74.81)
	(= (slew_time Phenomenon5 GroundStation0) 35.55)
	(= (slew_time GroundStation0 Phenomenon5) 35.55)
	(= (slew_time Phenomenon5 Star1) 32.23)
	(= (slew_time Star1 Phenomenon5) 32.23)
	(= (slew_time Phenomenon5 GroundStation2) 76.55)
	(= (slew_time GroundStation2 Phenomenon5) 76.55)
	(= (slew_time Phenomenon5 Star3) 18.27)
	(= (slew_time Star3 Phenomenon5) 18.27)
	(= (slew_time Phenomenon5 Phenomenon4) 11.83)
	(= (slew_time Phenomenon4 Phenomenon5) 11.83)
	(= (slew_time Planet6 GroundStation0) 24.47)
	(= (slew_time GroundStation0 Planet6) 24.47)
	(= (slew_time Planet6 Star1) 2.033)
	(= (slew_time Star1 Planet6) 2.033)
	(= (slew_time Planet6 GroundStation2) 61.59)
	(= (slew_time GroundStation2 Planet6) 61.59)
	(= (slew_time Planet6 Star3) 28.8)
	(= (slew_time Star3 Planet6) 28.8)
	(= (slew_time Planet6 Phenomenon4) 25.29)
	(= (slew_time Phenomenon4 Planet6) 25.29)
	(= (slew_time Planet6 Phenomenon5) 62.36)
	(= (slew_time Phenomenon5 Planet6) 62.36)
	(= (slew_time Planet7 GroundStation0) 19.34)
	(= (slew_time GroundStation0 Planet7) 19.34)
	(= (slew_time Planet7 Star1) 40.54)
	(= (slew_time Star1 Planet7) 40.54)
	(= (slew_time Planet7 GroundStation2) 23.08)
	(= (slew_time GroundStation2 Planet7) 23.08)
	(= (slew_time Planet7 Star3) 68.97)
	(= (slew_time Star3 Planet7) 68.97)
	(= (slew_time Planet7 Phenomenon4) 53.64)
	(= (slew_time Phenomenon4 Planet7) 53.64)
	(= (slew_time Planet7 Phenomenon5) 13.97)
	(= (slew_time Phenomenon5 Planet7) 13.97)
	(= (slew_time Planet7 Planet6) 60.54)
	(= (slew_time Planet6 Planet7) 60.54)
	(= (slew_time Phenomenon8 GroundStation0) 15.85)
	(= (slew_time GroundStation0 Phenomenon8) 15.85)
	(= (slew_time Phenomenon8 Star1) 61.78)
	(= (slew_time Star1 Phenomenon8) 61.78)
	(= (slew_time Phenomenon8 GroundStation2) 53.16)
	(= (slew_time GroundStation2 Phenomenon8) 53.16)
	(= (slew_time Phenomenon8 Star3) 66.04)
	(= (slew_time Star3 Phenomenon8) 66.04)
	(= (slew_time Phenomenon8 Phenomenon4) 0.2765)
	(= (slew_time Phenomenon4 Phenomenon8) 0.2765)
	(= (slew_time Phenomenon8 Phenomenon5) 0.003284)
	(= (slew_time Phenomenon5 Phenomenon8) 0.003284)
	(= (slew_time Phenomenon8 Planet6) 10.26)
	(= (slew_time Planet6 Phenomenon8) 10.26)
	(= (slew_time Phenomenon8 Planet7) 14.59)
	(= (slew_time Planet7 Phenomenon8) 14.59)
	(= (slew_time Planet9 GroundStation0) 62.13)
	(= (slew_time GroundStation0 Planet9) 62.13)
	(= (slew_time Planet9 Star1) 15.76)
	(= (slew_time Star1 Planet9) 15.76)
	(= (slew_time Planet9 GroundStation2) 10.5)
	(= (slew_time GroundStation2 Planet9) 10.5)
	(= (slew_time Planet9 Star3) 55.53)
	(= (slew_time Star3 Planet9) 55.53)
	(= (slew_time Planet9 Phenomenon4) 11.56)
	(= (slew_time Phenomenon4 Planet9) 11.56)
	(= (slew_time Planet9 Phenomenon5) 5.337)
	(= (slew_time Phenomenon5 Planet9) 5.337)
	(= (slew_time Planet9 Planet6) 47.62)
	(= (slew_time Planet6 Planet9) 47.62)
	(= (slew_time Planet9 Planet7) 36.6)
	(= (slew_time Planet7 Planet9) 36.6)
	(= (slew_time Planet9 Phenomenon8) 60.44)
	(= (slew_time Phenomenon8 Planet9) 60.44)
	(= (slew_time Star10 GroundStation0) 8.935)
	(= (slew_time GroundStation0 Star10) 8.935)
	(= (slew_time Star10 Star1) 27.86)
	(= (slew_time Star1 Star10) 27.86)
	(= (slew_time Star10 GroundStation2) 18.08)
	(= (slew_time GroundStation2 Star10) 18.08)
	(= (slew_time Star10 Star3) 33.59)
	(= (slew_time Star3 Star10) 33.59)
	(= (slew_time Star10 Phenomenon4) 5.085)
	(= (slew_time Phenomenon4 Star10) 5.085)
	(= (slew_time Star10 Phenomenon5) 7.743)
	(= (slew_time Phenomenon5 Star10) 7.743)
	(= (slew_time Star10 Planet6) 5.427)
	(= (slew_time Planet6 Star10) 5.427)
	(= (slew_time Star10 Planet7) 2.181)
	(= (slew_time Planet7 Star10) 2.181)
	(= (slew_time Star10 Phenomenon8) 19.81)
	(= (slew_time Phenomenon8 Star10) 19.81)
	(= (slew_time Star10 Planet9) 57.02)
	(= (slew_time Planet9 Star10) 57.02)
	(= (data-stored) 0)
	(= (fuel-used) 0)
)
(:goal (and
	(have_image Phenomenon4 infrared0)
	(have_image Phenomenon5 infrared0)
	(have_image Planet6 image1)
	(have_image Planet7 image1)
	(have_image Planet9 image1)
	(have_image Star10 infrared0)
))
(:metric minimize (fuel-used))

)
