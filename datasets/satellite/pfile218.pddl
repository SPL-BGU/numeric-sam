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
	image0 - mode
	spectrograph2 - mode
	image1 - mode
	Star1 - direction
	Star3 - direction
	GroundStation0 - direction
	GroundStation2 - direction
	Star4 - direction
	Planet5 - direction
	Star6 - direction
	Planet7 - direction
	Phenomenon8 - direction
	Planet9 - direction
	Planet10 - direction
	Planet11 - direction
	Planet12 - direction
	Phenomenon13 - direction
	Planet14 - direction
)
(:init
	(supports instrument0 spectrograph2)
	(supports instrument0 image0)
	(supports instrument0 image1)
	(calibration_target instrument0 Star4)
	(supports instrument1 image1)
	(supports instrument1 spectrograph2)
	(calibration_target instrument1 GroundStation2)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Planet12)
	(= (data_capacity satellite0) 1000)
	(= (fuel satellite0) 180)
	(supports instrument2 image0)
	(supports instrument2 spectrograph2)
	(supports instrument2 image1)
	(calibration_target instrument2 GroundStation0)
	(supports instrument3 spectrograph2)
	(calibration_target instrument3 GroundStation2)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Planet5)
	(= (data_capacity satellite1) 1000)
	(= (fuel satellite1) 183)
	(supports instrument4 image1)
	(calibration_target instrument4 Star4)
	(on_board instrument4 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Planet5)
	(= (data_capacity satellite2) 1000)
	(= (fuel satellite2) 168)
	(= (data Planet5 image0) 80)
	(= (data Star6 image0) 7)
	(= (data Planet7 image0) 20)
	(= (data Phenomenon8 image0) 70)
	(= (data Planet9 image0) 234)
	(= (data Planet10 image0) 279)
	(= (data Planet11 image0) 160)
	(= (data Planet12 image0) 267)
	(= (data Phenomenon13 image0) 16)
	(= (data Planet14 image0) 89)
	(= (data Planet5 spectrograph2) 120)
	(= (data Star6 spectrograph2) 10)
	(= (data Planet7 spectrograph2) 113)
	(= (data Phenomenon8 spectrograph2) 156)
	(= (data Planet9 spectrograph2) 44)
	(= (data Planet10 spectrograph2) 175)
	(= (data Planet11 spectrograph2) 294)
	(= (data Planet12 spectrograph2) 254)
	(= (data Phenomenon13 spectrograph2) 206)
	(= (data Planet14 spectrograph2) 198)
	(= (data Planet5 image1) 293)
	(= (data Star6 image1) 2)
	(= (data Planet7 image1) 19)
	(= (data Phenomenon8 image1) 159)
	(= (data Planet9 image1) 105)
	(= (data Planet10 image1) 204)
	(= (data Planet11 image1) 291)
	(= (data Planet12 image1) 96)
	(= (data Phenomenon13 image1) 169)
	(= (data Planet14 image1) 256)
	(= (slew_time Star1 GroundStation0) 36)
	(= (slew_time GroundStation0 Star1) 36)
	(= (slew_time Star3 GroundStation0) 27.76)
	(= (slew_time GroundStation0 Star3) 27.76)
	(= (slew_time Star3 Star1) 7.855)
	(= (slew_time Star1 Star3) 7.855)
	(= (slew_time Star3 GroundStation2) 63.11)
	(= (slew_time GroundStation2 Star3) 63.11)
	(= (slew_time GroundStation2 GroundStation0) 67.85)
	(= (slew_time GroundStation0 GroundStation2) 67.85)
	(= (slew_time GroundStation2 Star1) 39.07)
	(= (slew_time Star1 GroundStation2) 39.07)
	(= (slew_time Star4 GroundStation0) 32.21)
	(= (slew_time GroundStation0 Star4) 32.21)
	(= (slew_time Star4 Star1) 9.802)
	(= (slew_time Star1 Star4) 9.802)
	(= (slew_time Star4 GroundStation2) 80.68)
	(= (slew_time GroundStation2 Star4) 80.68)
	(= (slew_time Star4 Star3) 3.114)
	(= (slew_time Star3 Star4) 3.114)
	(= (slew_time Planet5 GroundStation0) 12.87)
	(= (slew_time GroundStation0 Planet5) 12.87)
	(= (slew_time Planet5 Star1) 24.25)
	(= (slew_time Star1 Planet5) 24.25)
	(= (slew_time Planet5 GroundStation2) 2.927)
	(= (slew_time GroundStation2 Planet5) 2.927)
	(= (slew_time Planet5 Star3) 82.76)
	(= (slew_time Star3 Planet5) 82.76)
	(= (slew_time Planet5 Star4) 0.4998)
	(= (slew_time Star4 Planet5) 0.4998)
	(= (slew_time Star6 GroundStation0) 36.57)
	(= (slew_time GroundStation0 Star6) 36.57)
	(= (slew_time Star6 Star1) 65.01)
	(= (slew_time Star1 Star6) 65.01)
	(= (slew_time Star6 GroundStation2) 19.59)
	(= (slew_time GroundStation2 Star6) 19.59)
	(= (slew_time Star6 Star3) 9.361)
	(= (slew_time Star3 Star6) 9.361)
	(= (slew_time Star6 Star4) 25.96)
	(= (slew_time Star4 Star6) 25.96)
	(= (slew_time Star6 Planet5) 43)
	(= (slew_time Planet5 Star6) 43)
	(= (slew_time Planet7 GroundStation0) 12.14)
	(= (slew_time GroundStation0 Planet7) 12.14)
	(= (slew_time Planet7 Star1) 28.83)
	(= (slew_time Star1 Planet7) 28.83)
	(= (slew_time Planet7 GroundStation2) 38.77)
	(= (slew_time GroundStation2 Planet7) 38.77)
	(= (slew_time Planet7 Star3) 3.507)
	(= (slew_time Star3 Planet7) 3.507)
	(= (slew_time Planet7 Star4) 30.4)
	(= (slew_time Star4 Planet7) 30.4)
	(= (slew_time Planet7 Planet5) 4.493)
	(= (slew_time Planet5 Planet7) 4.493)
	(= (slew_time Planet7 Star6) 61.79)
	(= (slew_time Star6 Planet7) 61.79)
	(= (slew_time Phenomenon8 GroundStation0) 10.58)
	(= (slew_time GroundStation0 Phenomenon8) 10.58)
	(= (slew_time Phenomenon8 Star1) 44.35)
	(= (slew_time Star1 Phenomenon8) 44.35)
	(= (slew_time Phenomenon8 GroundStation2) 2.784)
	(= (slew_time GroundStation2 Phenomenon8) 2.784)
	(= (slew_time Phenomenon8 Star3) 49.51)
	(= (slew_time Star3 Phenomenon8) 49.51)
	(= (slew_time Phenomenon8 Star4) 56.78)
	(= (slew_time Star4 Phenomenon8) 56.78)
	(= (slew_time Phenomenon8 Planet5) 16.29)
	(= (slew_time Planet5 Phenomenon8) 16.29)
	(= (slew_time Phenomenon8 Star6) 31.76)
	(= (slew_time Star6 Phenomenon8) 31.76)
	(= (slew_time Phenomenon8 Planet7) 19.24)
	(= (slew_time Planet7 Phenomenon8) 19.24)
	(= (slew_time Planet9 GroundStation0) 9.85)
	(= (slew_time GroundStation0 Planet9) 9.85)
	(= (slew_time Planet9 Star1) 78.59)
	(= (slew_time Star1 Planet9) 78.59)
	(= (slew_time Planet9 GroundStation2) 42.54)
	(= (slew_time GroundStation2 Planet9) 42.54)
	(= (slew_time Planet9 Star3) 1.908)
	(= (slew_time Star3 Planet9) 1.908)
	(= (slew_time Planet9 Star4) 32.61)
	(= (slew_time Star4 Planet9) 32.61)
	(= (slew_time Planet9 Planet5) 23.31)
	(= (slew_time Planet5 Planet9) 23.31)
	(= (slew_time Planet9 Star6) 26.54)
	(= (slew_time Star6 Planet9) 26.54)
	(= (slew_time Planet9 Planet7) 55.34)
	(= (slew_time Planet7 Planet9) 55.34)
	(= (slew_time Planet9 Phenomenon8) 34.41)
	(= (slew_time Phenomenon8 Planet9) 34.41)
	(= (slew_time Planet10 GroundStation0) 8.813)
	(= (slew_time GroundStation0 Planet10) 8.813)
	(= (slew_time Planet10 Star1) 48.98)
	(= (slew_time Star1 Planet10) 48.98)
	(= (slew_time Planet10 GroundStation2) 19.81)
	(= (slew_time GroundStation2 Planet10) 19.81)
	(= (slew_time Planet10 Star3) 69.43)
	(= (slew_time Star3 Planet10) 69.43)
	(= (slew_time Planet10 Star4) 18.19)
	(= (slew_time Star4 Planet10) 18.19)
	(= (slew_time Planet10 Planet5) 0.4264)
	(= (slew_time Planet5 Planet10) 0.4264)
	(= (slew_time Planet10 Star6) 3.051)
	(= (slew_time Star6 Planet10) 3.051)
	(= (slew_time Planet10 Planet7) 36.45)
	(= (slew_time Planet7 Planet10) 36.45)
	(= (slew_time Planet10 Phenomenon8) 1.844)
	(= (slew_time Phenomenon8 Planet10) 1.844)
	(= (slew_time Planet10 Planet9) 47.25)
	(= (slew_time Planet9 Planet10) 47.25)
	(= (slew_time Planet11 GroundStation0) 0.156)
	(= (slew_time GroundStation0 Planet11) 0.156)
	(= (slew_time Planet11 Star1) 33.12)
	(= (slew_time Star1 Planet11) 33.12)
	(= (slew_time Planet11 GroundStation2) 38.65)
	(= (slew_time GroundStation2 Planet11) 38.65)
	(= (slew_time Planet11 Star3) 51.84)
	(= (slew_time Star3 Planet11) 51.84)
	(= (slew_time Planet11 Star4) 28.08)
	(= (slew_time Star4 Planet11) 28.08)
	(= (slew_time Planet11 Planet5) 10.07)
	(= (slew_time Planet5 Planet11) 10.07)
	(= (slew_time Planet11 Star6) 9.628)
	(= (slew_time Star6 Planet11) 9.628)
	(= (slew_time Planet11 Planet7) 30.23)
	(= (slew_time Planet7 Planet11) 30.23)
	(= (slew_time Planet11 Phenomenon8) 5.873)
	(= (slew_time Phenomenon8 Planet11) 5.873)
	(= (slew_time Planet11 Planet9) 30.67)
	(= (slew_time Planet9 Planet11) 30.67)
	(= (slew_time Planet11 Planet10) 49.85)
	(= (slew_time Planet10 Planet11) 49.85)
	(= (slew_time Planet12 GroundStation0) 33.82)
	(= (slew_time GroundStation0 Planet12) 33.82)
	(= (slew_time Planet12 Star1) 23.47)
	(= (slew_time Star1 Planet12) 23.47)
	(= (slew_time Planet12 GroundStation2) 44.64)
	(= (slew_time GroundStation2 Planet12) 44.64)
	(= (slew_time Planet12 Star3) 19.93)
	(= (slew_time Star3 Planet12) 19.93)
	(= (slew_time Planet12 Star4) 23.88)
	(= (slew_time Star4 Planet12) 23.88)
	(= (slew_time Planet12 Planet5) 31.33)
	(= (slew_time Planet5 Planet12) 31.33)
	(= (slew_time Planet12 Star6) 69.23)
	(= (slew_time Star6 Planet12) 69.23)
	(= (slew_time Planet12 Planet7) 22.81)
	(= (slew_time Planet7 Planet12) 22.81)
	(= (slew_time Planet12 Phenomenon8) 71.29)
	(= (slew_time Phenomenon8 Planet12) 71.29)
	(= (slew_time Planet12 Planet9) 45.56)
	(= (slew_time Planet9 Planet12) 45.56)
	(= (slew_time Planet12 Planet10) 52.3)
	(= (slew_time Planet10 Planet12) 52.3)
	(= (slew_time Planet12 Planet11) 69.74)
	(= (slew_time Planet11 Planet12) 69.74)
	(= (slew_time Phenomenon13 GroundStation0) 76.71)
	(= (slew_time GroundStation0 Phenomenon13) 76.71)
	(= (slew_time Phenomenon13 Star1) 49.05)
	(= (slew_time Star1 Phenomenon13) 49.05)
	(= (slew_time Phenomenon13 GroundStation2) 3.523)
	(= (slew_time GroundStation2 Phenomenon13) 3.523)
	(= (slew_time Phenomenon13 Star3) 77.93)
	(= (slew_time Star3 Phenomenon13) 77.93)
	(= (slew_time Phenomenon13 Star4) 50.55)
	(= (slew_time Star4 Phenomenon13) 50.55)
	(= (slew_time Phenomenon13 Planet5) 68.94)
	(= (slew_time Planet5 Phenomenon13) 68.94)
	(= (slew_time Phenomenon13 Star6) 26.46)
	(= (slew_time Star6 Phenomenon13) 26.46)
	(= (slew_time Phenomenon13 Planet7) 5.808)
	(= (slew_time Planet7 Phenomenon13) 5.808)
	(= (slew_time Phenomenon13 Phenomenon8) 3.875)
	(= (slew_time Phenomenon8 Phenomenon13) 3.875)
	(= (slew_time Phenomenon13 Planet9) 41.21)
	(= (slew_time Planet9 Phenomenon13) 41.21)
	(= (slew_time Phenomenon13 Planet10) 29.47)
	(= (slew_time Planet10 Phenomenon13) 29.47)
	(= (slew_time Phenomenon13 Planet11) 6.788)
	(= (slew_time Planet11 Phenomenon13) 6.788)
	(= (slew_time Phenomenon13 Planet12) 23.11)
	(= (slew_time Planet12 Phenomenon13) 23.11)
	(= (slew_time Planet14 GroundStation0) 0.006999)
	(= (slew_time GroundStation0 Planet14) 0.006999)
	(= (slew_time Planet14 Star1) 61.24)
	(= (slew_time Star1 Planet14) 61.24)
	(= (slew_time Planet14 GroundStation2) 48.1)
	(= (slew_time GroundStation2 Planet14) 48.1)
	(= (slew_time Planet14 Star3) 22.78)
	(= (slew_time Star3 Planet14) 22.78)
	(= (slew_time Planet14 Star4) 7.974)
	(= (slew_time Star4 Planet14) 7.974)
	(= (slew_time Planet14 Planet5) 31.78)
	(= (slew_time Planet5 Planet14) 31.78)
	(= (slew_time Planet14 Star6) 33.98)
	(= (slew_time Star6 Planet14) 33.98)
	(= (slew_time Planet14 Planet7) 28.48)
	(= (slew_time Planet7 Planet14) 28.48)
	(= (slew_time Planet14 Phenomenon8) 40.24)
	(= (slew_time Phenomenon8 Planet14) 40.24)
	(= (slew_time Planet14 Planet9) 59.39)
	(= (slew_time Planet9 Planet14) 59.39)
	(= (slew_time Planet14 Planet10) 45.17)
	(= (slew_time Planet10 Planet14) 45.17)
	(= (slew_time Planet14 Planet11) 51.93)
	(= (slew_time Planet11 Planet14) 51.93)
	(= (slew_time Planet14 Planet12) 31.12)
	(= (slew_time Planet12 Planet14) 31.12)
	(= (slew_time Planet14 Phenomenon13) 26.78)
	(= (slew_time Phenomenon13 Planet14) 26.78)
	(= (data-stored) 0)
	(= (fuel-used) 0)
)
(:goal (and
	(pointing satellite2 Planet11)
	(have_image Planet5 image1)
	(have_image Star6 image1)
	(have_image Planet7 image0)
	(have_image Phenomenon8 image0)
	(have_image Planet9 image1)
	(have_image Planet10 image0)
	(have_image Planet11 spectrograph2)
	(have_image Planet12 spectrograph2)
	(have_image Phenomenon13 spectrograph2)
))
(:metric minimize (fuel-used))

)
