(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	satellite1 - satellite
	instrument2 - instrument
	instrument3 - instrument
	infrared2 - mode
	image1 - mode
	spectrograph0 - mode
	Star0 - direction
	Star1 - direction
	Star2 - direction
	Planet3 - direction
	Star4 - direction
	Planet5 - direction
	Planet6 - direction
	Star7 - direction
)
(:init
	(supports instrument0 infrared2)
	(supports instrument0 image1)
	(calibration_target instrument0 Star0)
	(supports instrument1 infrared2)
	(calibration_target instrument1 Star1)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Star2)
	(= (data_capacity satellite0) 1000)
	(= (fuel satellite0) 150)
	(supports instrument2 spectrograph0)
	(supports instrument2 image1)
	(calibration_target instrument2 Star1)
	(supports instrument3 spectrograph0)
	(calibration_target instrument3 Star2)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Star0)
	(= (data_capacity satellite1) 1000)
	(= (fuel satellite1) 193)
	(= (data Planet3 infrared2) 139)
	(= (data Star4 infrared2) 117)
	(= (data Planet5 infrared2) 153)
	(= (data Planet6 infrared2) 277)
	(= (data Star7 infrared2) 100)
	(= (data Planet3 image1) 125)
	(= (data Star4 image1) 236)
	(= (data Planet5 image1) 209)
	(= (data Planet6 image1) 280)
	(= (data Star7 image1) 219)
	(= (data Planet3 spectrograph0) 11)
	(= (data Star4 spectrograph0) 139)
	(= (data Planet5 spectrograph0) 79)
	(= (data Planet6 spectrograph0) 17)
	(= (data Star7 spectrograph0) 255)
	(= (slew_time Star1 Star0) 53.47)
	(= (slew_time Star0 Star1) 53.47)
	(= (slew_time Star2 Star0) 13.72)
	(= (slew_time Star0 Star2) 13.72)
	(= (slew_time Star2 Star1) 36.71)
	(= (slew_time Star1 Star2) 36.71)
	(= (slew_time Planet3 Star0) 76.56)
	(= (slew_time Star0 Planet3) 76.56)
	(= (slew_time Planet3 Star1) 12.1)
	(= (slew_time Star1 Planet3) 12.1)
	(= (slew_time Planet3 Star2) 11.27)
	(= (slew_time Star2 Planet3) 11.27)
	(= (slew_time Star4 Star0) 5.576)
	(= (slew_time Star0 Star4) 5.576)
	(= (slew_time Star4 Star1) 10.65)
	(= (slew_time Star1 Star4) 10.65)
	(= (slew_time Star4 Star2) 57.31)
	(= (slew_time Star2 Star4) 57.31)
	(= (slew_time Star4 Planet3) 64.73)
	(= (slew_time Planet3 Star4) 64.73)
	(= (slew_time Planet5 Star0) 31.01)
	(= (slew_time Star0 Planet5) 31.01)
	(= (slew_time Planet5 Star1) 38.33)
	(= (slew_time Star1 Planet5) 38.33)
	(= (slew_time Planet5 Star2) 32.32)
	(= (slew_time Star2 Planet5) 32.32)
	(= (slew_time Planet5 Planet3) 77.58)
	(= (slew_time Planet3 Planet5) 77.58)
	(= (slew_time Planet5 Star4) 27.42)
	(= (slew_time Star4 Planet5) 27.42)
	(= (slew_time Planet6 Star0) 43.25)
	(= (slew_time Star0 Planet6) 43.25)
	(= (slew_time Planet6 Star1) 24.33)
	(= (slew_time Star1 Planet6) 24.33)
	(= (slew_time Planet6 Star2) 7.774)
	(= (slew_time Star2 Planet6) 7.774)
	(= (slew_time Planet6 Planet3) 21.12)
	(= (slew_time Planet3 Planet6) 21.12)
	(= (slew_time Planet6 Star4) 47.58)
	(= (slew_time Star4 Planet6) 47.58)
	(= (slew_time Planet6 Planet5) 1.451)
	(= (slew_time Planet5 Planet6) 1.451)
	(= (slew_time Star7 Star0) 13.65)
	(= (slew_time Star0 Star7) 13.65)
	(= (slew_time Star7 Star1) 2.209)
	(= (slew_time Star1 Star7) 2.209)
	(= (slew_time Star7 Star2) 34.16)
	(= (slew_time Star2 Star7) 34.16)
	(= (slew_time Star7 Planet3) 20.08)
	(= (slew_time Planet3 Star7) 20.08)
	(= (slew_time Star7 Star4) 45.26)
	(= (slew_time Star4 Star7) 45.26)
	(= (slew_time Star7 Planet5) 27.35)
	(= (slew_time Planet5 Star7) 27.35)
	(= (slew_time Star7 Planet6) 66.55)
	(= (slew_time Planet6 Star7) 66.55)
	(= (data-stored) 0)
	(= (fuel-used) 0)
)
(:goal (and
	(have_image Planet3 image1)
	(have_image Star4 image1)
	(have_image Planet5 image1)
	(have_image Planet6 infrared2)
	(have_image Star7 image1)
))
(:metric minimize (fuel-used))

)
