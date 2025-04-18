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
	satellite3 - satellite
	instrument7 - instrument
	instrument8 - instrument
	infrared1 - mode
	spectrograph2 - mode
	infrared0 - mode
	thermograph3 - mode
	GroundStation1 - direction
	Star0 - direction
	GroundStation2 - direction
	Planet3 - direction
	Phenomenon4 - direction
	Phenomenon5 - direction
	Star6 - direction
)
(:init
	(supports instrument0 spectrograph2)
	(calibration_target instrument0 GroundStation1)
	(supports instrument1 thermograph3)
	(calibration_target instrument1 GroundStation2)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Phenomenon5)
	(= (data_capacity satellite0) 1000)
	(= (fuel satellite0) 170)
	(supports instrument2 spectrograph2)
	(supports instrument2 infrared1)
	(calibration_target instrument2 Star0)
	(supports instrument3 infrared0)
	(supports instrument3 infrared1)
	(supports instrument3 thermograph3)
	(calibration_target instrument3 Star0)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Phenomenon5)
	(= (data_capacity satellite1) 1000)
	(= (fuel satellite1) 164)
	(supports instrument4 infrared0)
	(supports instrument4 thermograph3)
	(supports instrument4 spectrograph2)
	(calibration_target instrument4 Star0)
	(supports instrument5 thermograph3)
	(supports instrument5 spectrograph2)
	(supports instrument5 infrared1)
	(calibration_target instrument5 Star0)
	(supports instrument6 infrared0)
	(supports instrument6 infrared1)
	(supports instrument6 spectrograph2)
	(calibration_target instrument6 Star0)
	(on_board instrument4 satellite2)
	(on_board instrument5 satellite2)
	(on_board instrument6 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Star0)
	(= (data_capacity satellite2) 1000)
	(= (fuel satellite2) 167)
	(supports instrument7 spectrograph2)
	(supports instrument7 thermograph3)
	(supports instrument7 infrared0)
	(calibration_target instrument7 GroundStation2)
	(supports instrument8 thermograph3)
	(supports instrument8 infrared0)
	(supports instrument8 spectrograph2)
	(calibration_target instrument8 GroundStation2)
	(on_board instrument7 satellite3)
	(on_board instrument8 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Phenomenon4)
	(= (data_capacity satellite3) 1000)
	(= (fuel satellite3) 159)
	(= (data Planet3 infrared1) 201)
	(= (data Phenomenon4 infrared1) 24)
	(= (data Phenomenon5 infrared1) 98)
	(= (data Star6 infrared1) 164)
	(= (data Planet3 spectrograph2) 118)
	(= (data Phenomenon4 spectrograph2) 212)
	(= (data Phenomenon5 spectrograph2) 41)
	(= (data Star6 spectrograph2) 226)
	(= (data Planet3 infrared0) 300)
	(= (data Phenomenon4 infrared0) 225)
	(= (data Phenomenon5 infrared0) 293)
	(= (data Star6 infrared0) 57)
	(= (data Planet3 thermograph3) 61)
	(= (data Phenomenon4 thermograph3) 7)
	(= (data Phenomenon5 thermograph3) 76)
	(= (data Star6 thermograph3) 15)
	(= (slew_time GroundStation1 Star0) 23.45)
	(= (slew_time Star0 GroundStation1) 23.45)
	(= (slew_time GroundStation2 Star0) 12)
	(= (slew_time Star0 GroundStation2) 12)
	(= (slew_time GroundStation2 GroundStation1) 37.76)
	(= (slew_time GroundStation1 GroundStation2) 37.76)
	(= (slew_time Planet3 Star0) 10.16)
	(= (slew_time Star0 Planet3) 10.16)
	(= (slew_time Planet3 GroundStation1) 20.23)
	(= (slew_time GroundStation1 Planet3) 20.23)
	(= (slew_time Planet3 GroundStation2) 18.53)
	(= (slew_time GroundStation2 Planet3) 18.53)
	(= (slew_time Phenomenon4 Star0) 2.319)
	(= (slew_time Star0 Phenomenon4) 2.319)
	(= (slew_time Phenomenon4 GroundStation1) 6.348)
	(= (slew_time GroundStation1 Phenomenon4) 6.348)
	(= (slew_time Phenomenon4 GroundStation2) 12.66)
	(= (slew_time GroundStation2 Phenomenon4) 12.66)
	(= (slew_time Phenomenon4 Planet3) 78.65)
	(= (slew_time Planet3 Phenomenon4) 78.65)
	(= (slew_time Phenomenon5 Star0) 11.03)
	(= (slew_time Star0 Phenomenon5) 11.03)
	(= (slew_time Phenomenon5 GroundStation1) 3.037)
	(= (slew_time GroundStation1 Phenomenon5) 3.037)
	(= (slew_time Phenomenon5 GroundStation2) 55.81)
	(= (slew_time GroundStation2 Phenomenon5) 55.81)
	(= (slew_time Phenomenon5 Planet3) 48.15)
	(= (slew_time Planet3 Phenomenon5) 48.15)
	(= (slew_time Phenomenon5 Phenomenon4) 28.63)
	(= (slew_time Phenomenon4 Phenomenon5) 28.63)
	(= (slew_time Star6 Star0) 25.11)
	(= (slew_time Star0 Star6) 25.11)
	(= (slew_time Star6 GroundStation1) 8.738)
	(= (slew_time GroundStation1 Star6) 8.738)
	(= (slew_time Star6 GroundStation2) 31.7)
	(= (slew_time GroundStation2 Star6) 31.7)
	(= (slew_time Star6 Planet3) 41.04)
	(= (slew_time Planet3 Star6) 41.04)
	(= (slew_time Star6 Phenomenon4) 3.565)
	(= (slew_time Phenomenon4 Star6) 3.565)
	(= (slew_time Star6 Phenomenon5) 93.23)
	(= (slew_time Phenomenon5 Star6) 93.23)
	(= (data-stored) 0)
	(= (fuel-used) 0)
)
(:goal (and
	(pointing satellite0 Phenomenon5)
	(pointing satellite3 Phenomenon5)
	(have_image Planet3 infrared0)
	(have_image Phenomenon5 infrared1)
	(have_image Star6 infrared0)
))
(:metric minimize (fuel-used))

)
