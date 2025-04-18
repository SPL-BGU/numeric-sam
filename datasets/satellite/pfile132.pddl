(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	satellite1 - satellite
	instrument2 - instrument
	satellite2 - satellite
	instrument3 - instrument
	satellite3 - satellite
	instrument4 - instrument
	instrument5 - instrument
	satellite4 - satellite
	instrument6 - instrument
	infrared0 - mode
	thermograph1 - mode
	spectrograph3 - mode
	thermograph4 - mode
	spectrograph2 - mode
	GroundStation0 - direction
	GroundStation2 - direction
	GroundStation1 - direction
	Phenomenon3 - direction
	Star4 - direction
	Star5 - direction
	Star6 - direction
	Phenomenon7 - direction
	Planet8 - direction
	Star9 - direction
	Planet10 - direction
	Planet11 - direction
	Phenomenon12 - direction
)
(:init
	(supports instrument0 infrared0)
	(calibration_target instrument0 GroundStation2)
	(supports instrument1 spectrograph2)
	(calibration_target instrument1 GroundStation0)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Phenomenon7)
	(= (data_capacity satellite0) 1000)
	(= (fuel satellite0) 192)
	(supports instrument2 thermograph4)
	(supports instrument2 spectrograph2)
	(supports instrument2 spectrograph3)
	(calibration_target instrument2 GroundStation2)
	(on_board instrument2 satellite1)
	(power_avail satellite1)
	(pointing satellite1 GroundStation0)
	(= (data_capacity satellite1) 1000)
	(= (fuel satellite1) 193)
	(supports instrument3 spectrograph2)
	(calibration_target instrument3 GroundStation1)
	(on_board instrument3 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Phenomenon3)
	(= (data_capacity satellite2) 1000)
	(= (fuel satellite2) 186)
	(supports instrument4 thermograph1)
	(supports instrument4 spectrograph3)
	(calibration_target instrument4 GroundStation2)
	(supports instrument5 thermograph4)
	(supports instrument5 spectrograph3)
	(supports instrument5 spectrograph2)
	(calibration_target instrument5 GroundStation1)
	(on_board instrument4 satellite3)
	(on_board instrument5 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Planet10)
	(= (data_capacity satellite3) 1000)
	(= (fuel satellite3) 172)
	(supports instrument6 spectrograph2)
	(calibration_target instrument6 GroundStation1)
	(on_board instrument6 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Planet8)
	(= (data_capacity satellite4) 1000)
	(= (fuel satellite4) 107)
	(= (data Phenomenon3 infrared0) 91)
	(= (data Star4 infrared0) 219)
	(= (data Star5 infrared0) 52)
	(= (data Star6 infrared0) 299)
	(= (data Phenomenon7 infrared0) 67)
	(= (data Planet8 infrared0) 59)
	(= (data Star9 infrared0) 147)
	(= (data Planet10 infrared0) 242)
	(= (data Planet11 infrared0) 170)
	(= (data Phenomenon12 infrared0) 149)
	(= (data Phenomenon3 thermograph1) 87)
	(= (data Star4 thermograph1) 137)
	(= (data Star5 thermograph1) 70)
	(= (data Star6 thermograph1) 167)
	(= (data Phenomenon7 thermograph1) 18)
	(= (data Planet8 thermograph1) 291)
	(= (data Star9 thermograph1) 155)
	(= (data Planet10 thermograph1) 256)
	(= (data Planet11 thermograph1) 12)
	(= (data Phenomenon12 thermograph1) 207)
	(= (data Phenomenon3 spectrograph3) 80)
	(= (data Star4 spectrograph3) 71)
	(= (data Star5 spectrograph3) 102)
	(= (data Star6 spectrograph3) 278)
	(= (data Phenomenon7 spectrograph3) 38)
	(= (data Planet8 spectrograph3) 201)
	(= (data Star9 spectrograph3) 128)
	(= (data Planet10 spectrograph3) 96)
	(= (data Planet11 spectrograph3) 266)
	(= (data Phenomenon12 spectrograph3) 220)
	(= (data Phenomenon3 thermograph4) 201)
	(= (data Star4 thermograph4) 47)
	(= (data Star5 thermograph4) 194)
	(= (data Star6 thermograph4) 70)
	(= (data Phenomenon7 thermograph4) 52)
	(= (data Planet8 thermograph4) 279)
	(= (data Star9 thermograph4) 214)
	(= (data Planet10 thermograph4) 197)
	(= (data Planet11 thermograph4) 208)
	(= (data Phenomenon12 thermograph4) 181)
	(= (data Phenomenon3 spectrograph2) 59)
	(= (data Star4 spectrograph2) 233)
	(= (data Star5 spectrograph2) 237)
	(= (data Star6 spectrograph2) 51)
	(= (data Phenomenon7 spectrograph2) 73)
	(= (data Planet8 spectrograph2) 158)
	(= (data Star9 spectrograph2) 241)
	(= (data Planet10 spectrograph2) 45)
	(= (data Planet11 spectrograph2) 200)
	(= (data Phenomenon12 spectrograph2) 63)
	(= (slew_time GroundStation2 GroundStation0) 24.25)
	(= (slew_time GroundStation0 GroundStation2) 24.25)
	(= (slew_time GroundStation2 GroundStation1) 18.01)
	(= (slew_time GroundStation1 GroundStation2) 18.01)
	(= (slew_time GroundStation1 GroundStation0) 1.882)
	(= (slew_time GroundStation0 GroundStation1) 1.882)
	(= (slew_time Phenomenon3 GroundStation0) 46.2)
	(= (slew_time GroundStation0 Phenomenon3) 46.2)
	(= (slew_time Phenomenon3 GroundStation1) 47.51)
	(= (slew_time GroundStation1 Phenomenon3) 47.51)
	(= (slew_time Phenomenon3 GroundStation2) 5.604)
	(= (slew_time GroundStation2 Phenomenon3) 5.604)
	(= (slew_time Star4 GroundStation0) 56.14)
	(= (slew_time GroundStation0 Star4) 56.14)
	(= (slew_time Star4 GroundStation1) 73.13)
	(= (slew_time GroundStation1 Star4) 73.13)
	(= (slew_time Star4 GroundStation2) 6.257)
	(= (slew_time GroundStation2 Star4) 6.257)
	(= (slew_time Star4 Phenomenon3) 15.24)
	(= (slew_time Phenomenon3 Star4) 15.24)
	(= (slew_time Star5 GroundStation0) 61.64)
	(= (slew_time GroundStation0 Star5) 61.64)
	(= (slew_time Star5 GroundStation1) 22.5)
	(= (slew_time GroundStation1 Star5) 22.5)
	(= (slew_time Star5 GroundStation2) 29.59)
	(= (slew_time GroundStation2 Star5) 29.59)
	(= (slew_time Star5 Phenomenon3) 12.64)
	(= (slew_time Phenomenon3 Star5) 12.64)
	(= (slew_time Star5 Star4) 56.95)
	(= (slew_time Star4 Star5) 56.95)
	(= (slew_time Star6 GroundStation0) 23.37)
	(= (slew_time GroundStation0 Star6) 23.37)
	(= (slew_time Star6 GroundStation1) 11.16)
	(= (slew_time GroundStation1 Star6) 11.16)
	(= (slew_time Star6 GroundStation2) 18.64)
	(= (slew_time GroundStation2 Star6) 18.64)
	(= (slew_time Star6 Phenomenon3) 11.59)
	(= (slew_time Phenomenon3 Star6) 11.59)
	(= (slew_time Star6 Star4) 64.97)
	(= (slew_time Star4 Star6) 64.97)
	(= (slew_time Star6 Star5) 46.11)
	(= (slew_time Star5 Star6) 46.11)
	(= (slew_time Phenomenon7 GroundStation0) 12.85)
	(= (slew_time GroundStation0 Phenomenon7) 12.85)
	(= (slew_time Phenomenon7 GroundStation1) 54.31)
	(= (slew_time GroundStation1 Phenomenon7) 54.31)
	(= (slew_time Phenomenon7 GroundStation2) 23.65)
	(= (slew_time GroundStation2 Phenomenon7) 23.65)
	(= (slew_time Phenomenon7 Phenomenon3) 5.093)
	(= (slew_time Phenomenon3 Phenomenon7) 5.093)
	(= (slew_time Phenomenon7 Star4) 8.886)
	(= (slew_time Star4 Phenomenon7) 8.886)
	(= (slew_time Phenomenon7 Star5) 1.883)
	(= (slew_time Star5 Phenomenon7) 1.883)
	(= (slew_time Phenomenon7 Star6) 45.87)
	(= (slew_time Star6 Phenomenon7) 45.87)
	(= (slew_time Planet8 GroundStation0) 26.2)
	(= (slew_time GroundStation0 Planet8) 26.2)
	(= (slew_time Planet8 GroundStation1) 22.55)
	(= (slew_time GroundStation1 Planet8) 22.55)
	(= (slew_time Planet8 GroundStation2) 9.474)
	(= (slew_time GroundStation2 Planet8) 9.474)
	(= (slew_time Planet8 Phenomenon3) 60.33)
	(= (slew_time Phenomenon3 Planet8) 60.33)
	(= (slew_time Planet8 Star4) 59.59)
	(= (slew_time Star4 Planet8) 59.59)
	(= (slew_time Planet8 Star5) 31.86)
	(= (slew_time Star5 Planet8) 31.86)
	(= (slew_time Planet8 Star6) 20.36)
	(= (slew_time Star6 Planet8) 20.36)
	(= (slew_time Planet8 Phenomenon7) 25.64)
	(= (slew_time Phenomenon7 Planet8) 25.64)
	(= (slew_time Star9 GroundStation0) 56.33)
	(= (slew_time GroundStation0 Star9) 56.33)
	(= (slew_time Star9 GroundStation1) 41.91)
	(= (slew_time GroundStation1 Star9) 41.91)
	(= (slew_time Star9 GroundStation2) 14.62)
	(= (slew_time GroundStation2 Star9) 14.62)
	(= (slew_time Star9 Phenomenon3) 81.62)
	(= (slew_time Phenomenon3 Star9) 81.62)
	(= (slew_time Star9 Star4) 50.2)
	(= (slew_time Star4 Star9) 50.2)
	(= (slew_time Star9 Star5) 27.73)
	(= (slew_time Star5 Star9) 27.73)
	(= (slew_time Star9 Star6) 8.471)
	(= (slew_time Star6 Star9) 8.471)
	(= (slew_time Star9 Phenomenon7) 43.48)
	(= (slew_time Phenomenon7 Star9) 43.48)
	(= (slew_time Star9 Planet8) 54.23)
	(= (slew_time Planet8 Star9) 54.23)
	(= (slew_time Planet10 GroundStation0) 17.97)
	(= (slew_time GroundStation0 Planet10) 17.97)
	(= (slew_time Planet10 GroundStation1) 32)
	(= (slew_time GroundStation1 Planet10) 32)
	(= (slew_time Planet10 GroundStation2) 0.8193)
	(= (slew_time GroundStation2 Planet10) 0.8193)
	(= (slew_time Planet10 Phenomenon3) 15.8)
	(= (slew_time Phenomenon3 Planet10) 15.8)
	(= (slew_time Planet10 Star4) 56.5)
	(= (slew_time Star4 Planet10) 56.5)
	(= (slew_time Planet10 Star5) 37.85)
	(= (slew_time Star5 Planet10) 37.85)
	(= (slew_time Planet10 Star6) 37.96)
	(= (slew_time Star6 Planet10) 37.96)
	(= (slew_time Planet10 Phenomenon7) 91.56)
	(= (slew_time Phenomenon7 Planet10) 91.56)
	(= (slew_time Planet10 Planet8) 18.76)
	(= (slew_time Planet8 Planet10) 18.76)
	(= (slew_time Planet10 Star9) 15.49)
	(= (slew_time Star9 Planet10) 15.49)
	(= (slew_time Planet11 GroundStation0) 54.29)
	(= (slew_time GroundStation0 Planet11) 54.29)
	(= (slew_time Planet11 GroundStation1) 9.828)
	(= (slew_time GroundStation1 Planet11) 9.828)
	(= (slew_time Planet11 GroundStation2) 28.61)
	(= (slew_time GroundStation2 Planet11) 28.61)
	(= (slew_time Planet11 Phenomenon3) 12.26)
	(= (slew_time Phenomenon3 Planet11) 12.26)
	(= (slew_time Planet11 Star4) 16.66)
	(= (slew_time Star4 Planet11) 16.66)
	(= (slew_time Planet11 Star5) 30.22)
	(= (slew_time Star5 Planet11) 30.22)
	(= (slew_time Planet11 Star6) 6.347)
	(= (slew_time Star6 Planet11) 6.347)
	(= (slew_time Planet11 Phenomenon7) 9.462)
	(= (slew_time Phenomenon7 Planet11) 9.462)
	(= (slew_time Planet11 Planet8) 19.37)
	(= (slew_time Planet8 Planet11) 19.37)
	(= (slew_time Planet11 Star9) 22.71)
	(= (slew_time Star9 Planet11) 22.71)
	(= (slew_time Planet11 Planet10) 35)
	(= (slew_time Planet10 Planet11) 35)
	(= (slew_time Phenomenon12 GroundStation0) 67.61)
	(= (slew_time GroundStation0 Phenomenon12) 67.61)
	(= (slew_time Phenomenon12 GroundStation1) 64.51)
	(= (slew_time GroundStation1 Phenomenon12) 64.51)
	(= (slew_time Phenomenon12 GroundStation2) 8.586)
	(= (slew_time GroundStation2 Phenomenon12) 8.586)
	(= (slew_time Phenomenon12 Phenomenon3) 43.91)
	(= (slew_time Phenomenon3 Phenomenon12) 43.91)
	(= (slew_time Phenomenon12 Star4) 15.39)
	(= (slew_time Star4 Phenomenon12) 15.39)
	(= (slew_time Phenomenon12 Star5) 25.54)
	(= (slew_time Star5 Phenomenon12) 25.54)
	(= (slew_time Phenomenon12 Star6) 30.93)
	(= (slew_time Star6 Phenomenon12) 30.93)
	(= (slew_time Phenomenon12 Phenomenon7) 3.652)
	(= (slew_time Phenomenon7 Phenomenon12) 3.652)
	(= (slew_time Phenomenon12 Planet8) 55.84)
	(= (slew_time Planet8 Phenomenon12) 55.84)
	(= (slew_time Phenomenon12 Star9) 4.279)
	(= (slew_time Star9 Phenomenon12) 4.279)
	(= (slew_time Phenomenon12 Planet10) 18.16)
	(= (slew_time Planet10 Phenomenon12) 18.16)
	(= (slew_time Phenomenon12 Planet11) 7.377)
	(= (slew_time Planet11 Phenomenon12) 7.377)
	(= (data-stored) 0)
	(= (fuel-used) 0)
)
(:goal (and
	(pointing satellite0 Planet8)
	(pointing satellite2 Planet8)
	(pointing satellite4 Planet11)
	(have_image Phenomenon3 infrared0)
	(have_image Star5 thermograph4)
	(have_image Star6 spectrograph2)
	(have_image Phenomenon7 thermograph4)
	(have_image Planet8 thermograph4)
	(have_image Star9 infrared0)
	(have_image Planet10 thermograph4)
	(have_image Planet11 spectrograph2)
	(have_image Phenomenon12 infrared0)
))
(:metric minimize (fuel-used))

)
