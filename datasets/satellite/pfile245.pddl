(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	satellite1 - satellite
	instrument1 - instrument
	instrument2 - instrument
	thermograph1 - mode
	image2 - mode
	spectrograph0 - mode
	GroundStation0 - direction
	GroundStation1 - direction
	GroundStation2 - direction
	Star3 - direction
	Phenomenon4 - direction
	Planet5 - direction
	Phenomenon6 - direction
	Planet7 - direction
	Planet8 - direction
	Planet9 - direction
)
(:init
	(supports instrument0 image2)
	(supports instrument0 spectrograph0)
	(calibration_target instrument0 GroundStation1)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Phenomenon6)
	(= (data_capacity satellite0) 1000)
	(= (fuel satellite0) 129)
	(supports instrument1 spectrograph0)
	(supports instrument1 image2)
	(calibration_target instrument1 GroundStation2)
	(supports instrument2 spectrograph0)
	(supports instrument2 image2)
	(supports instrument2 thermograph1)
	(calibration_target instrument2 Star3)
	(on_board instrument1 satellite1)
	(on_board instrument2 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Planet8)
	(= (data_capacity satellite1) 1000)
	(= (fuel satellite1) 105)
	(= (data Phenomenon4 thermograph1) 197)
	(= (data Planet5 thermograph1) 210)
	(= (data Phenomenon6 thermograph1) 250)
	(= (data Planet7 thermograph1) 274)
	(= (data Planet8 thermograph1) 55)
	(= (data Planet9 thermograph1) 262)
	(= (data Phenomenon4 image2) 154)
	(= (data Planet5 image2) 107)
	(= (data Phenomenon6 image2) 241)
	(= (data Planet7 image2) 71)
	(= (data Planet8 image2) 126)
	(= (data Planet9 image2) 54)
	(= (data Phenomenon4 spectrograph0) 255)
	(= (data Planet5 spectrograph0) 148)
	(= (data Phenomenon6 spectrograph0) 151)
	(= (data Planet7 spectrograph0) 224)
	(= (data Planet8 spectrograph0) 240)
	(= (data Planet9 spectrograph0) 21)
	(= (slew_time GroundStation1 GroundStation0) 24.37)
	(= (slew_time GroundStation0 GroundStation1) 24.37)
	(= (slew_time GroundStation2 GroundStation0) 7.34)
	(= (slew_time GroundStation0 GroundStation2) 7.34)
	(= (slew_time GroundStation2 GroundStation1) 41.49)
	(= (slew_time GroundStation1 GroundStation2) 41.49)
	(= (slew_time Star3 GroundStation0) 33.3)
	(= (slew_time GroundStation0 Star3) 33.3)
	(= (slew_time Star3 GroundStation1) 18.56)
	(= (slew_time GroundStation1 Star3) 18.56)
	(= (slew_time Star3 GroundStation2) 11.5)
	(= (slew_time GroundStation2 Star3) 11.5)
	(= (slew_time Phenomenon4 GroundStation0) 32.61)
	(= (slew_time GroundStation0 Phenomenon4) 32.61)
	(= (slew_time Phenomenon4 GroundStation1) 16.32)
	(= (slew_time GroundStation1 Phenomenon4) 16.32)
	(= (slew_time Phenomenon4 GroundStation2) 19.56)
	(= (slew_time GroundStation2 Phenomenon4) 19.56)
	(= (slew_time Phenomenon4 Star3) 94.04)
	(= (slew_time Star3 Phenomenon4) 94.04)
	(= (slew_time Planet5 GroundStation0) 47.44)
	(= (slew_time GroundStation0 Planet5) 47.44)
	(= (slew_time Planet5 GroundStation1) 31.93)
	(= (slew_time GroundStation1 Planet5) 31.93)
	(= (slew_time Planet5 GroundStation2) 45.99)
	(= (slew_time GroundStation2 Planet5) 45.99)
	(= (slew_time Planet5 Star3) 31.8)
	(= (slew_time Star3 Planet5) 31.8)
	(= (slew_time Planet5 Phenomenon4) 6.235)
	(= (slew_time Phenomenon4 Planet5) 6.235)
	(= (slew_time Phenomenon6 GroundStation0) 28.8)
	(= (slew_time GroundStation0 Phenomenon6) 28.8)
	(= (slew_time Phenomenon6 GroundStation1) 7.841)
	(= (slew_time GroundStation1 Phenomenon6) 7.841)
	(= (slew_time Phenomenon6 GroundStation2) 77.43)
	(= (slew_time GroundStation2 Phenomenon6) 77.43)
	(= (slew_time Phenomenon6 Star3) 32.07)
	(= (slew_time Star3 Phenomenon6) 32.07)
	(= (slew_time Phenomenon6 Phenomenon4) 42.55)
	(= (slew_time Phenomenon4 Phenomenon6) 42.55)
	(= (slew_time Phenomenon6 Planet5) 28.41)
	(= (slew_time Planet5 Phenomenon6) 28.41)
	(= (slew_time Planet7 GroundStation0) 4.433)
	(= (slew_time GroundStation0 Planet7) 4.433)
	(= (slew_time Planet7 GroundStation1) 0.5155)
	(= (slew_time GroundStation1 Planet7) 0.5155)
	(= (slew_time Planet7 GroundStation2) 0.2861)
	(= (slew_time GroundStation2 Planet7) 0.2861)
	(= (slew_time Planet7 Star3) 1.661)
	(= (slew_time Star3 Planet7) 1.661)
	(= (slew_time Planet7 Phenomenon4) 52.36)
	(= (slew_time Phenomenon4 Planet7) 52.36)
	(= (slew_time Planet7 Planet5) 60.8)
	(= (slew_time Planet5 Planet7) 60.8)
	(= (slew_time Planet7 Phenomenon6) 6.383)
	(= (slew_time Phenomenon6 Planet7) 6.383)
	(= (slew_time Planet8 GroundStation0) 12.81)
	(= (slew_time GroundStation0 Planet8) 12.81)
	(= (slew_time Planet8 GroundStation1) 49.08)
	(= (slew_time GroundStation1 Planet8) 49.08)
	(= (slew_time Planet8 GroundStation2) 31.01)
	(= (slew_time GroundStation2 Planet8) 31.01)
	(= (slew_time Planet8 Star3) 61.47)
	(= (slew_time Star3 Planet8) 61.47)
	(= (slew_time Planet8 Phenomenon4) 83.25)
	(= (slew_time Phenomenon4 Planet8) 83.25)
	(= (slew_time Planet8 Planet5) 2.349)
	(= (slew_time Planet5 Planet8) 2.349)
	(= (slew_time Planet8 Phenomenon6) 33.81)
	(= (slew_time Phenomenon6 Planet8) 33.81)
	(= (slew_time Planet8 Planet7) 17.58)
	(= (slew_time Planet7 Planet8) 17.58)
	(= (slew_time Planet9 GroundStation0) 48.48)
	(= (slew_time GroundStation0 Planet9) 48.48)
	(= (slew_time Planet9 GroundStation1) 10.94)
	(= (slew_time GroundStation1 Planet9) 10.94)
	(= (slew_time Planet9 GroundStation2) 4.27)
	(= (slew_time GroundStation2 Planet9) 4.27)
	(= (slew_time Planet9 Star3) 86.36)
	(= (slew_time Star3 Planet9) 86.36)
	(= (slew_time Planet9 Phenomenon4) 7.313)
	(= (slew_time Phenomenon4 Planet9) 7.313)
	(= (slew_time Planet9 Planet5) 20.61)
	(= (slew_time Planet5 Planet9) 20.61)
	(= (slew_time Planet9 Phenomenon6) 13.41)
	(= (slew_time Phenomenon6 Planet9) 13.41)
	(= (slew_time Planet9 Planet7) 2.196)
	(= (slew_time Planet7 Planet9) 2.196)
	(= (slew_time Planet9 Planet8) 15.69)
	(= (slew_time Planet8 Planet9) 15.69)
	(= (data-stored) 0)
	(= (fuel-used) 0)
)
(:goal (and
	(pointing satellite1 GroundStation1)
	(have_image Phenomenon4 spectrograph0)
	(have_image Planet5 thermograph1)
	(have_image Planet7 image2)
	(have_image Planet8 image2)
	(have_image Planet9 thermograph1)
))
(:metric minimize (fuel-used))

)
