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
	instrument6 - instrument
	thermograph1 - mode
	spectrograph0 - mode
	thermograph2 - mode
	GroundStation3 - direction
	Star2 - direction
	Star1 - direction
	Star0 - direction
	Phenomenon4 - direction
	Star5 - direction
	Star6 - direction
	Planet7 - direction
)
(:init
	(supports instrument0 spectrograph0)
	(supports instrument0 thermograph1)
	(supports instrument0 thermograph2)
	(calibration_target instrument0 Star2)
	(supports instrument1 thermograph1)
	(supports instrument1 thermograph2)
	(calibration_target instrument1 Star2)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Planet7)
	(= (data_capacity satellite0) 1000)
	(= (fuel satellite0) 114)
	(supports instrument2 thermograph1)
	(calibration_target instrument2 Star2)
	(supports instrument3 spectrograph0)
	(supports instrument3 thermograph1)
	(supports instrument3 thermograph2)
	(calibration_target instrument3 Star1)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Phenomenon4)
	(= (data_capacity satellite1) 1000)
	(= (fuel satellite1) 106)
	(supports instrument4 spectrograph0)
	(supports instrument4 thermograph2)
	(calibration_target instrument4 Star1)
	(supports instrument5 thermograph1)
	(supports instrument5 spectrograph0)
	(calibration_target instrument5 Star0)
	(supports instrument6 thermograph2)
	(supports instrument6 spectrograph0)
	(calibration_target instrument6 Star0)
	(on_board instrument4 satellite2)
	(on_board instrument5 satellite2)
	(on_board instrument6 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Star5)
	(= (data_capacity satellite2) 1000)
	(= (fuel satellite2) 143)
	(= (data Phenomenon4 thermograph1) 278)
	(= (data Star5 thermograph1) 178)
	(= (data Star6 thermograph1) 73)
	(= (data Planet7 thermograph1) 131)
	(= (data Phenomenon4 spectrograph0) 263)
	(= (data Star5 spectrograph0) 140)
	(= (data Star6 spectrograph0) 165)
	(= (data Planet7 spectrograph0) 253)
	(= (data Phenomenon4 thermograph2) 260)
	(= (data Star5 thermograph2) 258)
	(= (data Star6 thermograph2) 124)
	(= (data Planet7 thermograph2) 244)
	(= (slew_time GroundStation3 Star0) 33.71)
	(= (slew_time Star0 GroundStation3) 33.71)
	(= (slew_time GroundStation3 Star1) 49.46)
	(= (slew_time Star1 GroundStation3) 49.46)
	(= (slew_time GroundStation3 Star2) 56.06)
	(= (slew_time Star2 GroundStation3) 56.06)
	(= (slew_time Star2 Star0) 17.68)
	(= (slew_time Star0 Star2) 17.68)
	(= (slew_time Star2 Star1) 33.25)
	(= (slew_time Star1 Star2) 33.25)
	(= (slew_time Star1 Star0) 11.06)
	(= (slew_time Star0 Star1) 11.06)
	(= (slew_time Phenomenon4 Star0) 27.64)
	(= (slew_time Star0 Phenomenon4) 27.64)
	(= (slew_time Phenomenon4 Star1) 35.15)
	(= (slew_time Star1 Phenomenon4) 35.15)
	(= (slew_time Phenomenon4 Star2) 88.94)
	(= (slew_time Star2 Phenomenon4) 88.94)
	(= (slew_time Phenomenon4 GroundStation3) 36.02)
	(= (slew_time GroundStation3 Phenomenon4) 36.02)
	(= (slew_time Star5 Star0) 8.091)
	(= (slew_time Star0 Star5) 8.091)
	(= (slew_time Star5 Star1) 25.54)
	(= (slew_time Star1 Star5) 25.54)
	(= (slew_time Star5 Star2) 34.66)
	(= (slew_time Star2 Star5) 34.66)
	(= (slew_time Star5 GroundStation3) 20.15)
	(= (slew_time GroundStation3 Star5) 20.15)
	(= (slew_time Star5 Phenomenon4) 32.62)
	(= (slew_time Phenomenon4 Star5) 32.62)
	(= (slew_time Star6 Star0) 31.16)
	(= (slew_time Star0 Star6) 31.16)
	(= (slew_time Star6 Star1) 0.8973)
	(= (slew_time Star1 Star6) 0.8973)
	(= (slew_time Star6 Star2) 35.43)
	(= (slew_time Star2 Star6) 35.43)
	(= (slew_time Star6 GroundStation3) 47.79)
	(= (slew_time GroundStation3 Star6) 47.79)
	(= (slew_time Star6 Phenomenon4) 49.61)
	(= (slew_time Phenomenon4 Star6) 49.61)
	(= (slew_time Star6 Star5) 2.641)
	(= (slew_time Star5 Star6) 2.641)
	(= (slew_time Planet7 Star0) 10.05)
	(= (slew_time Star0 Planet7) 10.05)
	(= (slew_time Planet7 Star1) 35.48)
	(= (slew_time Star1 Planet7) 35.48)
	(= (slew_time Planet7 Star2) 23.49)
	(= (slew_time Star2 Planet7) 23.49)
	(= (slew_time Planet7 GroundStation3) 25.83)
	(= (slew_time GroundStation3 Planet7) 25.83)
	(= (slew_time Planet7 Phenomenon4) 22.72)
	(= (slew_time Phenomenon4 Planet7) 22.72)
	(= (slew_time Planet7 Star5) 75.36)
	(= (slew_time Star5 Planet7) 75.36)
	(= (slew_time Planet7 Star6) 69.6)
	(= (slew_time Star6 Planet7) 69.6)
	(= (data-stored) 0)
	(= (fuel-used) 0)
)
(:goal (and
	(pointing satellite0 Star0)
	(have_image Phenomenon4 spectrograph0)
	(have_image Star5 thermograph2)
	(have_image Star6 spectrograph0)
	(have_image Planet7 thermograph1)
))
(:metric minimize (fuel-used))

)
