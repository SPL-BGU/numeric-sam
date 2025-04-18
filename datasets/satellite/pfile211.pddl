(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	instrument2 - instrument
	satellite1 - satellite
	instrument3 - instrument
	satellite2 - satellite
	instrument4 - instrument
	instrument5 - instrument
	instrument6 - instrument
	thermograph2 - mode
	infrared0 - mode
	image1 - mode
	GroundStation0 - direction
	Star1 - direction
	GroundStation2 - direction
	Star3 - direction
	Planet4 - direction
	Star5 - direction
	Planet6 - direction
	Star7 - direction
	Phenomenon8 - direction
	Star9 - direction
)
(:init
	(supports instrument0 infrared0)
	(supports instrument0 image1)
	(calibration_target instrument0 Star1)
	(supports instrument1 thermograph2)
	(calibration_target instrument1 Star3)
	(supports instrument2 infrared0)
	(supports instrument2 thermograph2)
	(calibration_target instrument2 Star3)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Star3)
	(= (data_capacity satellite0) 1000)
	(= (fuel satellite0) 194)
	(supports instrument3 infrared0)
	(calibration_target instrument3 Star3)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Planet6)
	(= (data_capacity satellite1) 1000)
	(= (fuel satellite1) 108)
	(supports instrument4 infrared0)
	(supports instrument4 image1)
	(calibration_target instrument4 GroundStation2)
	(supports instrument5 infrared0)
	(supports instrument5 thermograph2)
	(calibration_target instrument5 GroundStation2)
	(supports instrument6 image1)
	(calibration_target instrument6 Star3)
	(on_board instrument4 satellite2)
	(on_board instrument5 satellite2)
	(on_board instrument6 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Star7)
	(= (data_capacity satellite2) 1000)
	(= (fuel satellite2) 158)
	(= (data Planet4 thermograph2) 190)
	(= (data Star5 thermograph2) 132)
	(= (data Planet6 thermograph2) 274)
	(= (data Star7 thermograph2) 241)
	(= (data Phenomenon8 thermograph2) 173)
	(= (data Star9 thermograph2) 222)
	(= (data Planet4 infrared0) 35)
	(= (data Star5 infrared0) 49)
	(= (data Planet6 infrared0) 32)
	(= (data Star7 infrared0) 276)
	(= (data Phenomenon8 infrared0) 209)
	(= (data Star9 infrared0) 203)
	(= (data Planet4 image1) 259)
	(= (data Star5 image1) 14)
	(= (data Planet6 image1) 219)
	(= (data Star7 image1) 94)
	(= (data Phenomenon8 image1) 253)
	(= (data Star9 image1) 21)
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
	(= (slew_time Planet4 GroundStation0) 38.97)
	(= (slew_time GroundStation0 Planet4) 38.97)
	(= (slew_time Planet4 Star1) 31.79)
	(= (slew_time Star1 Planet4) 31.79)
	(= (slew_time Planet4 GroundStation2) 60.44)
	(= (slew_time GroundStation2 Planet4) 60.44)
	(= (slew_time Planet4 Star3) 25.72)
	(= (slew_time Star3 Planet4) 25.72)
	(= (slew_time Star5 GroundStation0) 1.942)
	(= (slew_time GroundStation0 Star5) 1.942)
	(= (slew_time Star5 Star1) 10.03)
	(= (slew_time Star1 Star5) 10.03)
	(= (slew_time Star5 GroundStation2) 34.06)
	(= (slew_time GroundStation2 Star5) 34.06)
	(= (slew_time Star5 Star3) 35.55)
	(= (slew_time Star3 Star5) 35.55)
	(= (slew_time Star5 Planet4) 32.23)
	(= (slew_time Planet4 Star5) 32.23)
	(= (slew_time Planet6 GroundStation0) 23.52)
	(= (slew_time GroundStation0 Planet6) 23.52)
	(= (slew_time Planet6 Star1) 29.99)
	(= (slew_time Star1 Planet6) 29.99)
	(= (slew_time Planet6 GroundStation2) 29.32)
	(= (slew_time GroundStation2 Planet6) 29.32)
	(= (slew_time Planet6 Star3) 24.47)
	(= (slew_time Star3 Planet6) 24.47)
	(= (slew_time Planet6 Planet4) 2.033)
	(= (slew_time Planet4 Planet6) 2.033)
	(= (slew_time Planet6 Star5) 61.59)
	(= (slew_time Star5 Planet6) 61.59)
	(= (slew_time Star7 GroundStation0) 1.593)
	(= (slew_time GroundStation0 Star7) 1.593)
	(= (slew_time Star7 Star1) 19.77)
	(= (slew_time Star1 Star7) 19.77)
	(= (slew_time Star7 GroundStation2) 44.34)
	(= (slew_time GroundStation2 Star7) 44.34)
	(= (slew_time Star7 Star3) 19.34)
	(= (slew_time Star3 Star7) 19.34)
	(= (slew_time Star7 Planet4) 40.54)
	(= (slew_time Planet4 Star7) 40.54)
	(= (slew_time Star7 Star5) 23.08)
	(= (slew_time Star5 Star7) 23.08)
	(= (slew_time Star7 Planet6) 68.97)
	(= (slew_time Planet6 Star7) 68.97)
	(= (slew_time Phenomenon8 GroundStation0) 8.743)
	(= (slew_time GroundStation0 Phenomenon8) 8.743)
	(= (slew_time Phenomenon8 Star1) 31.33)
	(= (slew_time Star1 Phenomenon8) 31.33)
	(= (slew_time Phenomenon8 GroundStation2) 17.11)
	(= (slew_time GroundStation2 Phenomenon8) 17.11)
	(= (slew_time Phenomenon8 Star3) 15.85)
	(= (slew_time Star3 Phenomenon8) 15.85)
	(= (slew_time Phenomenon8 Planet4) 61.78)
	(= (slew_time Planet4 Phenomenon8) 61.78)
	(= (slew_time Phenomenon8 Star5) 53.16)
	(= (slew_time Star5 Phenomenon8) 53.16)
	(= (slew_time Phenomenon8 Planet6) 66.04)
	(= (slew_time Planet6 Phenomenon8) 66.04)
	(= (slew_time Phenomenon8 Star7) 0.2765)
	(= (slew_time Star7 Phenomenon8) 0.2765)
	(= (slew_time Star9 GroundStation0) 0.7532)
	(= (slew_time GroundStation0 Star9) 0.7532)
	(= (slew_time Star9 Star1) 53.52)
	(= (slew_time Star1 Star9) 53.52)
	(= (slew_time Star9 GroundStation2) 75.07)
	(= (slew_time GroundStation2 Star9) 75.07)
	(= (slew_time Star9 Star3) 62.13)
	(= (slew_time Star3 Star9) 62.13)
	(= (slew_time Star9 Planet4) 15.76)
	(= (slew_time Planet4 Star9) 15.76)
	(= (slew_time Star9 Star5) 10.5)
	(= (slew_time Star5 Star9) 10.5)
	(= (slew_time Star9 Planet6) 55.53)
	(= (slew_time Planet6 Star9) 55.53)
	(= (slew_time Star9 Star7) 11.56)
	(= (slew_time Star7 Star9) 11.56)
	(= (slew_time Star9 Phenomenon8) 5.337)
	(= (slew_time Phenomenon8 Star9) 5.337)
	(= (data-stored) 0)
	(= (fuel-used) 0)
)
(:goal (and
	(pointing satellite1 GroundStation2)
	(have_image Planet4 thermograph2)
	(have_image Star5 image1)
	(have_image Star7 thermograph2)
	(have_image Phenomenon8 image1)
	(have_image Star9 thermograph2)
))
(:metric minimize (fuel-used))

)
