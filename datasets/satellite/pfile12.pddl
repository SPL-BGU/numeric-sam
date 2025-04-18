(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	satellite1 - satellite
	instrument2 - instrument
	instrument3 - instrument
	satellite2 - satellite
	instrument4 - instrument
	instrument5 - instrument
	spectrograph2 - mode
	thermograph0 - mode
	spectrograph1 - mode
	spectrograph3 - mode
	GroundStation0 - direction
	GroundStation4 - direction
	GroundStation3 - direction
	GroundStation1 - direction
	GroundStation2 - direction
	Star5 - direction
	Planet6 - direction
	Star7 - direction
	Phenomenon8 - direction
	Phenomenon9 - direction
	Phenomenon10 - direction
	Phenomenon11 - direction
)
(:init
	(supports instrument0 spectrograph1)
	(supports instrument0 spectrograph3)
	(calibration_target instrument0 GroundStation4)
	(supports instrument1 spectrograph2)
	(supports instrument1 thermograph0)
	(supports instrument1 spectrograph1)
	(calibration_target instrument1 GroundStation3)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Phenomenon8)
	(= (data_capacity satellite0) 1000)
	(= (fuel satellite0) 155)
	(supports instrument2 spectrograph3)
	(supports instrument2 spectrograph2)
	(supports instrument2 thermograph0)
	(calibration_target instrument2 GroundStation1)
	(supports instrument3 spectrograph3)
	(supports instrument3 spectrograph2)
	(calibration_target instrument3 GroundStation2)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 GroundStation4)
	(= (data_capacity satellite1) 1000)
	(= (fuel satellite1) 149)
	(supports instrument4 spectrograph3)
	(supports instrument4 spectrograph1)
	(supports instrument4 thermograph0)
	(calibration_target instrument4 GroundStation1)
	(supports instrument5 spectrograph3)
	(supports instrument5 spectrograph1)
	(calibration_target instrument5 GroundStation2)
	(on_board instrument4 satellite2)
	(on_board instrument5 satellite2)
	(power_avail satellite2)
	(pointing satellite2 GroundStation4)
	(= (data_capacity satellite2) 1000)
	(= (fuel satellite2) 127)
	(= (data Star5 spectrograph2) 185)
	(= (data Planet6 spectrograph2) 296)
	(= (data Star7 spectrograph2) 185)
	(= (data Phenomenon8 spectrograph2) 97)
	(= (data Phenomenon9 spectrograph2) 71)
	(= (data Phenomenon10 spectrograph2) 98)
	(= (data Phenomenon11 spectrograph2) 94)
	(= (data Star5 thermograph0) 87)
	(= (data Planet6 thermograph0) 167)
	(= (data Star7 thermograph0) 233)
	(= (data Phenomenon8 thermograph0) 76)
	(= (data Phenomenon9 thermograph0) 58)
	(= (data Phenomenon10 thermograph0) 36)
	(= (data Phenomenon11 thermograph0) 186)
	(= (data Star5 spectrograph1) 210)
	(= (data Planet6 spectrograph1) 62)
	(= (data Star7 spectrograph1) 139)
	(= (data Phenomenon8 spectrograph1) 124)
	(= (data Phenomenon9 spectrograph1) 292)
	(= (data Phenomenon10 spectrograph1) 76)
	(= (data Phenomenon11 spectrograph1) 156)
	(= (data Star5 spectrograph3) 244)
	(= (data Planet6 spectrograph3) 25)
	(= (data Star7 spectrograph3) 181)
	(= (data Phenomenon8 spectrograph3) 92)
	(= (data Phenomenon9 spectrograph3) 159)
	(= (data Phenomenon10 spectrograph3) 94)
	(= (data Phenomenon11 spectrograph3) 284)
	(= (slew_time GroundStation4 GroundStation0) 21.22)
	(= (slew_time GroundStation0 GroundStation4) 21.22)
	(= (slew_time GroundStation4 GroundStation1) 19.9)
	(= (slew_time GroundStation1 GroundStation4) 19.9)
	(= (slew_time GroundStation4 GroundStation2) 28.78)
	(= (slew_time GroundStation2 GroundStation4) 28.78)
	(= (slew_time GroundStation4 GroundStation3) 20.41)
	(= (slew_time GroundStation3 GroundStation4) 20.41)
	(= (slew_time GroundStation3 GroundStation0) 38.54)
	(= (slew_time GroundStation0 GroundStation3) 38.54)
	(= (slew_time GroundStation3 GroundStation1) 13.66)
	(= (slew_time GroundStation1 GroundStation3) 13.66)
	(= (slew_time GroundStation3 GroundStation2) 53.88)
	(= (slew_time GroundStation2 GroundStation3) 53.88)
	(= (slew_time GroundStation1 GroundStation0) 58.54)
	(= (slew_time GroundStation0 GroundStation1) 58.54)
	(= (slew_time GroundStation2 GroundStation0) 27.22)
	(= (slew_time GroundStation0 GroundStation2) 27.22)
	(= (slew_time GroundStation2 GroundStation1) 45.65)
	(= (slew_time GroundStation1 GroundStation2) 45.65)
	(= (slew_time Star5 GroundStation0) 19.58)
	(= (slew_time GroundStation0 Star5) 19.58)
	(= (slew_time Star5 GroundStation1) 5.16)
	(= (slew_time GroundStation1 Star5) 5.16)
	(= (slew_time Star5 GroundStation2) 57.23)
	(= (slew_time GroundStation2 Star5) 57.23)
	(= (slew_time Star5 GroundStation3) 18.63)
	(= (slew_time GroundStation3 Star5) 18.63)
	(= (slew_time Star5 GroundStation4) 48.25)
	(= (slew_time GroundStation4 Star5) 48.25)
	(= (slew_time Planet6 GroundStation0) 44.28)
	(= (slew_time GroundStation0 Planet6) 44.28)
	(= (slew_time Planet6 GroundStation1) 59.64)
	(= (slew_time GroundStation1 Planet6) 59.64)
	(= (slew_time Planet6 GroundStation2) 12.98)
	(= (slew_time GroundStation2 Planet6) 12.98)
	(= (slew_time Planet6 GroundStation3) 36.46)
	(= (slew_time GroundStation3 Planet6) 36.46)
	(= (slew_time Planet6 GroundStation4) 32.22)
	(= (slew_time GroundStation4 Planet6) 32.22)
	(= (slew_time Planet6 Star5) 14.26)
	(= (slew_time Star5 Planet6) 14.26)
	(= (slew_time Star7 GroundStation0) 37.5)
	(= (slew_time GroundStation0 Star7) 37.5)
	(= (slew_time Star7 GroundStation1) 9.041)
	(= (slew_time GroundStation1 Star7) 9.041)
	(= (slew_time Star7 GroundStation2) 23.52)
	(= (slew_time GroundStation2 Star7) 23.52)
	(= (slew_time Star7 GroundStation3) 38.76)
	(= (slew_time GroundStation3 Star7) 38.76)
	(= (slew_time Star7 GroundStation4) 35.96)
	(= (slew_time GroundStation4 Star7) 35.96)
	(= (slew_time Star7 Star5) 8.598)
	(= (slew_time Star5 Star7) 8.598)
	(= (slew_time Star7 Planet6) 46.72)
	(= (slew_time Planet6 Star7) 46.72)
	(= (slew_time Phenomenon8 GroundStation0) 6.346)
	(= (slew_time GroundStation0 Phenomenon8) 6.346)
	(= (slew_time Phenomenon8 GroundStation1) 16.52)
	(= (slew_time GroundStation1 Phenomenon8) 16.52)
	(= (slew_time Phenomenon8 GroundStation2) 2.741)
	(= (slew_time GroundStation2 Phenomenon8) 2.741)
	(= (slew_time Phenomenon8 GroundStation3) 79.88)
	(= (slew_time GroundStation3 Phenomenon8) 79.88)
	(= (slew_time Phenomenon8 GroundStation4) 64.65)
	(= (slew_time GroundStation4 Phenomenon8) 64.65)
	(= (slew_time Phenomenon8 Star5) 31.85)
	(= (slew_time Star5 Phenomenon8) 31.85)
	(= (slew_time Phenomenon8 Planet6) 2.126)
	(= (slew_time Planet6 Phenomenon8) 2.126)
	(= (slew_time Phenomenon8 Star7) 0.2062)
	(= (slew_time Star7 Phenomenon8) 0.2062)
	(= (slew_time Phenomenon9 GroundStation0) 24.75)
	(= (slew_time GroundStation0 Phenomenon9) 24.75)
	(= (slew_time Phenomenon9 GroundStation1) 6.882)
	(= (slew_time GroundStation1 Phenomenon9) 6.882)
	(= (slew_time Phenomenon9 GroundStation2) 38.61)
	(= (slew_time GroundStation2 Phenomenon9) 38.61)
	(= (slew_time Phenomenon9 GroundStation3) 24.17)
	(= (slew_time GroundStation3 Phenomenon9) 24.17)
	(= (slew_time Phenomenon9 GroundStation4) 6.438)
	(= (slew_time GroundStation4 Phenomenon9) 6.438)
	(= (slew_time Phenomenon9 Star5) 90.41)
	(= (slew_time Star5 Phenomenon9) 90.41)
	(= (slew_time Phenomenon9 Planet6) 73.62)
	(= (slew_time Planet6 Phenomenon9) 73.62)
	(= (slew_time Phenomenon9 Star7) 10.52)
	(= (slew_time Star7 Phenomenon9) 10.52)
	(= (slew_time Phenomenon9 Phenomenon8) 12.33)
	(= (slew_time Phenomenon8 Phenomenon9) 12.33)
	(= (slew_time Phenomenon10 GroundStation0) 26.35)
	(= (slew_time GroundStation0 Phenomenon10) 26.35)
	(= (slew_time Phenomenon10 GroundStation1) 86.9)
	(= (slew_time GroundStation1 Phenomenon10) 86.9)
	(= (slew_time Phenomenon10 GroundStation2) 74.92)
	(= (slew_time GroundStation2 Phenomenon10) 74.92)
	(= (slew_time Phenomenon10 GroundStation3) 18.05)
	(= (slew_time GroundStation3 Phenomenon10) 18.05)
	(= (slew_time Phenomenon10 GroundStation4) 68.99)
	(= (slew_time GroundStation4 Phenomenon10) 68.99)
	(= (slew_time Phenomenon10 Star5) 37.74)
	(= (slew_time Star5 Phenomenon10) 37.74)
	(= (slew_time Phenomenon10 Planet6) 47.18)
	(= (slew_time Planet6 Phenomenon10) 47.18)
	(= (slew_time Phenomenon10 Star7) 0.8015)
	(= (slew_time Star7 Phenomenon10) 0.8015)
	(= (slew_time Phenomenon10 Phenomenon8) 52.13)
	(= (slew_time Phenomenon8 Phenomenon10) 52.13)
	(= (slew_time Phenomenon10 Phenomenon9) 13.53)
	(= (slew_time Phenomenon9 Phenomenon10) 13.53)
	(= (slew_time Phenomenon11 GroundStation0) 33.69)
	(= (slew_time GroundStation0 Phenomenon11) 33.69)
	(= (slew_time Phenomenon11 GroundStation1) 13.15)
	(= (slew_time GroundStation1 Phenomenon11) 13.15)
	(= (slew_time Phenomenon11 GroundStation2) 73.46)
	(= (slew_time GroundStation2 Phenomenon11) 73.46)
	(= (slew_time Phenomenon11 GroundStation3) 79.38)
	(= (slew_time GroundStation3 Phenomenon11) 79.38)
	(= (slew_time Phenomenon11 GroundStation4) 35.89)
	(= (slew_time GroundStation4 Phenomenon11) 35.89)
	(= (slew_time Phenomenon11 Star5) 30.5)
	(= (slew_time Star5 Phenomenon11) 30.5)
	(= (slew_time Phenomenon11 Planet6) 23.13)
	(= (slew_time Planet6 Phenomenon11) 23.13)
	(= (slew_time Phenomenon11 Star7) 1.97)
	(= (slew_time Star7 Phenomenon11) 1.97)
	(= (slew_time Phenomenon11 Phenomenon8) 12.42)
	(= (slew_time Phenomenon8 Phenomenon11) 12.42)
	(= (slew_time Phenomenon11 Phenomenon9) 19.19)
	(= (slew_time Phenomenon9 Phenomenon11) 19.19)
	(= (slew_time Phenomenon11 Phenomenon10) 26.01)
	(= (slew_time Phenomenon10 Phenomenon11) 26.01)
	(= (data-stored) 0)
	(= (fuel-used) 0)
)
(:goal (and
	(pointing satellite1 GroundStation1)
	(pointing satellite2 Planet6)
	(have_image Star5 spectrograph3)
	(have_image Planet6 spectrograph2)
	(have_image Star7 spectrograph3)
	(have_image Phenomenon9 spectrograph1)
	(have_image Phenomenon10 thermograph0)
	(have_image Phenomenon11 spectrograph2)
))
(:metric minimize (fuel-used))

)
