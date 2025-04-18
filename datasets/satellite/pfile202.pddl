(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	instrument2 - instrument
	satellite1 - satellite
	instrument3 - instrument
	instrument4 - instrument
	spectrograph0 - mode
	thermograph2 - mode
	image1 - mode
	image3 - mode
	Star1 - direction
	Star0 - direction
	GroundStation2 - direction
	Star3 - direction
	Phenomenon4 - direction
	Phenomenon5 - direction
	Star6 - direction
	Planet7 - direction
)
(:init
	(supports instrument0 thermograph2)
	(supports instrument0 image3)
	(calibration_target instrument0 Star0)
	(supports instrument1 image3)
	(supports instrument1 spectrograph0)
	(supports instrument1 image1)
	(calibration_target instrument1 GroundStation2)
	(supports instrument2 image1)
	(supports instrument2 image3)
	(calibration_target instrument2 Star0)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 GroundStation2)
	(= (data_capacity satellite0) 1000)
	(= (fuel satellite0) 175)
	(supports instrument3 thermograph2)
	(supports instrument3 spectrograph0)
	(supports instrument3 image3)
	(calibration_target instrument3 GroundStation2)
	(supports instrument4 image3)
	(supports instrument4 image1)
	(supports instrument4 thermograph2)
	(calibration_target instrument4 GroundStation2)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Star6)
	(= (data_capacity satellite1) 1000)
	(= (fuel satellite1) 151)
	(= (data Star3 spectrograph0) 293)
	(= (data Phenomenon4 spectrograph0) 176)
	(= (data Phenomenon5 spectrograph0) 280)
	(= (data Star6 spectrograph0) 256)
	(= (data Planet7 spectrograph0) 105)
	(= (data Star3 thermograph2) 138)
	(= (data Phenomenon4 thermograph2) 160)
	(= (data Phenomenon5 thermograph2) 39)
	(= (data Star6 thermograph2) 227)
	(= (data Planet7 thermograph2) 244)
	(= (data Star3 image1) 217)
	(= (data Phenomenon4 image1) 99)
	(= (data Phenomenon5 image1) 168)
	(= (data Star6 image1) 47)
	(= (data Planet7 image1) 203)
	(= (data Star3 image3) 76)
	(= (data Phenomenon4 image3) 234)
	(= (data Phenomenon5 image3) 170)
	(= (data Star6 image3) 245)
	(= (data Planet7 image3) 34)
	(= (slew_time Star1 Star0) 27.6)
	(= (slew_time Star0 Star1) 27.6)
	(= (slew_time GroundStation2 Star0) 42.05)
	(= (slew_time Star0 GroundStation2) 42.05)
	(= (slew_time GroundStation2 Star1) 49.61)
	(= (slew_time Star1 GroundStation2) 49.61)
	(= (slew_time Star3 Star0) 61.36)
	(= (slew_time Star0 Star3) 61.36)
	(= (slew_time Star3 Star1) 10.29)
	(= (slew_time Star1 Star3) 10.29)
	(= (slew_time Star3 GroundStation2) 36.55)
	(= (slew_time GroundStation2 Star3) 36.55)
	(= (slew_time Phenomenon4 Star0) 87.38)
	(= (slew_time Star0 Phenomenon4) 87.38)
	(= (slew_time Phenomenon4 Star1) 4.959)
	(= (slew_time Star1 Phenomenon4) 4.959)
	(= (slew_time Phenomenon4 GroundStation2) 66.2)
	(= (slew_time GroundStation2 Phenomenon4) 66.2)
	(= (slew_time Phenomenon4 Star3) 40.31)
	(= (slew_time Star3 Phenomenon4) 40.31)
	(= (slew_time Phenomenon5 Star0) 66.36)
	(= (slew_time Star0 Phenomenon5) 66.36)
	(= (slew_time Phenomenon5 Star1) 48.94)
	(= (slew_time Star1 Phenomenon5) 48.94)
	(= (slew_time Phenomenon5 GroundStation2) 74.12)
	(= (slew_time GroundStation2 Phenomenon5) 74.12)
	(= (slew_time Phenomenon5 Star3) 95.86)
	(= (slew_time Star3 Phenomenon5) 95.86)
	(= (slew_time Phenomenon5 Phenomenon4) 20.92)
	(= (slew_time Phenomenon4 Phenomenon5) 20.92)
	(= (slew_time Star6 Star0) 76.52)
	(= (slew_time Star0 Star6) 76.52)
	(= (slew_time Star6 Star1) 1.313)
	(= (slew_time Star1 Star6) 1.313)
	(= (slew_time Star6 GroundStation2) 23.13)
	(= (slew_time GroundStation2 Star6) 23.13)
	(= (slew_time Star6 Star3) 31.7)
	(= (slew_time Star3 Star6) 31.7)
	(= (slew_time Star6 Phenomenon4) 23.47)
	(= (slew_time Phenomenon4 Star6) 23.47)
	(= (slew_time Star6 Phenomenon5) 12.66)
	(= (slew_time Phenomenon5 Star6) 12.66)
	(= (slew_time Planet7 Star0) 29.83)
	(= (slew_time Star0 Planet7) 29.83)
	(= (slew_time Planet7 Star1) 4.957)
	(= (slew_time Star1 Planet7) 4.957)
	(= (slew_time Planet7 GroundStation2) 22.2)
	(= (slew_time GroundStation2 Planet7) 22.2)
	(= (slew_time Planet7 Star3) 78.44)
	(= (slew_time Star3 Planet7) 78.44)
	(= (slew_time Planet7 Phenomenon4) 6.214)
	(= (slew_time Phenomenon4 Planet7) 6.214)
	(= (slew_time Planet7 Phenomenon5) 57.36)
	(= (slew_time Phenomenon5 Planet7) 57.36)
	(= (slew_time Planet7 Star6) 57.3)
	(= (slew_time Star6 Planet7) 57.3)
	(= (data-stored) 0)
	(= (fuel-used) 0)
)
(:goal (and
	(have_image Star3 thermograph2)
	(have_image Phenomenon4 thermograph2)
	(have_image Phenomenon5 spectrograph0)
	(have_image Star6 thermograph2)
))
(:metric minimize (fuel-used))

)
