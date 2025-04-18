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
	infrared0 - mode
	image2 - mode
	infrared1 - mode
	Star2 - direction
	GroundStation3 - direction
	Star4 - direction
	GroundStation1 - direction
	Star0 - direction
	Phenomenon5 - direction
	Phenomenon6 - direction
	Star7 - direction
	Star8 - direction
	Planet9 - direction
	Phenomenon10 - direction
	Phenomenon11 - direction
)
(:init
	(supports instrument0 infrared1)
	(supports instrument0 infrared0)
	(supports instrument0 image2)
	(calibration_target instrument0 Star0)
	(supports instrument1 image2)
	(calibration_target instrument1 Star4)
	(supports instrument2 infrared1)
	(supports instrument2 infrared0)
	(supports instrument2 image2)
	(calibration_target instrument2 GroundStation1)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Phenomenon6)
	(= (data_capacity satellite0) 1000)
	(= (fuel satellite0) 141)
	(supports instrument3 image2)
	(supports instrument3 infrared1)
	(calibration_target instrument3 GroundStation1)
	(supports instrument4 infrared1)
	(calibration_target instrument4 Star0)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Star0)
	(= (data_capacity satellite1) 1000)
	(= (fuel satellite1) 100)
	(= (data Phenomenon5 infrared0) 238)
	(= (data Phenomenon6 infrared0) 281)
	(= (data Star7 infrared0) 103)
	(= (data Star8 infrared0) 33)
	(= (data Planet9 infrared0) 161)
	(= (data Phenomenon10 infrared0) 185)
	(= (data Phenomenon11 infrared0) 126)
	(= (data Phenomenon5 image2) 66)
	(= (data Phenomenon6 image2) 141)
	(= (data Star7 image2) 38)
	(= (data Star8 image2) 146)
	(= (data Planet9 image2) 154)
	(= (data Phenomenon10 image2) 40)
	(= (data Phenomenon11 image2) 13)
	(= (data Phenomenon5 infrared1) 120)
	(= (data Phenomenon6 infrared1) 48)
	(= (data Star7 infrared1) 42)
	(= (data Star8 infrared1) 213)
	(= (data Planet9 infrared1) 284)
	(= (data Phenomenon10 infrared1) 158)
	(= (data Phenomenon11 infrared1) 38)
	(= (slew_time Star2 Star0) 8.591)
	(= (slew_time Star0 Star2) 8.591)
	(= (slew_time Star2 GroundStation1) 28.4)
	(= (slew_time GroundStation1 Star2) 28.4)
	(= (slew_time GroundStation3 Star0) 7.927)
	(= (slew_time Star0 GroundStation3) 7.927)
	(= (slew_time GroundStation3 GroundStation1) 29.01)
	(= (slew_time GroundStation1 GroundStation3) 29.01)
	(= (slew_time GroundStation3 Star2) 37.33)
	(= (slew_time Star2 GroundStation3) 37.33)
	(= (slew_time Star4 Star0) 1.498)
	(= (slew_time Star0 Star4) 1.498)
	(= (slew_time Star4 GroundStation1) 68.94)
	(= (slew_time GroundStation1 Star4) 68.94)
	(= (slew_time Star4 Star2) 58.23)
	(= (slew_time Star2 Star4) 58.23)
	(= (slew_time Star4 GroundStation3) 10.39)
	(= (slew_time GroundStation3 Star4) 10.39)
	(= (slew_time GroundStation1 Star0) 6.04)
	(= (slew_time Star0 GroundStation1) 6.04)
	(= (slew_time Phenomenon5 Star0) 11.96)
	(= (slew_time Star0 Phenomenon5) 11.96)
	(= (slew_time Phenomenon5 GroundStation1) 23.8)
	(= (slew_time GroundStation1 Phenomenon5) 23.8)
	(= (slew_time Phenomenon5 Star2) 24.97)
	(= (slew_time Star2 Phenomenon5) 24.97)
	(= (slew_time Phenomenon5 GroundStation3) 81.69)
	(= (slew_time GroundStation3 Phenomenon5) 81.69)
	(= (slew_time Phenomenon5 Star4) 56.58)
	(= (slew_time Star4 Phenomenon5) 56.58)
	(= (slew_time Phenomenon6 Star0) 31.64)
	(= (slew_time Star0 Phenomenon6) 31.64)
	(= (slew_time Phenomenon6 GroundStation1) 31.22)
	(= (slew_time GroundStation1 Phenomenon6) 31.22)
	(= (slew_time Phenomenon6 Star2) 1.872)
	(= (slew_time Star2 Phenomenon6) 1.872)
	(= (slew_time Phenomenon6 GroundStation3) 33.04)
	(= (slew_time GroundStation3 Phenomenon6) 33.04)
	(= (slew_time Phenomenon6 Star4) 40.87)
	(= (slew_time Star4 Phenomenon6) 40.87)
	(= (slew_time Phenomenon6 Phenomenon5) 76.39)
	(= (slew_time Phenomenon5 Phenomenon6) 76.39)
	(= (slew_time Star7 Star0) 56.26)
	(= (slew_time Star0 Star7) 56.26)
	(= (slew_time Star7 GroundStation1) 61.7)
	(= (slew_time GroundStation1 Star7) 61.7)
	(= (slew_time Star7 Star2) 25.74)
	(= (slew_time Star2 Star7) 25.74)
	(= (slew_time Star7 GroundStation3) 29.72)
	(= (slew_time GroundStation3 Star7) 29.72)
	(= (slew_time Star7 Star4) 44.46)
	(= (slew_time Star4 Star7) 44.46)
	(= (slew_time Star7 Phenomenon5) 53.43)
	(= (slew_time Phenomenon5 Star7) 53.43)
	(= (slew_time Star7 Phenomenon6) 37.43)
	(= (slew_time Phenomenon6 Star7) 37.43)
	(= (slew_time Star8 Star0) 29.07)
	(= (slew_time Star0 Star8) 29.07)
	(= (slew_time Star8 GroundStation1) 94.5)
	(= (slew_time GroundStation1 Star8) 94.5)
	(= (slew_time Star8 Star2) 26.64)
	(= (slew_time Star2 Star8) 26.64)
	(= (slew_time Star8 GroundStation3) 10.99)
	(= (slew_time GroundStation3 Star8) 10.99)
	(= (slew_time Star8 Star4) 37.88)
	(= (slew_time Star4 Star8) 37.88)
	(= (slew_time Star8 Phenomenon5) 39.32)
	(= (slew_time Phenomenon5 Star8) 39.32)
	(= (slew_time Star8 Phenomenon6) 18.6)
	(= (slew_time Phenomenon6 Star8) 18.6)
	(= (slew_time Star8 Star7) 51.07)
	(= (slew_time Star7 Star8) 51.07)
	(= (slew_time Planet9 Star0) 31.12)
	(= (slew_time Star0 Planet9) 31.12)
	(= (slew_time Planet9 GroundStation1) 49.96)
	(= (slew_time GroundStation1 Planet9) 49.96)
	(= (slew_time Planet9 Star2) 16.29)
	(= (slew_time Star2 Planet9) 16.29)
	(= (slew_time Planet9 GroundStation3) 0.9726)
	(= (slew_time GroundStation3 Planet9) 0.9726)
	(= (slew_time Planet9 Star4) 0.6273)
	(= (slew_time Star4 Planet9) 0.6273)
	(= (slew_time Planet9 Phenomenon5) 23.95)
	(= (slew_time Phenomenon5 Planet9) 23.95)
	(= (slew_time Planet9 Phenomenon6) 52.68)
	(= (slew_time Phenomenon6 Planet9) 52.68)
	(= (slew_time Planet9 Star7) 27.07)
	(= (slew_time Star7 Planet9) 27.07)
	(= (slew_time Planet9 Star8) 17.36)
	(= (slew_time Star8 Planet9) 17.36)
	(= (slew_time Phenomenon10 Star0) 45.75)
	(= (slew_time Star0 Phenomenon10) 45.75)
	(= (slew_time Phenomenon10 GroundStation1) 72.67)
	(= (slew_time GroundStation1 Phenomenon10) 72.67)
	(= (slew_time Phenomenon10 Star2) 61.64)
	(= (slew_time Star2 Phenomenon10) 61.64)
	(= (slew_time Phenomenon10 GroundStation3) 45.25)
	(= (slew_time GroundStation3 Phenomenon10) 45.25)
	(= (slew_time Phenomenon10 Star4) 26.13)
	(= (slew_time Star4 Phenomenon10) 26.13)
	(= (slew_time Phenomenon10 Phenomenon5) 42.43)
	(= (slew_time Phenomenon5 Phenomenon10) 42.43)
	(= (slew_time Phenomenon10 Phenomenon6) 44.75)
	(= (slew_time Phenomenon6 Phenomenon10) 44.75)
	(= (slew_time Phenomenon10 Star7) 56.46)
	(= (slew_time Star7 Phenomenon10) 56.46)
	(= (slew_time Phenomenon10 Star8) 4.158)
	(= (slew_time Star8 Phenomenon10) 4.158)
	(= (slew_time Phenomenon10 Planet9) 33.96)
	(= (slew_time Planet9 Phenomenon10) 33.96)
	(= (slew_time Phenomenon11 Star0) 86.96)
	(= (slew_time Star0 Phenomenon11) 86.96)
	(= (slew_time Phenomenon11 GroundStation1) 36.7)
	(= (slew_time GroundStation1 Phenomenon11) 36.7)
	(= (slew_time Phenomenon11 Star2) 44.36)
	(= (slew_time Star2 Phenomenon11) 44.36)
	(= (slew_time Phenomenon11 GroundStation3) 17.52)
	(= (slew_time GroundStation3 Phenomenon11) 17.52)
	(= (slew_time Phenomenon11 Star4) 17.76)
	(= (slew_time Star4 Phenomenon11) 17.76)
	(= (slew_time Phenomenon11 Phenomenon5) 15.03)
	(= (slew_time Phenomenon5 Phenomenon11) 15.03)
	(= (slew_time Phenomenon11 Phenomenon6) 80.25)
	(= (slew_time Phenomenon6 Phenomenon11) 80.25)
	(= (slew_time Phenomenon11 Star7) 16.6)
	(= (slew_time Star7 Phenomenon11) 16.6)
	(= (slew_time Phenomenon11 Star8) 5.507)
	(= (slew_time Star8 Phenomenon11) 5.507)
	(= (slew_time Phenomenon11 Planet9) 67.96)
	(= (slew_time Planet9 Phenomenon11) 67.96)
	(= (slew_time Phenomenon11 Phenomenon10) 51.12)
	(= (slew_time Phenomenon10 Phenomenon11) 51.12)
	(= (data-stored) 0)
	(= (fuel-used) 0)
)
(:goal (and
	(pointing satellite0 Phenomenon5)
	(have_image Phenomenon5 infrared1)
	(have_image Phenomenon6 infrared1)
	(have_image Star7 image2)
	(have_image Star8 image2)
	(have_image Planet9 infrared0)
	(have_image Phenomenon10 image2)
	(have_image Phenomenon11 infrared0)
))
(:metric minimize (fuel-used))

)
