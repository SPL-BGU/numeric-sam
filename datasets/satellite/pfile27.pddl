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
	image3 - mode
	image1 - mode
	image0 - mode
	infrared2 - mode
	Star2 - direction
	Star0 - direction
	GroundStation1 - direction
	GroundStation3 - direction
	GroundStation4 - direction
	Phenomenon5 - direction
	Phenomenon6 - direction
	Star7 - direction
	Phenomenon8 - direction
)
(:init
	(supports instrument0 image0)
	(calibration_target instrument0 Star0)
	(supports instrument1 infrared2)
	(calibration_target instrument1 GroundStation3)
	(supports instrument2 image1)
	(supports instrument2 image3)
	(supports instrument2 infrared2)
	(calibration_target instrument2 GroundStation1)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Phenomenon8)
	(= (data_capacity satellite0) 1000)
	(= (fuel satellite0) 102)
	(supports instrument3 infrared2)
	(calibration_target instrument3 GroundStation1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Phenomenon5)
	(= (data_capacity satellite1) 1000)
	(= (fuel satellite1) 158)
	(supports instrument4 image1)
	(supports instrument4 infrared2)
	(supports instrument4 image0)
	(calibration_target instrument4 GroundStation3)
	(supports instrument5 image0)
	(calibration_target instrument5 GroundStation4)
	(supports instrument6 infrared2)
	(calibration_target instrument6 GroundStation4)
	(on_board instrument4 satellite2)
	(on_board instrument5 satellite2)
	(on_board instrument6 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Phenomenon8)
	(= (data_capacity satellite2) 1000)
	(= (fuel satellite2) 127)
	(= (data Phenomenon5 image3) 4)
	(= (data Phenomenon6 image3) 230)
	(= (data Star7 image3) 16)
	(= (data Phenomenon8 image3) 140)
	(= (data Phenomenon5 image1) 2)
	(= (data Phenomenon6 image1) 69)
	(= (data Star7 image1) 207)
	(= (data Phenomenon8 image1) 81)
	(= (data Phenomenon5 image0) 178)
	(= (data Phenomenon6 image0) 110)
	(= (data Star7 image0) 295)
	(= (data Phenomenon8 image0) 92)
	(= (data Phenomenon5 infrared2) 24)
	(= (data Phenomenon6 infrared2) 111)
	(= (data Star7 infrared2) 182)
	(= (data Phenomenon8 infrared2) 299)
	(= (slew_time Star2 Star0) 6.146)
	(= (slew_time Star0 Star2) 6.146)
	(= (slew_time Star2 GroundStation1) 57.36)
	(= (slew_time GroundStation1 Star2) 57.36)
	(= (slew_time GroundStation1 Star0) 1.524)
	(= (slew_time Star0 GroundStation1) 1.524)
	(= (slew_time GroundStation3 Star0) 1.958)
	(= (slew_time Star0 GroundStation3) 1.958)
	(= (slew_time GroundStation3 GroundStation1) 35.15)
	(= (slew_time GroundStation1 GroundStation3) 35.15)
	(= (slew_time GroundStation3 Star2) 67.21)
	(= (slew_time Star2 GroundStation3) 67.21)
	(= (slew_time GroundStation4 Star0) 60.76)
	(= (slew_time Star0 GroundStation4) 60.76)
	(= (slew_time GroundStation4 GroundStation1) 10.93)
	(= (slew_time GroundStation1 GroundStation4) 10.93)
	(= (slew_time GroundStation4 Star2) 22.61)
	(= (slew_time Star2 GroundStation4) 22.61)
	(= (slew_time GroundStation4 GroundStation3) 56.69)
	(= (slew_time GroundStation3 GroundStation4) 56.69)
	(= (slew_time Phenomenon5 Star0) 33.44)
	(= (slew_time Star0 Phenomenon5) 33.44)
	(= (slew_time Phenomenon5 GroundStation1) 17.95)
	(= (slew_time GroundStation1 Phenomenon5) 17.95)
	(= (slew_time Phenomenon5 Star2) 7.707)
	(= (slew_time Star2 Phenomenon5) 7.707)
	(= (slew_time Phenomenon5 GroundStation3) 11.5)
	(= (slew_time GroundStation3 Phenomenon5) 11.5)
	(= (slew_time Phenomenon5 GroundStation4) 77.16)
	(= (slew_time GroundStation4 Phenomenon5) 77.16)
	(= (slew_time Phenomenon6 Star0) 26.26)
	(= (slew_time Star0 Phenomenon6) 26.26)
	(= (slew_time Phenomenon6 GroundStation1) 29.08)
	(= (slew_time GroundStation1 Phenomenon6) 29.08)
	(= (slew_time Phenomenon6 Star2) 0.2471)
	(= (slew_time Star2 Phenomenon6) 0.2471)
	(= (slew_time Phenomenon6 GroundStation3) 35)
	(= (slew_time GroundStation3 Phenomenon6) 35)
	(= (slew_time Phenomenon6 GroundStation4) 17.27)
	(= (slew_time GroundStation4 Phenomenon6) 17.27)
	(= (slew_time Phenomenon6 Phenomenon5) 81.94)
	(= (slew_time Phenomenon5 Phenomenon6) 81.94)
	(= (slew_time Star7 Star0) 7.586)
	(= (slew_time Star0 Star7) 7.586)
	(= (slew_time Star7 GroundStation1) 58.53)
	(= (slew_time GroundStation1 Star7) 58.53)
	(= (slew_time Star7 Star2) 30.03)
	(= (slew_time Star2 Star7) 30.03)
	(= (slew_time Star7 GroundStation3) 21.54)
	(= (slew_time GroundStation3 Star7) 21.54)
	(= (slew_time Star7 GroundStation4) 42.24)
	(= (slew_time GroundStation4 Star7) 42.24)
	(= (slew_time Star7 Phenomenon5) 22.13)
	(= (slew_time Phenomenon5 Star7) 22.13)
	(= (slew_time Star7 Phenomenon6) 32.27)
	(= (slew_time Phenomenon6 Star7) 32.27)
	(= (slew_time Phenomenon8 Star0) 48.15)
	(= (slew_time Star0 Phenomenon8) 48.15)
	(= (slew_time Phenomenon8 GroundStation1) 1.088)
	(= (slew_time GroundStation1 Phenomenon8) 1.088)
	(= (slew_time Phenomenon8 Star2) 37.9)
	(= (slew_time Star2 Phenomenon8) 37.9)
	(= (slew_time Phenomenon8 GroundStation3) 12.91)
	(= (slew_time GroundStation3 Phenomenon8) 12.91)
	(= (slew_time Phenomenon8 GroundStation4) 62.55)
	(= (slew_time GroundStation4 Phenomenon8) 62.55)
	(= (slew_time Phenomenon8 Phenomenon5) 18.9)
	(= (slew_time Phenomenon5 Phenomenon8) 18.9)
	(= (slew_time Phenomenon8 Phenomenon6) 10.07)
	(= (slew_time Phenomenon6 Phenomenon8) 10.07)
	(= (slew_time Phenomenon8 Star7) 54.62)
	(= (slew_time Star7 Phenomenon8) 54.62)
	(= (data-stored) 0)
	(= (fuel-used) 0)
)
(:goal (and
	(pointing satellite1 Phenomenon8)
	(have_image Phenomenon5 image3)
	(have_image Star7 infrared2)
	(have_image Phenomenon8 image1)
))
(:metric minimize (fuel-used))

)
