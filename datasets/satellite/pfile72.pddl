(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	satellite1 - satellite
	instrument2 - instrument
	image1 - mode
	infrared2 - mode
	spectrograph0 - mode
	infrared3 - mode
	Star0 - direction
	GroundStation1 - direction
	GroundStation4 - direction
	Star2 - direction
	GroundStation3 - direction
	Star5 - direction
	Phenomenon6 - direction
	Phenomenon7 - direction
	Star8 - direction
)
(:init
	(supports instrument0 image1)
	(supports instrument0 infrared2)
	(calibration_target instrument0 Star2)
	(supports instrument1 image1)
	(supports instrument1 infrared3)
	(calibration_target instrument1 GroundStation3)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Phenomenon6)
	(= (data_capacity satellite0) 1000)
	(= (fuel satellite0) 182)
	(supports instrument2 infrared3)
	(supports instrument2 spectrograph0)
	(supports instrument2 infrared2)
	(calibration_target instrument2 GroundStation3)
	(on_board instrument2 satellite1)
	(power_avail satellite1)
	(pointing satellite1 GroundStation3)
	(= (data_capacity satellite1) 1000)
	(= (fuel satellite1) 183)
	(= (data Star5 image1) 45)
	(= (data Phenomenon6 image1) 183)
	(= (data Phenomenon7 image1) 240)
	(= (data Star8 image1) 3)
	(= (data Star5 infrared2) 271)
	(= (data Phenomenon6 infrared2) 74)
	(= (data Phenomenon7 infrared2) 239)
	(= (data Star8 infrared2) 126)
	(= (data Star5 spectrograph0) 16)
	(= (data Phenomenon6 spectrograph0) 117)
	(= (data Phenomenon7 spectrograph0) 229)
	(= (data Star8 spectrograph0) 226)
	(= (data Star5 infrared3) 196)
	(= (data Phenomenon6 infrared3) 175)
	(= (data Phenomenon7 infrared3) 6)
	(= (data Star8 infrared3) 71)
	(= (slew_time GroundStation1 Star0) 36.41)
	(= (slew_time Star0 GroundStation1) 36.41)
	(= (slew_time GroundStation4 Star0) 24.87)
	(= (slew_time Star0 GroundStation4) 24.87)
	(= (slew_time GroundStation4 GroundStation1) 3.979)
	(= (slew_time GroundStation1 GroundStation4) 3.979)
	(= (slew_time GroundStation4 Star2) 21.41)
	(= (slew_time Star2 GroundStation4) 21.41)
	(= (slew_time GroundStation4 GroundStation3) 32.73)
	(= (slew_time GroundStation3 GroundStation4) 32.73)
	(= (slew_time Star2 Star0) 67.15)
	(= (slew_time Star0 Star2) 67.15)
	(= (slew_time Star2 GroundStation1) 65.01)
	(= (slew_time GroundStation1 Star2) 65.01)
	(= (slew_time GroundStation3 Star0) 0.3706)
	(= (slew_time Star0 GroundStation3) 0.3706)
	(= (slew_time GroundStation3 GroundStation1) 8.112)
	(= (slew_time GroundStation1 GroundStation3) 8.112)
	(= (slew_time GroundStation3 Star2) 39.4)
	(= (slew_time Star2 GroundStation3) 39.4)
	(= (slew_time Star5 Star0) 40.59)
	(= (slew_time Star0 Star5) 40.59)
	(= (slew_time Star5 GroundStation1) 38.92)
	(= (slew_time GroundStation1 Star5) 38.92)
	(= (slew_time Star5 Star2) 22.79)
	(= (slew_time Star2 Star5) 22.79)
	(= (slew_time Star5 GroundStation3) 73.07)
	(= (slew_time GroundStation3 Star5) 73.07)
	(= (slew_time Star5 GroundStation4) 63.98)
	(= (slew_time GroundStation4 Star5) 63.98)
	(= (slew_time Phenomenon6 Star0) 10.9)
	(= (slew_time Star0 Phenomenon6) 10.9)
	(= (slew_time Phenomenon6 GroundStation1) 40.49)
	(= (slew_time GroundStation1 Phenomenon6) 40.49)
	(= (slew_time Phenomenon6 Star2) 10.95)
	(= (slew_time Star2 Phenomenon6) 10.95)
	(= (slew_time Phenomenon6 GroundStation3) 63.63)
	(= (slew_time GroundStation3 Phenomenon6) 63.63)
	(= (slew_time Phenomenon6 GroundStation4) 80.86)
	(= (slew_time GroundStation4 Phenomenon6) 80.86)
	(= (slew_time Phenomenon6 Star5) 19.93)
	(= (slew_time Star5 Phenomenon6) 19.93)
	(= (slew_time Phenomenon7 Star0) 49.79)
	(= (slew_time Star0 Phenomenon7) 49.79)
	(= (slew_time Phenomenon7 GroundStation1) 4.996)
	(= (slew_time GroundStation1 Phenomenon7) 4.996)
	(= (slew_time Phenomenon7 Star2) 69.11)
	(= (slew_time Star2 Phenomenon7) 69.11)
	(= (slew_time Phenomenon7 GroundStation3) 5.659)
	(= (slew_time GroundStation3 Phenomenon7) 5.659)
	(= (slew_time Phenomenon7 GroundStation4) 55.02)
	(= (slew_time GroundStation4 Phenomenon7) 55.02)
	(= (slew_time Phenomenon7 Star5) 42.39)
	(= (slew_time Star5 Phenomenon7) 42.39)
	(= (slew_time Phenomenon7 Phenomenon6) 5.372)
	(= (slew_time Phenomenon6 Phenomenon7) 5.372)
	(= (slew_time Star8 Star0) 12.88)
	(= (slew_time Star0 Star8) 12.88)
	(= (slew_time Star8 GroundStation1) 2.789)
	(= (slew_time GroundStation1 Star8) 2.789)
	(= (slew_time Star8 Star2) 18)
	(= (slew_time Star2 Star8) 18)
	(= (slew_time Star8 GroundStation3) 17.75)
	(= (slew_time GroundStation3 Star8) 17.75)
	(= (slew_time Star8 GroundStation4) 20.09)
	(= (slew_time GroundStation4 Star8) 20.09)
	(= (slew_time Star8 Star5) 15.08)
	(= (slew_time Star5 Star8) 15.08)
	(= (slew_time Star8 Phenomenon6) 28.3)
	(= (slew_time Phenomenon6 Star8) 28.3)
	(= (slew_time Star8 Phenomenon7) 4.902)
	(= (slew_time Phenomenon7 Star8) 4.902)
	(= (data-stored) 0)
	(= (fuel-used) 0)
)
(:goal (and
	(pointing satellite0 Star2)
	(pointing satellite1 Star2)
	(have_image Star5 spectrograph0)
	(have_image Phenomenon6 spectrograph0)
	(have_image Phenomenon7 spectrograph0)
	(have_image Star8 spectrograph0)
))
(:metric minimize (fuel-used))

)
