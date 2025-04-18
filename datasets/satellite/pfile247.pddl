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
	instrument5 - instrument
	satellite3 - satellite
	instrument6 - instrument
	infrared0 - mode
	infrared2 - mode
	spectrograph3 - mode
	thermograph1 - mode
	GroundStation0 - direction
	Star2 - direction
	Star1 - direction
	Phenomenon3 - direction
	Star4 - direction
	Planet5 - direction
	Phenomenon6 - direction
	Planet7 - direction
	Planet8 - direction
)
(:init
	(supports instrument0 infrared2)
	(calibration_target instrument0 Star1)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Star4)
	(= (data_capacity satellite0) 1000)
	(= (fuel satellite0) 120)
	(supports instrument1 infrared2)
	(supports instrument1 spectrograph3)
	(supports instrument1 infrared0)
	(calibration_target instrument1 GroundStation0)
	(supports instrument2 infrared2)
	(supports instrument2 spectrograph3)
	(calibration_target instrument2 GroundStation0)
	(supports instrument3 infrared2)
	(supports instrument3 infrared0)
	(supports instrument3 spectrograph3)
	(calibration_target instrument3 GroundStation0)
	(on_board instrument1 satellite1)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 GroundStation0)
	(= (data_capacity satellite1) 1000)
	(= (fuel satellite1) 108)
	(supports instrument4 infrared2)
	(supports instrument4 infrared0)
	(supports instrument4 spectrograph3)
	(calibration_target instrument4 GroundStation0)
	(supports instrument5 spectrograph3)
	(calibration_target instrument5 Star2)
	(on_board instrument4 satellite2)
	(on_board instrument5 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Phenomenon3)
	(= (data_capacity satellite2) 1000)
	(= (fuel satellite2) 153)
	(supports instrument6 thermograph1)
	(calibration_target instrument6 Star1)
	(on_board instrument6 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Star4)
	(= (data_capacity satellite3) 1000)
	(= (fuel satellite3) 163)
	(= (data Phenomenon3 infrared0) 106)
	(= (data Star4 infrared0) 15)
	(= (data Planet5 infrared0) 299)
	(= (data Phenomenon6 infrared0) 272)
	(= (data Planet7 infrared0) 77)
	(= (data Planet8 infrared0) 272)
	(= (data Phenomenon3 infrared2) 284)
	(= (data Star4 infrared2) 155)
	(= (data Planet5 infrared2) 94)
	(= (data Phenomenon6 infrared2) 40)
	(= (data Planet7 infrared2) 296)
	(= (data Planet8 infrared2) 18)
	(= (data Phenomenon3 spectrograph3) 292)
	(= (data Star4 spectrograph3) 273)
	(= (data Planet5 spectrograph3) 136)
	(= (data Phenomenon6 spectrograph3) 51)
	(= (data Planet7 spectrograph3) 98)
	(= (data Planet8 spectrograph3) 240)
	(= (data Phenomenon3 thermograph1) 138)
	(= (data Star4 thermograph1) 169)
	(= (data Planet5 thermograph1) 184)
	(= (data Phenomenon6 thermograph1) 49)
	(= (data Planet7 thermograph1) 152)
	(= (data Planet8 thermograph1) 279)
	(= (slew_time Star2 GroundStation0) 30)
	(= (slew_time GroundStation0 Star2) 30)
	(= (slew_time Star2 Star1) 65.7)
	(= (slew_time Star1 Star2) 65.7)
	(= (slew_time Star1 GroundStation0) 36.44)
	(= (slew_time GroundStation0 Star1) 36.44)
	(= (slew_time Phenomenon3 GroundStation0) 44.59)
	(= (slew_time GroundStation0 Phenomenon3) 44.59)
	(= (slew_time Phenomenon3 Star1) 32.42)
	(= (slew_time Star1 Phenomenon3) 32.42)
	(= (slew_time Phenomenon3 Star2) 20.46)
	(= (slew_time Star2 Phenomenon3) 20.46)
	(= (slew_time Star4 GroundStation0) 52.22)
	(= (slew_time GroundStation0 Star4) 52.22)
	(= (slew_time Star4 Star1) 25.52)
	(= (slew_time Star1 Star4) 25.52)
	(= (slew_time Star4 Star2) 38.61)
	(= (slew_time Star2 Star4) 38.61)
	(= (slew_time Star4 Phenomenon3) 55.16)
	(= (slew_time Phenomenon3 Star4) 55.16)
	(= (slew_time Planet5 GroundStation0) 43.93)
	(= (slew_time GroundStation0 Planet5) 43.93)
	(= (slew_time Planet5 Star1) 0.9441)
	(= (slew_time Star1 Planet5) 0.9441)
	(= (slew_time Planet5 Star2) 42.92)
	(= (slew_time Star2 Planet5) 42.92)
	(= (slew_time Planet5 Phenomenon3) 12.77)
	(= (slew_time Phenomenon3 Planet5) 12.77)
	(= (slew_time Planet5 Star4) 64.78)
	(= (slew_time Star4 Planet5) 64.78)
	(= (slew_time Phenomenon6 GroundStation0) 27.23)
	(= (slew_time GroundStation0 Phenomenon6) 27.23)
	(= (slew_time Phenomenon6 Star1) 52.25)
	(= (slew_time Star1 Phenomenon6) 52.25)
	(= (slew_time Phenomenon6 Star2) 40.06)
	(= (slew_time Star2 Phenomenon6) 40.06)
	(= (slew_time Phenomenon6 Phenomenon3) 1.121)
	(= (slew_time Phenomenon3 Phenomenon6) 1.121)
	(= (slew_time Phenomenon6 Star4) 20.1)
	(= (slew_time Star4 Phenomenon6) 20.1)
	(= (slew_time Phenomenon6 Planet5) 81.18)
	(= (slew_time Planet5 Phenomenon6) 81.18)
	(= (slew_time Planet7 GroundStation0) 25)
	(= (slew_time GroundStation0 Planet7) 25)
	(= (slew_time Planet7 Star1) 7.374)
	(= (slew_time Star1 Planet7) 7.374)
	(= (slew_time Planet7 Star2) 15.38)
	(= (slew_time Star2 Planet7) 15.38)
	(= (slew_time Planet7 Phenomenon3) 10.11)
	(= (slew_time Phenomenon3 Planet7) 10.11)
	(= (slew_time Planet7 Star4) 5.246)
	(= (slew_time Star4 Planet7) 5.246)
	(= (slew_time Planet7 Planet5) 33.74)
	(= (slew_time Planet5 Planet7) 33.74)
	(= (slew_time Planet7 Phenomenon6) 20.84)
	(= (slew_time Phenomenon6 Planet7) 20.84)
	(= (slew_time Planet8 GroundStation0) 7.48)
	(= (slew_time GroundStation0 Planet8) 7.48)
	(= (slew_time Planet8 Star1) 43.48)
	(= (slew_time Star1 Planet8) 43.48)
	(= (slew_time Planet8 Star2) 85.15)
	(= (slew_time Star2 Planet8) 85.15)
	(= (slew_time Planet8 Phenomenon3) 41.05)
	(= (slew_time Phenomenon3 Planet8) 41.05)
	(= (slew_time Planet8 Star4) 7.738)
	(= (slew_time Star4 Planet8) 7.738)
	(= (slew_time Planet8 Planet5) 27.62)
	(= (slew_time Planet5 Planet8) 27.62)
	(= (slew_time Planet8 Phenomenon6) 40.18)
	(= (slew_time Phenomenon6 Planet8) 40.18)
	(= (slew_time Planet8 Planet7) 40.07)
	(= (slew_time Planet7 Planet8) 40.07)
	(= (data-stored) 0)
	(= (fuel-used) 0)
)
(:goal (and
	(pointing satellite2 Star1)
	(have_image Phenomenon3 thermograph1)
	(have_image Star4 infrared2)
	(have_image Planet5 thermograph1)
	(have_image Phenomenon6 infrared2)
	(have_image Planet7 spectrograph3)
	(have_image Planet8 spectrograph3)
))
(:metric minimize (fuel-used))

)
