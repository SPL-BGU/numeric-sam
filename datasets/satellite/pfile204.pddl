(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	satellite1 - satellite
	instrument1 - instrument
	instrument2 - instrument
	satellite2 - satellite
	instrument3 - instrument
	thermograph0 - mode
	infrared3 - mode
	spectrograph2 - mode
	spectrograph1 - mode
	Star2 - direction
	GroundStation1 - direction
	GroundStation0 - direction
	Star3 - direction
	Phenomenon4 - direction
	Planet5 - direction
	Planet6 - direction
	Phenomenon7 - direction
	Planet8 - direction
)
(:init
	(supports instrument0 spectrograph1)
	(supports instrument0 infrared3)
	(calibration_target instrument0 GroundStation0)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Phenomenon4)
	(= (data_capacity satellite0) 1000)
	(= (fuel satellite0) 107)
	(supports instrument1 infrared3)
	(supports instrument1 thermograph0)
	(supports instrument1 spectrograph1)
	(calibration_target instrument1 GroundStation1)
	(supports instrument2 infrared3)
	(supports instrument2 spectrograph2)
	(calibration_target instrument2 GroundStation0)
	(on_board instrument1 satellite1)
	(on_board instrument2 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Phenomenon7)
	(= (data_capacity satellite1) 1000)
	(= (fuel satellite1) 128)
	(supports instrument3 spectrograph1)
	(supports instrument3 spectrograph2)
	(calibration_target instrument3 GroundStation0)
	(on_board instrument3 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Planet5)
	(= (data_capacity satellite2) 1000)
	(= (fuel satellite2) 142)
	(= (data Star3 thermograph0) 26)
	(= (data Phenomenon4 thermograph0) 60)
	(= (data Planet5 thermograph0) 125)
	(= (data Planet6 thermograph0) 270)
	(= (data Phenomenon7 thermograph0) 25)
	(= (data Planet8 thermograph0) 128)
	(= (data Star3 infrared3) 113)
	(= (data Phenomenon4 infrared3) 118)
	(= (data Planet5 infrared3) 212)
	(= (data Planet6 infrared3) 166)
	(= (data Phenomenon7 infrared3) 82)
	(= (data Planet8 infrared3) 235)
	(= (data Star3 spectrograph2) 76)
	(= (data Phenomenon4 spectrograph2) 251)
	(= (data Planet5 spectrograph2) 205)
	(= (data Planet6 spectrograph2) 294)
	(= (data Phenomenon7 spectrograph2) 243)
	(= (data Planet8 spectrograph2) 176)
	(= (data Star3 spectrograph1) 8)
	(= (data Phenomenon4 spectrograph1) 56)
	(= (data Planet5 spectrograph1) 161)
	(= (data Planet6 spectrograph1) 158)
	(= (data Phenomenon7 spectrograph1) 17)
	(= (data Planet8 spectrograph1) 185)
	(= (slew_time Star2 GroundStation0) 8.57)
	(= (slew_time GroundStation0 Star2) 8.57)
	(= (slew_time Star2 GroundStation1) 31.52)
	(= (slew_time GroundStation1 Star2) 31.52)
	(= (slew_time GroundStation1 GroundStation0) 50.78)
	(= (slew_time GroundStation0 GroundStation1) 50.78)
	(= (slew_time Star3 GroundStation0) 6.568)
	(= (slew_time GroundStation0 Star3) 6.568)
	(= (slew_time Star3 GroundStation1) 15)
	(= (slew_time GroundStation1 Star3) 15)
	(= (slew_time Star3 Star2) 4.662)
	(= (slew_time Star2 Star3) 4.662)
	(= (slew_time Phenomenon4 GroundStation0) 12.54)
	(= (slew_time GroundStation0 Phenomenon4) 12.54)
	(= (slew_time Phenomenon4 GroundStation1) 23.17)
	(= (slew_time GroundStation1 Phenomenon4) 23.17)
	(= (slew_time Phenomenon4 Star2) 21.25)
	(= (slew_time Star2 Phenomenon4) 21.25)
	(= (slew_time Phenomenon4 Star3) 57.85)
	(= (slew_time Star3 Phenomenon4) 57.85)
	(= (slew_time Planet5 GroundStation0) 22.35)
	(= (slew_time GroundStation0 Planet5) 22.35)
	(= (slew_time Planet5 GroundStation1) 18.88)
	(= (slew_time GroundStation1 Planet5) 18.88)
	(= (slew_time Planet5 Star2) 32.98)
	(= (slew_time Star2 Planet5) 32.98)
	(= (slew_time Planet5 Star3) 8.117)
	(= (slew_time Star3 Planet5) 8.117)
	(= (slew_time Planet5 Phenomenon4) 1.392)
	(= (slew_time Phenomenon4 Planet5) 1.392)
	(= (slew_time Planet6 GroundStation0) 23.18)
	(= (slew_time GroundStation0 Planet6) 23.18)
	(= (slew_time Planet6 GroundStation1) 21.32)
	(= (slew_time GroundStation1 Planet6) 21.32)
	(= (slew_time Planet6 Star2) 6.185)
	(= (slew_time Star2 Planet6) 6.185)
	(= (slew_time Planet6 Star3) 11.9)
	(= (slew_time Star3 Planet6) 11.9)
	(= (slew_time Planet6 Phenomenon4) 5.898)
	(= (slew_time Phenomenon4 Planet6) 5.898)
	(= (slew_time Planet6 Planet5) 2.696)
	(= (slew_time Planet5 Planet6) 2.696)
	(= (slew_time Phenomenon7 GroundStation0) 67.49)
	(= (slew_time GroundStation0 Phenomenon7) 67.49)
	(= (slew_time Phenomenon7 GroundStation1) 50.09)
	(= (slew_time GroundStation1 Phenomenon7) 50.09)
	(= (slew_time Phenomenon7 Star2) 51.41)
	(= (slew_time Star2 Phenomenon7) 51.41)
	(= (slew_time Phenomenon7 Star3) 59.7)
	(= (slew_time Star3 Phenomenon7) 59.7)
	(= (slew_time Phenomenon7 Phenomenon4) 32.54)
	(= (slew_time Phenomenon4 Phenomenon7) 32.54)
	(= (slew_time Phenomenon7 Planet5) 4.317)
	(= (slew_time Planet5 Phenomenon7) 4.317)
	(= (slew_time Phenomenon7 Planet6) 34.02)
	(= (slew_time Planet6 Phenomenon7) 34.02)
	(= (slew_time Planet8 GroundStation0) 25.15)
	(= (slew_time GroundStation0 Planet8) 25.15)
	(= (slew_time Planet8 GroundStation1) 74.74)
	(= (slew_time GroundStation1 Planet8) 74.74)
	(= (slew_time Planet8 Star2) 27.17)
	(= (slew_time Star2 Planet8) 27.17)
	(= (slew_time Planet8 Star3) 17.04)
	(= (slew_time Star3 Planet8) 17.04)
	(= (slew_time Planet8 Phenomenon4) 41.83)
	(= (slew_time Phenomenon4 Planet8) 41.83)
	(= (slew_time Planet8 Planet5) 40.62)
	(= (slew_time Planet5 Planet8) 40.62)
	(= (slew_time Planet8 Planet6) 48.25)
	(= (slew_time Planet6 Planet8) 48.25)
	(= (slew_time Planet8 Phenomenon7) 60.77)
	(= (slew_time Phenomenon7 Planet8) 60.77)
	(= (data-stored) 0)
	(= (fuel-used) 0)
)
(:goal (and
	(pointing satellite0 Star2)
	(pointing satellite1 Planet6)
	(pointing satellite2 Planet6)
	(have_image Star3 thermograph0)
	(have_image Phenomenon4 spectrograph2)
	(have_image Planet5 spectrograph2)
	(have_image Planet6 spectrograph1)
	(have_image Phenomenon7 thermograph0)
	(have_image Planet8 thermograph0)
))
(:metric minimize (fuel-used))

)
